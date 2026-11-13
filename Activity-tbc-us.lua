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
	built = 1794589115,
	builtText = "2026-11-13 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 627 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 627 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 655 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 656 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 613 },
			["Qantas|nightslayer"] = { 4, 6, -23, 614 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 461 },
			["Arpx|nightslayer"] = { 2, 0, 14, 631 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 631 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 627 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 627 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 655 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 656 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 721 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 722 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 613 },
			["Duudah|nightslayer"] = { 9, 1, 23, 821 },
			["Qantas|nightslayer"] = { 4, 6, -23, 614 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 821 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 731 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 732 },
			["Creationw|nightslayer"] = { 2, 2, -32, 1181 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 461 },
			["Arpx|nightslayer"] = { 2, 0, 14, 631 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 631 },
		},
	},
}

