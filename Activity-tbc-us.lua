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
	built = 1794560314,
	builtText = "2026-11-13 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 147 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 146 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 175 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 176 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 133 },
			["Qantas|nightslayer"] = { 4, 6, -23, 134 },
			["Arpx|nightslayer"] = { 2, 0, 14, 151 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 151 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 147 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 146 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 175 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 176 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 241 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 242 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 133 },
			["Qantas|nightslayer"] = { 4, 6, -23, 134 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 251 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 252 },
			["Duudah|nightslayer"] = { 6, 0, 19, 341 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 341 },
			["Arpx|nightslayer"] = { 2, 0, 14, 151 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 151 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 147 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 146 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 175 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 176 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 241 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 242 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 133 },
			["Qantas|nightslayer"] = { 4, 6, -23, 134 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 251 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 252 },
			["Duudah|nightslayer"] = { 6, 0, 19, 341 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 341 },
			["Creationw|nightslayer"] = { 2, 2, -32, 701 },
			["Arpx|nightslayer"] = { 2, 0, 14, 151 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 151 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 1440 },
			["Shigekazu|nightslayer"] = { 7, 11, -26, 147 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 146 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 175 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 1421 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 176 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 241 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 242 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 133 },
			["Duudah|nightslayer"] = { 9, 1, 23, 341 },
			["Qantas|nightslayer"] = { 4, 6, -23, 134 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 341 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 251 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 252 },
			["Creationw|nightslayer"] = { 2, 2, -32, 701 },
			["Arpx|nightslayer"] = { 2, 0, 14, 151 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 1421 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 151 },
		},
	},
}

