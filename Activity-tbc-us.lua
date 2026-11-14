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
	built = 1794679115,
	builtText = "2026-11-14 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 521 },
			["Xczv|dreamscythe"] = { 10, 4, 40, 602 },
			["Astias|nightslayer"] = { 3, 2, 0, 670 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 626 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 626 },
			["Adooken|nightslayer"] = { 0, 1, -9, 521 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 687 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 521 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 602 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 1183 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 841 },
			["Mopz|nightslayer"] = { 7, 5, 19, 838 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 881 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 881 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 1241 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 1241 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 1421 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 790 },
			["Astias|nightslayer"] = { 3, 2, 0, 670 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 626 },
			["Cream|nightslayer"] = { 3, 1, 4, 1338 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 881 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 626 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 1336 },
			["Tycat|nightslayer"] = { 4, 0, 10, 881 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 1337 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 1291 },
			["Shob|nightslayer"] = { 2, 1, 11, 1337 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 840 },
			["Creationx|nightslayer"] = { 0, 2, -15, 1349 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 1342 },
			["Frotted|nightslayer"] = { 0, 2, -41, 881 },
			["Losticus|nightslayer"] = { 2, 0, 16, 1241 },
			["Qantas|nightslayer"] = { 1, 1, -18, 839 },
			["Swácked|nightslayer"] = { 0, 2, -21, 1241 },
			["Adooken|nightslayer"] = { 0, 1, -9, 521 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 1352 },
			["Creation|nightslayer"] = { 1, 0, 21, 1331 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 1241 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 1241 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 796 },
			["Kedern|nightslayer"] = { 1, 0, 3, 1327 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 687 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 792 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 1343 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 1353 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 793 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 810 },
			["Paxii|nightslayer"] = { 9, 0, 14, 822 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 823 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 1241 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 824 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 881 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 1241 },
		},
	},
}

