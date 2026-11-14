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
	built = 1794668313,
	builtText = "2026-11-14 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 341 },
			["Adooken|nightslayer"] = { 0, 1, -9, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 341 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 422 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 661 },
			["Mopz|nightslayer"] = { 7, 5, 19, 658 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 701 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 701 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 610 },
			["Astias|nightslayer"] = { 3, 2, 0, 490 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 446 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 701 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 446 },
			["Tycat|nightslayer"] = { 4, 0, 10, 701 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 660 },
			["Frotted|nightslayer"] = { 0, 2, -41, 701 },
			["Qantas|nightslayer"] = { 1, 1, -18, 659 },
			["Adooken|nightslayer"] = { 0, 1, -9, 341 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 616 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 507 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 612 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 613 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 630 },
			["Paxii|nightslayer"] = { 9, 0, 14, 642 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 643 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 644 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 701 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 341 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 422 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 1003 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 661 },
			["Mopz|nightslayer"] = { 7, 5, 19, 658 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 701 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 701 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 1061 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 1061 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 1241 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 610 },
			["Astias|nightslayer"] = { 3, 2, 0, 490 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 446 },
			["Cream|nightslayer"] = { 3, 1, 4, 1158 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 701 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 446 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 1156 },
			["Tycat|nightslayer"] = { 4, 0, 10, 701 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 1157 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 1111 },
			["Shob|nightslayer"] = { 2, 1, 11, 1157 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 660 },
			["Creationx|nightslayer"] = { 0, 2, -15, 1169 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 1162 },
			["Frotted|nightslayer"] = { 0, 2, -41, 701 },
			["Losticus|nightslayer"] = { 2, 0, 16, 1061 },
			["Qantas|nightslayer"] = { 1, 1, -18, 659 },
			["Swácked|nightslayer"] = { 0, 2, -21, 1061 },
			["Adooken|nightslayer"] = { 0, 1, -9, 341 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 1172 },
			["Creation|nightslayer"] = { 1, 0, 21, 1151 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 1061 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 1061 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 616 },
			["Kedern|nightslayer"] = { 1, 0, 3, 1147 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 507 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 612 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 1163 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 1173 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 613 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 630 },
			["Paxii|nightslayer"] = { 9, 0, 14, 642 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 643 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 1061 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 644 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 701 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 1061 },
		},
	},
}

