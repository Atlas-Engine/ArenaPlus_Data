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
	built = 1794639513,
	builtText = "2026-11-14 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 41 },
			["Xczv|dreamscythe"] = { 5, 1, 10, 41 },
			["Astias|nightslayer"] = { 3, 2, 0, 10 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 27 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 41 },
			["Xczv|dreamscythe"] = { 18, 5, 93, 41 },
			["Mopz|nightslayer"] = { 4, 3, -7, 178 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 130 },
			["Astias|nightslayer"] = { 3, 2, 0, 10 },
			["Qantas|nightslayer"] = { 1, 1, -18, 179 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 136 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 27 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 132 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 133 },
		},
		[3] = {
			["Ryzp|nightslayer"] = { 6, 0, 3, 163 },
			["Hybro|nightslayer"] = { 5, 0, 11, 150 },
			["Paxii|nightslayer"] = { 5, 0, 9, 162 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 164 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 41 },
			["Xczv|dreamscythe"] = { 19, 5, 104, 41 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 181 },
			["Mopz|nightslayer"] = { 7, 5, 19, 178 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 221 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 221 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 130 },
			["Astias|nightslayer"] = { 3, 2, 0, 10 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 221 },
			["Tycat|nightslayer"] = { 4, 0, 10, 221 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 180 },
			["Frotted|nightslayer"] = { 0, 2, -41, 221 },
			["Qantas|nightslayer"] = { 1, 1, -18, 179 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 136 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 27 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 132 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 133 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 150 },
			["Paxii|nightslayer"] = { 9, 0, 14, 162 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 163 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 164 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 221 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 41 },
			["Xczv|dreamscythe"] = { 19, 5, 104, 41 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 523 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 181 },
			["Mopz|nightslayer"] = { 7, 5, 19, 178 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 221 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 221 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 581 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 581 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 130 },
			["Astias|nightslayer"] = { 3, 2, 0, 10 },
			["Cream|nightslayer"] = { 3, 1, 4, 678 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 221 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 676 },
			["Tycat|nightslayer"] = { 4, 0, 10, 221 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 677 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 631 },
			["Shob|nightslayer"] = { 2, 1, 11, 677 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 180 },
			["Creationx|nightslayer"] = { 0, 2, -15, 689 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 682 },
			["Frotted|nightslayer"] = { 0, 2, -41, 221 },
			["Losticus|nightslayer"] = { 2, 0, 16, 581 },
			["Qantas|nightslayer"] = { 1, 1, -18, 179 },
			["Swácked|nightslayer"] = { 0, 2, -21, 581 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 692 },
			["Creation|nightslayer"] = { 1, 0, 21, 671 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 581 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 581 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 136 },
			["Kedern|nightslayer"] = { 1, 0, 3, 667 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 27 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 132 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 683 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 693 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 133 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 150 },
			["Paxii|nightslayer"] = { 9, 0, 14, 162 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 163 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 581 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 164 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 221 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 581 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 41 },
			["Xczv|dreamscythe"] = { 19, 5, 104, 41 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 523 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 181 },
			["Mopz|nightslayer"] = { 7, 5, 19, 178 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 221 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 221 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 581 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 581 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 761 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 130 },
			["Astias|nightslayer"] = { 3, 2, 0, 10 },
			["Cream|nightslayer"] = { 3, 1, 4, 678 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 221 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 676 },
			["Tycat|nightslayer"] = { 4, 0, 10, 221 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 677 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 1301 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 631 },
			["Shob|nightslayer"] = { 2, 1, 11, 677 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 180 },
			["Creationx|nightslayer"] = { 0, 2, -15, 689 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 682 },
			["Frotted|nightslayer"] = { 0, 2, -41, 221 },
			["Losticus|nightslayer"] = { 2, 0, 16, 581 },
			["Qantas|nightslayer"] = { 1, 1, -18, 179 },
			["Swácked|nightslayer"] = { 0, 2, -21, 581 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 692 },
			["Creation|nightslayer"] = { 1, 0, 21, 671 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 581 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 581 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 136 },
			["Kedern|nightslayer"] = { 1, 0, 3, 667 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 27 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 132 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 683 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 693 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 133 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 150 },
			["Paxii|nightslayer"] = { 9, 0, 14, 162 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 163 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 581 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 164 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 221 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 581 },
		},
	},
}

