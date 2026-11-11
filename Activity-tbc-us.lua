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
	built = 1794427115,
	builtText = "2026-11-11 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 538 },
			["Rirí|nightslayer"] = { 2, 2, -5, 538 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 569 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 569 },
			["Qantas|nightslayer"] = { 3, 0, 24, 569 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 566 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 417 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 418 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 821 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 821 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 754 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 755 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 841 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 821 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 811 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 811 },
			["Creation|nightslayer"] = { 14, 5, 128, 959 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 964 },
			["Yodead|nightslayer"] = { 7, 12, -80, 856 },
			["Morepower|nightslayer"] = { 7, 10, -45, 973 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 970 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 829 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 938 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 830 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 916 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 906 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 1020 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 1022 },
			["Druudix|nightslayer"] = { 5, 4, -10, 769 },
			["Warex|nightslayer"] = { 5, 4, -10, 769 },
			["Cream|nightslayer"] = { 8, 0, 28, 877 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 873 },
			["Levimis|nightslayer"] = { 4, 3, 11, 1057 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 566 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 855 },
			["Zofì|nightslayer"] = { 4, 1, 14, 1110 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 538 },
			["Rirí|nightslayer"] = { 2, 2, -5, 538 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 569 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 569 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 824 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 1001 },
			["Qantas|nightslayer"] = { 3, 0, 24, 569 },
			["Stooky|nightslayer"] = { 1, 2, -30, 1001 },
			["Trû|nightslayer"] = { 1, 2, -8, 821 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 1230 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 1231 },
			["Duudah|nightslayer"] = { 1, 0, 3, 1181 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 417 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 418 },
		},
	},
}

