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
	built = 1794441514,
	builtText = "2026-11-11 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 1, 0, 3, 657 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 658 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 1061 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 1061 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 994 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 995 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 1081 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 1061 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 1051 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 1051 },
			["Creation|nightslayer"] = { 14, 5, 128, 1199 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 1204 },
			["Yodead|nightslayer"] = { 7, 12, -80, 1096 },
			["Morepower|nightslayer"] = { 7, 10, -45, 1213 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 1210 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 1069 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 1178 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 1070 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 1156 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 1146 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 1260 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 1262 },
			["Druudix|nightslayer"] = { 5, 4, -10, 1009 },
			["Warex|nightslayer"] = { 5, 4, -10, 1009 },
			["Cream|nightslayer"] = { 8, 0, 28, 1117 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 1113 },
			["Levimis|nightslayer"] = { 4, 3, 11, 1297 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 806 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 1095 },
			["Zofì|nightslayer"] = { 4, 1, 14, 1350 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 778 },
			["Rirí|nightslayer"] = { 2, 2, -5, 778 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 809 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 809 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 1064 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 1241 },
			["Qantas|nightslayer"] = { 3, 0, 24, 809 },
			["Stooky|nightslayer"] = { 1, 2, -30, 1241 },
			["Trû|nightslayer"] = { 1, 2, -8, 1061 },
			["Duudah|nightslayer"] = { 1, 0, 3, 1421 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 657 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 658 },
		},
	},
}

