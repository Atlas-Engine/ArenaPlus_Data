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
	built = 1794697114,
	builtText = "2026-11-14 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 68 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 68 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 68 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 821 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 902 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 1141 },
			["Mopz|nightslayer"] = { 7, 5, 19, 1138 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 1181 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 1181 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 68 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 1090 },
			["Astias|nightslayer"] = { 3, 2, 0, 970 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 926 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 1181 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 926 },
			["Tycat|nightslayer"] = { 4, 0, 10, 1181 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 1140 },
			["Frotted|nightslayer"] = { 0, 2, -41, 1181 },
			["Qantas|nightslayer"] = { 1, 1, -18, 1139 },
			["Adooken|nightslayer"] = { 0, 1, -9, 821 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 1096 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 987 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 1092 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 1093 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 1110 },
			["Paxii|nightslayer"] = { 9, 0, 14, 1122 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 1123 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 1124 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 1181 },
		},
	},
}

