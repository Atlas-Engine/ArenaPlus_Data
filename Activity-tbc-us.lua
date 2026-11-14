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
	built = 1794646712,
	builtText = "2026-11-14 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 161 },
			["Xczv|dreamscythe"] = { 10, 4, 40, 62 },
			["Astias|nightslayer"] = { 3, 2, 0, 130 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 86 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 86 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 147 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 161 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 62 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 301 },
			["Mopz|nightslayer"] = { 7, 5, 19, 298 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 341 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 341 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 250 },
			["Astias|nightslayer"] = { 3, 2, 0, 130 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 86 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 341 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 86 },
			["Tycat|nightslayer"] = { 4, 0, 10, 341 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 300 },
			["Frotted|nightslayer"] = { 0, 2, -41, 341 },
			["Qantas|nightslayer"] = { 1, 1, -18, 299 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 256 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 147 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 252 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 253 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 270 },
			["Paxii|nightslayer"] = { 9, 0, 14, 282 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 283 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 283 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 161 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 62 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 643 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 301 },
			["Mopz|nightslayer"] = { 7, 5, 19, 298 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 341 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 341 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 701 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 701 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 250 },
			["Astias|nightslayer"] = { 3, 2, 0, 130 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 86 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 341 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 86 },
			["Tycat|nightslayer"] = { 4, 0, 10, 341 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 300 },
			["Frotted|nightslayer"] = { 0, 2, -41, 341 },
			["Losticus|nightslayer"] = { 2, 0, 16, 701 },
			["Qantas|nightslayer"] = { 1, 1, -18, 299 },
			["Swácked|nightslayer"] = { 0, 2, -21, 701 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 701 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 701 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 256 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 147 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 252 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 253 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 270 },
			["Paxii|nightslayer"] = { 9, 0, 14, 282 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 283 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 701 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 283 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 341 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 701 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 161 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 62 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 643 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 301 },
			["Mopz|nightslayer"] = { 7, 5, 19, 298 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 341 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 341 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 701 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 701 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 881 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 250 },
			["Astias|nightslayer"] = { 3, 2, 0, 130 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 86 },
			["Cream|nightslayer"] = { 3, 1, 4, 798 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 341 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 86 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 796 },
			["Tycat|nightslayer"] = { 4, 0, 10, 341 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 797 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 1421 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 751 },
			["Shob|nightslayer"] = { 2, 1, 11, 797 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 300 },
			["Creationx|nightslayer"] = { 0, 2, -15, 809 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 802 },
			["Frotted|nightslayer"] = { 0, 2, -41, 341 },
			["Losticus|nightslayer"] = { 2, 0, 16, 701 },
			["Qantas|nightslayer"] = { 1, 1, -18, 299 },
			["Swácked|nightslayer"] = { 0, 2, -21, 701 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 811 },
			["Creation|nightslayer"] = { 1, 0, 21, 791 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 701 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 701 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 256 },
			["Kedern|nightslayer"] = { 1, 0, 3, 787 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 147 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 252 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 803 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 813 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 253 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 270 },
			["Paxii|nightslayer"] = { 9, 0, 14, 282 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 283 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 701 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 283 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 341 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 701 },
		},
	},
}

