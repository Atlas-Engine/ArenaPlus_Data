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
	built = 1794664713,
	builtText = "2026-11-14 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 281 },
			["Adooken|nightslayer"] = { 0, 1, -9, 281 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 281 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 362 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 601 },
			["Mopz|nightslayer"] = { 7, 5, 19, 598 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 641 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 641 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 550 },
			["Astias|nightslayer"] = { 3, 2, 0, 430 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 386 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 641 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 386 },
			["Tycat|nightslayer"] = { 4, 0, 10, 641 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 600 },
			["Frotted|nightslayer"] = { 0, 2, -41, 641 },
			["Qantas|nightslayer"] = { 1, 1, -18, 599 },
			["Adooken|nightslayer"] = { 0, 1, -9, 281 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 556 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 447 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 552 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 553 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 570 },
			["Paxii|nightslayer"] = { 9, 0, 14, 582 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 583 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 584 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 641 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 281 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 362 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 943 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 601 },
			["Mopz|nightslayer"] = { 7, 5, 19, 598 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 641 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 641 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 1001 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 1001 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 1181 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 550 },
			["Astias|nightslayer"] = { 3, 2, 0, 430 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 386 },
			["Cream|nightslayer"] = { 3, 1, 4, 1098 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 641 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 386 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 1096 },
			["Tycat|nightslayer"] = { 4, 0, 10, 641 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 1097 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 1051 },
			["Shob|nightslayer"] = { 2, 1, 11, 1097 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 600 },
			["Creationx|nightslayer"] = { 0, 2, -15, 1109 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 1102 },
			["Frotted|nightslayer"] = { 0, 2, -41, 641 },
			["Losticus|nightslayer"] = { 2, 0, 16, 1001 },
			["Qantas|nightslayer"] = { 1, 1, -18, 599 },
			["Swácked|nightslayer"] = { 0, 2, -21, 1001 },
			["Adooken|nightslayer"] = { 0, 1, -9, 281 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 1112 },
			["Creation|nightslayer"] = { 1, 0, 21, 1091 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 1001 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 1001 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 556 },
			["Kedern|nightslayer"] = { 1, 0, 3, 1087 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 447 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 552 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 1103 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 1113 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 553 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 570 },
			["Paxii|nightslayer"] = { 9, 0, 14, 582 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 583 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 1001 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 584 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 641 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 1001 },
		},
	},
}

