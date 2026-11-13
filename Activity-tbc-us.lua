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
	built = 1794553112,
	builtText = "2026-11-13 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 27 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 26 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 55 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 56 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 13 },
			["Qantas|nightslayer"] = { 4, 6, -23, 14 },
			["Arpx|nightslayer"] = { 2, 0, 14, 31 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 27 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 26 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 55 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 56 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 121 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 121 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 13 },
			["Qantas|nightslayer"] = { 4, 6, -23, 14 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 131 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 132 },
			["Arpx|nightslayer"] = { 2, 0, 14, 31 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 31 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 27 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 26 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 55 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 56 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 121 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 121 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 13 },
			["Qantas|nightslayer"] = { 4, 6, -23, 14 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 131 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 132 },
			["Duudah|nightslayer"] = { 6, 0, 19, 221 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 221 },
			["Arpx|nightslayer"] = { 2, 0, 14, 31 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 31 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 27 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 26 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 55 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 56 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 121 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 121 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 13 },
			["Duudah|nightslayer"] = { 9, 1, 23, 221 },
			["Qantas|nightslayer"] = { 4, 6, -23, 14 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 221 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 131 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 132 },
			["Creationw|nightslayer"] = { 2, 2, -32, 581 },
			["Arpx|nightslayer"] = { 2, 0, 14, 31 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 31 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 1320 },
			["Shigekazu|nightslayer"] = { 7, 11, -26, 27 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 26 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 55 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 1301 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 56 },
			["Oxwm|dreamscythe"] = { 8, 6, -79, 1323 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 121 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 121 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 13 },
			["Duudah|nightslayer"] = { 9, 1, 23, 221 },
			["Qantas|nightslayer"] = { 4, 6, -23, 14 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 221 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 131 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 132 },
			["Creationw|nightslayer"] = { 2, 2, -32, 581 },
			["Arpx|nightslayer"] = { 2, 0, 14, 31 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 1301 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 31 },
		},
	},
}

