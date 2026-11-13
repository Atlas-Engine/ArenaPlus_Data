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
	built = 1794607113,
	builtText = "2026-11-13 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 13, 2, 66, 39 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 41 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 41 },
			["Losticus|nightslayer"] = { 2, 0, 16, 41 },
			["Swácked|nightslayer"] = { 0, 2, -21, 41 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 41 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 41 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 41 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 13, 2, 66, 39 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 41 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 41 },
			["Cream|nightslayer"] = { 3, 1, 4, 138 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 136 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 137 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 91 },
			["Shob|nightslayer"] = { 2, 1, 11, 137 },
			["Creationx|nightslayer"] = { 0, 2, -15, 149 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 142 },
			["Losticus|nightslayer"] = { 2, 0, 16, 41 },
			["Swácked|nightslayer"] = { 0, 2, -21, 41 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 152 },
			["Creation|nightslayer"] = { 1, 0, 21, 131 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 41 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 41 },
			["Kedern|nightslayer"] = { 1, 0, 3, 127 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 143 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 153 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 41 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 13, 2, 66, 39 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 41 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 41 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 221 },
			["Cream|nightslayer"] = { 3, 1, 4, 138 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 136 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 137 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 91 },
			["Shob|nightslayer"] = { 2, 1, 11, 137 },
			["Creationx|nightslayer"] = { 0, 2, -15, 149 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 142 },
			["Losticus|nightslayer"] = { 2, 0, 16, 41 },
			["Swácked|nightslayer"] = { 0, 2, -21, 41 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 152 },
			["Creation|nightslayer"] = { 1, 0, 21, 131 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 41 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 41 },
			["Kedern|nightslayer"] = { 1, 0, 3, 127 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 143 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 153 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 41 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 13, 2, 66, 39 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 41 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 41 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 221 },
			["Cream|nightslayer"] = { 3, 1, 4, 138 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 136 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 137 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 91 },
			["Shob|nightslayer"] = { 2, 1, 11, 137 },
			["Creationx|nightslayer"] = { 0, 2, -15, 149 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 142 },
			["Losticus|nightslayer"] = { 2, 0, 16, 41 },
			["Swácked|nightslayer"] = { 0, 2, -21, 41 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 152 },
			["Creation|nightslayer"] = { 1, 0, 21, 131 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 41 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 41 },
			["Kedern|nightslayer"] = { 1, 0, 3, 127 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 143 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 153 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 41 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 927 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 926 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 955 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 956 },
			["Bigfudgy|dreamscythe"] = { 13, 2, 66, 39 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 1021 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 1022 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 913 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 41 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 41 },
			["Qantas|nightslayer"] = { 4, 6, -23, 914 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 1031 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 1032 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 221 },
			["Duudah|nightslayer"] = { 6, 0, 19, 1121 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 1121 },
			["Cream|nightslayer"] = { 3, 1, 4, 138 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 136 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 137 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 761 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 91 },
			["Shob|nightslayer"] = { 2, 1, 11, 137 },
			["Arpx|nightslayer"] = { 2, 0, 14, 931 },
			["Creationx|nightslayer"] = { 0, 2, -15, 149 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 142 },
			["Losticus|nightslayer"] = { 2, 0, 16, 41 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 931 },
			["Swácked|nightslayer"] = { 0, 2, -21, 41 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 152 },
			["Creation|nightslayer"] = { 1, 0, 21, 131 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 41 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 41 },
			["Kedern|nightslayer"] = { 1, 0, 3, 127 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 143 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 153 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 41 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 41 },
		},
	},
}

