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
	built = 1794578316,
	builtText = "2026-11-13 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Largemoot|nightslayer"] = { 0, 3, -7, 281 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 447 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 447 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 475 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 476 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 541 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 542 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 433 },
			["Qantas|nightslayer"] = { 4, 6, -23, 434 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 551 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 552 },
			["Duudah|nightslayer"] = { 6, 0, 19, 641 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 641 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 281 },
			["Arpx|nightslayer"] = { 2, 0, 14, 451 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 451 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 447 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 447 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 475 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 476 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 541 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 542 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 433 },
			["Duudah|nightslayer"] = { 9, 1, 23, 641 },
			["Qantas|nightslayer"] = { 4, 6, -23, 434 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 641 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 551 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 552 },
			["Creationw|nightslayer"] = { 2, 2, -32, 1001 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 281 },
			["Arpx|nightslayer"] = { 2, 0, 14, 451 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 451 },
		},
	},
}

