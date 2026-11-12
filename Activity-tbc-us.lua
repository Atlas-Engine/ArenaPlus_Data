-- Who has been playing, written by tools\UpdateActivity.ps1. Do not edit by hand.
--
-- Built from the activity log the ladder pass keeps, which records a row each
-- time a character's win or loss count moves between two polls. It costs no
-- requests: every figure here was already paid for by that pass.
--
-- Keyed by the display name exactly as the leaderboard carries it, joined to
-- the log on the generator's side. Do NOT lowercase a name to look it up:
-- Lua's :lower() folds only A-Z and would miss every accented character.
--
-- [hours][bracket]["Name|realm"] = { won, lost, rating moved, minutes ago }
--
-- "Minutes ago" counts back from `built` below, not from now, and it is when
-- the character was last SEEN to have played rather than when they played.
-- The ladder is polled on a timer, so a game is noticed at the next poll --
-- accurate to fifteen minutes on Mists and to the hour on Anniversary.
ArenaPlusData = ArenaPlusData or {}
local ns = ArenaPlusData

ns.ACTIVITY_BY_REGION = ns.ACTIVITY_BY_REGION or {}

ns.ACTIVITY_BY_REGION["tbc-us"] = {
	built = 1794455918,
	builtText = "2026-11-11 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Yodead|nightslayer"] = { 5, 0, 30, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Yodead|nightslayer"] = { 5, 0, 30, 41 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 98 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 147 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 173 },
			["Stoggimeistr|nightslayer"] = { 0, 1, -9, 142 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 203 },
			["Morepower|nightslayer"] = { 10, 1, 21, 183 },
			["Yodead|nightslayer"] = { 10, 1, 23, 41 },
			["Booxo|nightslayer"] = { 0, 2, -19, 189 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 142 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 98 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 147 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 221 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 173 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 203 },
			["Morepower|nightslayer"] = { 10, 1, 21, 183 },
			["Yodead|nightslayer"] = { 10, 1, 23, 41 },
			["Booxo|nightslayer"] = { 0, 2, -19, 189 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 142 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 98 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 147 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 221 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 173 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 17, 17, -9, 1301 },
			["Wílleh|nightslayer"] = { 17, 17, -9, 1301 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 1234 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 1235 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 1291 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 1291 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 1309 },
			["Fanthom|nightslayer"] = { 7, 9, -21, 1321 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 1310 },
			["Redubbed|nightslayer"] = { 7, 9, -21, 1301 },
			["Yodead|nightslayer"] = { 11, 5, -16, 41 },
			["Dinnoo|nightslayer"] = { 10, 4, 40, 1396 },
			["Plasticsurgn|nightslayer"] = { 10, 4, 40, 1386 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 203 },
			["Morepower|nightslayer"] = { 10, 1, 21, 183 },
			["Druudix|nightslayer"] = { 5, 4, -10, 1249 },
			["Warex|nightslayer"] = { 5, 4, -10, 1249 },
			["Cream|nightslayer"] = { 8, 0, 28, 1357 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 1353 },
			["Creation|nightslayer"] = { 6, 0, 78, 1439 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 1335 },
			["Jingjingbaby|nightslayer"] = { 2, 3, -8, 1418 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 1018 },
			["Rirí|nightslayer"] = { 2, 2, -5, 1018 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 1049 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 1049 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 1304 },
			["Qantas|nightslayer"] = { 3, 0, 24, 1049 },
			["Trû|nightslayer"] = { 1, 2, -8, 1301 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 1046 },
			["Booxo|nightslayer"] = { 0, 2, -19, 189 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 142 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 898 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 98 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 898 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 147 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 221 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 173 },
		},
	},
}

