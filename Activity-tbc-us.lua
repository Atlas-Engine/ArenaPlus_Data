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
	built = 1794700715,
	builtText = "2026-11-14 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 128 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 128 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 128 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 881 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 962 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 1201 },
			["Mopz|nightslayer"] = { 7, 5, 19, 1198 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 1241 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 1241 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 128 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 1150 },
			["Astias|nightslayer"] = { 3, 2, 0, 1030 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 986 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 1241 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 986 },
			["Tycat|nightslayer"] = { 4, 0, 10, 1241 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 1200 },
			["Frotted|nightslayer"] = { 0, 2, -41, 1241 },
			["Qantas|nightslayer"] = { 1, 1, -18, 1199 },
			["Adooken|nightslayer"] = { 0, 1, -9, 881 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 1156 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 1047 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 1152 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 1153 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 1170 },
			["Paxii|nightslayer"] = { 9, 0, 14, 1182 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 1183 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 1184 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 1241 },
		},
	},
}

