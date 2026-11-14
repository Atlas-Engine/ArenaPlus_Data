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
	built = 1794682712,
	builtText = "2026-11-14 01:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 581 },
			["Xczv|dreamscythe"] = { 5, 3, 30, 662 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 686 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 686 },
			["Adooken|nightslayer"] = { 0, 1, -9, 581 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 581 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 662 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 1243 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 901 },
			["Mopz|nightslayer"] = { 7, 5, 19, 898 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 941 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 941 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 1301 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 1301 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 850 },
			["Astias|nightslayer"] = { 3, 2, 0, 730 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 686 },
			["Cream|nightslayer"] = { 3, 1, 4, 1398 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 941 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 686 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 1396 },
			["Tycat|nightslayer"] = { 4, 0, 10, 941 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 1397 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 1351 },
			["Shob|nightslayer"] = { 2, 1, 11, 1397 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 900 },
			["Creationx|nightslayer"] = { 0, 2, -15, 1409 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 1402 },
			["Frotted|nightslayer"] = { 0, 2, -41, 941 },
			["Losticus|nightslayer"] = { 2, 0, 16, 1301 },
			["Qantas|nightslayer"] = { 1, 1, -18, 899 },
			["Swácked|nightslayer"] = { 0, 2, -21, 1301 },
			["Adooken|nightslayer"] = { 0, 1, -9, 581 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 1411 },
			["Creation|nightslayer"] = { 1, 0, 21, 1391 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 1301 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 1301 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 856 },
			["Kedern|nightslayer"] = { 1, 0, 3, 1387 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 747 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 852 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 1403 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 1413 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 853 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 870 },
			["Paxii|nightslayer"] = { 9, 0, 14, 882 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 883 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 1301 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 883 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 941 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 1301 },
		},
	},
}

