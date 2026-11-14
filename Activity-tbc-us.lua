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
	built = 1794617915,
	builtText = "2026-11-13 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 5, 0, 16, 163 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 163 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 221 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 221 },
			["Cream|nightslayer"] = { 3, 1, 4, 318 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 316 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 317 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 271 },
			["Shob|nightslayer"] = { 2, 1, 11, 317 },
			["Creationx|nightslayer"] = { 0, 2, -15, 329 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 322 },
			["Losticus|nightslayer"] = { 2, 0, 16, 221 },
			["Swácked|nightslayer"] = { 0, 2, -21, 221 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 332 },
			["Creation|nightslayer"] = { 1, 0, 21, 311 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 221 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 221 },
			["Kedern|nightslayer"] = { 1, 0, 3, 307 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 323 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 333 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 221 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 221 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 163 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 221 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 221 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 401 },
			["Cream|nightslayer"] = { 3, 1, 4, 318 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 316 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 317 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 271 },
			["Shob|nightslayer"] = { 2, 1, 11, 317 },
			["Creationx|nightslayer"] = { 0, 2, -15, 329 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 322 },
			["Losticus|nightslayer"] = { 2, 0, 16, 221 },
			["Swácked|nightslayer"] = { 0, 2, -21, 221 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 332 },
			["Creation|nightslayer"] = { 1, 0, 21, 311 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 221 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 221 },
			["Kedern|nightslayer"] = { 1, 0, 3, 307 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 323 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 333 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 221 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 221 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 163 },
			["Shigekazu|nightslayer"] = { 7, 11, -26, 1107 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 1107 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 1135 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 1136 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 1201 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 1202 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 1093 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 221 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 221 },
			["Qantas|nightslayer"] = { 4, 6, -23, 1094 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 1211 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 1212 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 401 },
			["Duudah|nightslayer"] = { 6, 0, 19, 1301 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 1301 },
			["Cream|nightslayer"] = { 3, 1, 4, 318 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 316 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 317 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 941 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 271 },
			["Shob|nightslayer"] = { 2, 1, 11, 317 },
			["Arpx|nightslayer"] = { 2, 0, 14, 1111 },
			["Creationx|nightslayer"] = { 0, 2, -15, 329 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 322 },
			["Losticus|nightslayer"] = { 2, 0, 16, 221 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 1111 },
			["Swácked|nightslayer"] = { 0, 2, -21, 221 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 332 },
			["Creation|nightslayer"] = { 1, 0, 21, 311 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 221 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 221 },
			["Kedern|nightslayer"] = { 1, 0, 3, 307 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 323 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 333 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 221 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 221 },
		},
	},
}

