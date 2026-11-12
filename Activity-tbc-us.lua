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
	built = 1794452314,
	builtText = "2026-11-11 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 38 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 143 },
			["Morepower|nightslayer"] = { 10, 1, 21, 123 },
			["Yodead|nightslayer"] = { 5, 1, -7, 161 },
			["Booxo|nightslayer"] = { 0, 2, -19, 129 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 82 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 38 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 87 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 161 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 113 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 143 },
			["Morepower|nightslayer"] = { 10, 1, 21, 123 },
			["Yodead|nightslayer"] = { 5, 1, -7, 161 },
			["Booxo|nightslayer"] = { 0, 2, -19, 129 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 82 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 38 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 87 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 161 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 113 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 143 },
			["Morepower|nightslayer"] = { 10, 1, 21, 123 },
			["Yodead|nightslayer"] = { 5, 1, -7, 161 },
			["Booxo|nightslayer"] = { 0, 2, -19, 129 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 82 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 38 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 87 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 161 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 113 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 1241 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 1241 },
			["Morepower|nightslayer"] = { 17, 11, -24, 123 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 1174 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 1175 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 1261 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 1241 },
			["Yodead|nightslayer"] = { 12, 13, -87, 161 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 1231 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 1231 },
			["Creation|nightslayer"] = { 14, 5, 128, 1379 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 1384 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 1390 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 1249 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 1358 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 1250 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 1336 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 1326 },
			["Ragequitqtt|nightslayer"] = { 6, 8, -53, 38 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 143 },
			["Druudix|nightslayer"] = { 5, 4, -10, 1189 },
			["Warex|nightslayer"] = { 5, 4, -10, 1189 },
			["Cream|nightslayer"] = { 8, 0, 28, 1297 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 1293 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 1275 },
			["Xpectdeath|nightslayer"] = { 1, 4, -22, 986 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 958 },
			["Rirí|nightslayer"] = { 2, 2, -5, 958 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 989 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 989 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 1244 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 1421 },
			["Qantas|nightslayer"] = { 3, 0, 24, 989 },
			["Stooky|nightslayer"] = { 1, 2, -30, 1421 },
			["Trû|nightslayer"] = { 1, 2, -8, 1241 },
			["Booxo|nightslayer"] = { 0, 2, -19, 129 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 82 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 837 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 838 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 87 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 161 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 113 },
		},
	},
}

