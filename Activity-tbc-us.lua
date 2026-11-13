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
	built = 1794556714,
	builtText = "2026-11-13 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 87 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 86 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 115 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 116 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 73 },
			["Qantas|nightslayer"] = { 4, 6, -23, 74 },
			["Arpx|nightslayer"] = { 2, 0, 14, 91 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 91 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 87 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 86 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 115 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 116 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 181 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 182 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 73 },
			["Qantas|nightslayer"] = { 4, 6, -23, 74 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 191 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 192 },
			["Duudah|nightslayer"] = { 6, 0, 19, 281 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 281 },
			["Arpx|nightslayer"] = { 2, 0, 14, 91 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 91 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 87 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 86 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 115 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 116 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 181 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 182 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 73 },
			["Duudah|nightslayer"] = { 9, 1, 23, 281 },
			["Qantas|nightslayer"] = { 4, 6, -23, 74 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 281 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 191 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 192 },
			["Creationw|nightslayer"] = { 2, 2, -32, 641 },
			["Arpx|nightslayer"] = { 2, 0, 14, 91 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 91 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 1380 },
			["Shigekazu|nightslayer"] = { 7, 11, -26, 87 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 86 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 115 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 1361 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 116 },
			["Oxwm|dreamscythe"] = { 8, 6, -79, 1383 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 181 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 182 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 73 },
			["Duudah|nightslayer"] = { 9, 1, 23, 281 },
			["Qantas|nightslayer"] = { 4, 6, -23, 74 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 281 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 191 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 192 },
			["Creationw|nightslayer"] = { 2, 2, -32, 641 },
			["Arpx|nightslayer"] = { 2, 0, 14, 91 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 1361 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 91 },
		},
	},
}

