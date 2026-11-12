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
	built = 1794445112,
	builtText = "2026-11-11 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 23 },
			["Morepower|nightslayer"] = { 5, 1, -3, 41 },
			["Yodead|nightslayer"] = { 5, 1, -7, 41 },
			["Booxo|nightslayer"] = { 0, 2, -19, 9 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 41 },
			["Stoggimeistr|nightslayer"] = { 0, 1, -10, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 23 },
			["Morepower|nightslayer"] = { 5, 1, -3, 41 },
			["Yodead|nightslayer"] = { 5, 1, -7, 41 },
			["Booxo|nightslayer"] = { 0, 2, -19, 9 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 41 },
			["Stoggimeistr|nightslayer"] = { 0, 1, -10, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 23 },
			["Morepower|nightslayer"] = { 5, 1, -3, 41 },
			["Yodead|nightslayer"] = { 5, 1, -7, 41 },
			["Booxo|nightslayer"] = { 0, 2, -19, 9 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 41 },
			["Stoggimeistr|nightslayer"] = { 0, 1, -10, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 23 },
			["Morepower|nightslayer"] = { 5, 1, -3, 41 },
			["Yodead|nightslayer"] = { 5, 1, -7, 41 },
			["Booxo|nightslayer"] = { 0, 2, -19, 9 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 717 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 718 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 41 },
			["Stoggimeistr|nightslayer"] = { 0, 1, -10, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 1121 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 1121 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 1054 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 1055 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 1141 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 1121 },
			["Yodead|nightslayer"] = { 12, 13, -87, 41 },
			["Morepower|nightslayer"] = { 12, 11, -48, 41 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 1110 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 1111 },
			["Creation|nightslayer"] = { 14, 5, 128, 1259 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 1264 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 1269 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 1129 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 1238 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 1130 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 1216 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 1206 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 1320 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 1322 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 23 },
			["Druudix|nightslayer"] = { 5, 4, -10, 1069 },
			["Warex|nightslayer"] = { 5, 4, -10, 1069 },
			["Cream|nightslayer"] = { 8, 0, 28, 1177 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 1173 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 866 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 1155 },
			["Levimis|nightslayer"] = { 4, 1, 11, 1357 },
			["Zofì|nightslayer"] = { 4, 1, 14, 1410 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 838 },
			["Rirí|nightslayer"] = { 2, 2, -5, 838 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 869 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 869 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 1124 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 1301 },
			["Qantas|nightslayer"] = { 3, 0, 24, 868 },
			["Stooky|nightslayer"] = { 1, 2, -30, 1301 },
			["Trû|nightslayer"] = { 1, 2, -8, 1121 },
			["Booxo|nightslayer"] = { 0, 2, -19, 9 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 717 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 718 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 41 },
			["Stoggimeistr|nightslayer"] = { 0, 1, -10, 41 },
		},
	},
}

