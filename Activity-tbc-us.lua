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
	built = 1794689913,
	builtText = "2026-11-14 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 701 },
			["Adooken|nightslayer"] = { 0, 1, -9, 701 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 701 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 782 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 1363 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 1021 },
			["Mopz|nightslayer"] = { 7, 5, 19, 1018 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 1061 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 1061 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 1421 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 1421 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 970 },
			["Astias|nightslayer"] = { 3, 2, 0, 850 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 806 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 1061 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 806 },
			["Tycat|nightslayer"] = { 4, 0, 10, 1061 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 1020 },
			["Frotted|nightslayer"] = { 0, 2, -41, 1061 },
			["Losticus|nightslayer"] = { 2, 0, 16, 1421 },
			["Qantas|nightslayer"] = { 1, 1, -18, 1019 },
			["Swácked|nightslayer"] = { 0, 2, -21, 1421 },
			["Adooken|nightslayer"] = { 0, 1, -9, 701 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 1421 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 1421 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 976 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 867 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 972 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 973 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 990 },
			["Paxii|nightslayer"] = { 9, 0, 14, 1002 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 1003 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 1421 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 1004 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 1061 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 1421 },
		},
	},
}

