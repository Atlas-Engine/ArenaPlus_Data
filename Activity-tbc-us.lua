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
	built = 1794437913,
	builtText = "2026-11-11 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 718 },
			["Rirí|nightslayer"] = { 2, 2, -5, 718 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 597 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 598 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 1001 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 1001 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 934 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 935 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 1021 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 1001 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 991 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 991 },
			["Creation|nightslayer"] = { 14, 5, 128, 1139 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 1144 },
			["Yodead|nightslayer"] = { 7, 12, -80, 1036 },
			["Morepower|nightslayer"] = { 7, 10, -45, 1153 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 1150 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 1009 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 1118 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 1010 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 1096 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 1086 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 1200 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 1202 },
			["Druudix|nightslayer"] = { 5, 4, -10, 949 },
			["Warex|nightslayer"] = { 5, 4, -10, 949 },
			["Cream|nightslayer"] = { 8, 0, 28, 1057 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 1053 },
			["Levimis|nightslayer"] = { 4, 3, 11, 1237 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 746 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 1035 },
			["Zofì|nightslayer"] = { 4, 1, 14, 1290 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 718 },
			["Rirí|nightslayer"] = { 2, 2, -5, 718 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 749 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 749 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 1004 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 1181 },
			["Qantas|nightslayer"] = { 3, 0, 24, 748 },
			["Stooky|nightslayer"] = { 1, 2, -30, 1181 },
			["Trû|nightslayer"] = { 1, 2, -8, 1001 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 1410 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 1411 },
			["Duudah|nightslayer"] = { 1, 0, 3, 1361 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 597 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 598 },
		},
	},
}

