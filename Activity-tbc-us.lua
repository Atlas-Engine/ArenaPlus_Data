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
	built = 1794686315,
	builtText = "2026-11-14 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 641 },
			["Adooken|nightslayer"] = { 0, 1, -9, 641 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 641 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 722 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 1303 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 961 },
			["Mopz|nightslayer"] = { 7, 5, 19, 958 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 1001 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 1001 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 1361 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 1361 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 910 },
			["Astias|nightslayer"] = { 3, 2, 0, 790 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 746 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 1001 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 746 },
			["Tycat|nightslayer"] = { 4, 0, 10, 1001 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 1411 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 960 },
			["Frotted|nightslayer"] = { 0, 2, -41, 1001 },
			["Losticus|nightslayer"] = { 2, 0, 16, 1361 },
			["Qantas|nightslayer"] = { 1, 1, -18, 959 },
			["Swácked|nightslayer"] = { 0, 2, -21, 1361 },
			["Adooken|nightslayer"] = { 0, 1, -9, 641 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 1361 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 1361 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 916 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 807 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 912 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 913 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 930 },
			["Paxii|nightslayer"] = { 9, 0, 14, 942 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 943 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 1361 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 944 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 1001 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 1361 },
		},
	},
}

