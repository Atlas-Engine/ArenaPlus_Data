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
	built = 1795010311,
	builtText = "2026-11-18 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 0, 56, 280 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 344 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 280 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 280 },
			["Duudah|nightslayer"] = { 9, 1, 45, 460 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 543 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 536 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 460 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 344 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 280 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 543 },
			["Rjp|nightslayer"] = { 0, 5, -54, 552 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 460 },
			["Merdog|nightslayer"] = { 0, 2, -5, 550 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 585 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 561 },
			["Nikz|nightslayer"] = { 0, 1, -3, 460 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 460 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 280 },
			["Duudah|nightslayer"] = { 9, 1, 45, 460 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 543 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 536 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 460 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 344 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 280 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 543 },
			["Rjp|nightslayer"] = { 0, 5, -54, 552 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 723 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 460 },
			["Merdog|nightslayer"] = { 0, 2, -5, 550 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 585 },
			["Tycat|nightslayer"] = { 2, 0, 2, 724 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 561 },
			["Frotted|nightslayer"] = { 1, 0, 0, 752 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 1360 },
			["Nikz|nightslayer"] = { 0, 1, -3, 460 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 460 },
		},
	},
}

