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
	built = 1794434314,
	builtText = "2026-11-11 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 658 },
			["Rirí|nightslayer"] = { 2, 2, -5, 658 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 689 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 689 },
			["Qantas|nightslayer"] = { 3, 0, 24, 689 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 686 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 537 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 538 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 941 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 941 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 874 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 875 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 961 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 941 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 931 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 931 },
			["Creation|nightslayer"] = { 14, 5, 128, 1079 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 1084 },
			["Yodead|nightslayer"] = { 7, 12, -80, 976 },
			["Morepower|nightslayer"] = { 7, 10, -45, 1093 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 1090 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 949 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 1058 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 950 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 1036 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 1026 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 1140 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 1142 },
			["Druudix|nightslayer"] = { 5, 4, -10, 889 },
			["Warex|nightslayer"] = { 5, 4, -10, 889 },
			["Cream|nightslayer"] = { 8, 0, 28, 997 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 993 },
			["Levimis|nightslayer"] = { 4, 3, 11, 1177 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 686 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 975 },
			["Zofì|nightslayer"] = { 4, 1, 14, 1230 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 658 },
			["Rirí|nightslayer"] = { 2, 2, -5, 658 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 689 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 689 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 944 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 1121 },
			["Qantas|nightslayer"] = { 3, 0, 24, 689 },
			["Stooky|nightslayer"] = { 1, 2, -30, 1121 },
			["Trû|nightslayer"] = { 1, 2, -8, 941 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 1350 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 1351 },
			["Duudah|nightslayer"] = { 1, 0, 3, 1301 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 537 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 538 },
		},
	},
}

