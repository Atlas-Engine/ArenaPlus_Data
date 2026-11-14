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
	built = 1794675515,
	builtText = "2026-11-14 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 461 },
			["Xczv|dreamscythe"] = { 10, 4, 40, 542 },
			["Astias|nightslayer"] = { 3, 2, 0, 610 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 566 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 566 },
			["Adooken|nightslayer"] = { 0, 1, -9, 461 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 627 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 461 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 542 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 1123 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 781 },
			["Mopz|nightslayer"] = { 7, 5, 19, 778 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 821 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 821 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 1181 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 1181 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 1361 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 730 },
			["Astias|nightslayer"] = { 3, 2, 0, 610 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 566 },
			["Cream|nightslayer"] = { 3, 1, 4, 1278 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 821 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 566 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 1276 },
			["Tycat|nightslayer"] = { 4, 0, 10, 821 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 1277 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 1231 },
			["Shob|nightslayer"] = { 2, 1, 11, 1277 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 780 },
			["Creationx|nightslayer"] = { 0, 2, -15, 1289 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 1282 },
			["Frotted|nightslayer"] = { 0, 2, -41, 821 },
			["Losticus|nightslayer"] = { 2, 0, 16, 1181 },
			["Qantas|nightslayer"] = { 1, 1, -18, 779 },
			["Swácked|nightslayer"] = { 0, 2, -21, 1181 },
			["Adooken|nightslayer"] = { 0, 1, -9, 461 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 1292 },
			["Creation|nightslayer"] = { 1, 0, 21, 1271 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 1181 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 1181 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 736 },
			["Kedern|nightslayer"] = { 1, 0, 3, 1267 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 627 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 732 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 1283 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 1293 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 733 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 750 },
			["Paxii|nightslayer"] = { 9, 0, 14, 762 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 763 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 1181 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 764 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 821 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 1181 },
		},
	},
}

