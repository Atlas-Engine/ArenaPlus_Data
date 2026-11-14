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
	built = 1794661115,
	builtText = "2026-11-14 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 221 },
			["Xczv|dreamscythe"] = { 5, 3, 30, 302 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 326 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 326 },
			["Adooken|nightslayer"] = { 0, 1, -9, 221 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 221 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 302 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 541 },
			["Mopz|nightslayer"] = { 7, 5, 19, 538 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 581 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 581 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 490 },
			["Astias|nightslayer"] = { 3, 2, 0, 370 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 326 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 581 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 326 },
			["Tycat|nightslayer"] = { 4, 0, 10, 581 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 540 },
			["Frotted|nightslayer"] = { 0, 2, -41, 581 },
			["Qantas|nightslayer"] = { 1, 1, -18, 539 },
			["Adooken|nightslayer"] = { 0, 1, -9, 221 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 496 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 387 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 492 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 493 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 510 },
			["Paxii|nightslayer"] = { 9, 0, 14, 522 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 523 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 524 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 581 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 221 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 302 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 883 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 541 },
			["Mopz|nightslayer"] = { 7, 5, 19, 538 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 581 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 581 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 941 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 941 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 1121 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 490 },
			["Astias|nightslayer"] = { 3, 2, 0, 370 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 326 },
			["Cream|nightslayer"] = { 3, 1, 4, 1038 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 581 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 326 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 1036 },
			["Tycat|nightslayer"] = { 4, 0, 10, 581 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 1037 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 991 },
			["Shob|nightslayer"] = { 2, 1, 11, 1037 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 540 },
			["Creationx|nightslayer"] = { 0, 2, -15, 1049 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 1042 },
			["Frotted|nightslayer"] = { 0, 2, -41, 581 },
			["Losticus|nightslayer"] = { 2, 0, 16, 941 },
			["Qantas|nightslayer"] = { 1, 1, -18, 539 },
			["Swácked|nightslayer"] = { 0, 2, -21, 941 },
			["Adooken|nightslayer"] = { 0, 1, -9, 221 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 1052 },
			["Creation|nightslayer"] = { 1, 0, 21, 1031 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 941 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 941 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 496 },
			["Kedern|nightslayer"] = { 1, 0, 3, 1027 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 387 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 492 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 1043 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 1053 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 493 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 510 },
			["Paxii|nightslayer"] = { 9, 0, 14, 522 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 523 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 941 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 524 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 581 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 941 },
		},
	},
}

