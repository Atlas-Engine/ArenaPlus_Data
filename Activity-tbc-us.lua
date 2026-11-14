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
	built = 1794657515,
	builtText = "2026-11-14 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 161 },
			["Adooken|nightslayer"] = { 0, 1, -9, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 161 },
			["Xczv|dreamscythe"] = { 10, 4, 40, 242 },
			["Astias|nightslayer"] = { 3, 2, 0, 310 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 266 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 266 },
			["Adooken|nightslayer"] = { 0, 1, -9, 161 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 327 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 161 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 242 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 481 },
			["Mopz|nightslayer"] = { 7, 5, 19, 478 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 521 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 521 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 430 },
			["Astias|nightslayer"] = { 3, 2, 0, 310 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 266 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 521 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 266 },
			["Tycat|nightslayer"] = { 4, 0, 10, 521 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 480 },
			["Frotted|nightslayer"] = { 0, 2, -41, 521 },
			["Qantas|nightslayer"] = { 1, 1, -18, 479 },
			["Adooken|nightslayer"] = { 0, 1, -9, 161 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 436 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 327 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 432 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 433 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 450 },
			["Paxii|nightslayer"] = { 9, 0, 14, 462 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 463 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 464 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 521 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 161 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 242 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 823 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 481 },
			["Mopz|nightslayer"] = { 7, 5, 19, 478 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 521 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 521 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 881 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 881 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 1061 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 430 },
			["Astias|nightslayer"] = { 3, 2, 0, 310 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 266 },
			["Cream|nightslayer"] = { 3, 1, 4, 978 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 521 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 266 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 976 },
			["Tycat|nightslayer"] = { 4, 0, 10, 521 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 977 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 931 },
			["Shob|nightslayer"] = { 2, 1, 11, 977 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 480 },
			["Creationx|nightslayer"] = { 0, 2, -15, 989 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 982 },
			["Frotted|nightslayer"] = { 0, 2, -41, 521 },
			["Losticus|nightslayer"] = { 2, 0, 16, 881 },
			["Qantas|nightslayer"] = { 1, 1, -18, 479 },
			["Swácked|nightslayer"] = { 0, 2, -21, 881 },
			["Adooken|nightslayer"] = { 0, 1, -9, 161 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 992 },
			["Creation|nightslayer"] = { 1, 0, 21, 971 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 881 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 881 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 436 },
			["Kedern|nightslayer"] = { 1, 0, 3, 967 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 327 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 432 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 983 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 993 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 433 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 450 },
			["Paxii|nightslayer"] = { 9, 0, 14, 462 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 463 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 881 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 464 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 521 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 881 },
		},
	},
}

