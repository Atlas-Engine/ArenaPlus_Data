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
	built = 1795877912,
	builtText = "2026-11-28 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jgwentwertj|dreamscythe"] = { 0, 5, -22, 341 },
			["Pwnsaur|dreamscythe"] = { 0, 5, -25, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 19, 11, 2, 420 },
			["Gzlol|dreamscythe"] = { 14, 10, 47, 521 },
			["Shigekazu|nightslayer"] = { 14, 8, -17, 521 },
			["Wílleh|nightslayer"] = { 14, 8, -17, 521 },
			["Xczv|dreamscythe"] = { 11, 3, 24, 446 },
			["Floridachico|nightslayer"] = { 3, 6, -1, 472 },
			["Jgwentwertj|dreamscythe"] = { 0, 5, -22, 341 },
			["Pwnsaur|dreamscythe"] = { 0, 5, -25, 341 },
			["Coneily|nightslayer"] = { 0, 3, -18, 665 },
			["Thundersháft|nightslayer"] = { 0, 3, -21, 657 },
			["Bbangzz|dreamscythe"] = { 2, 0, 19, 381 },
			["Clothfaté|nightslayer"] = { 2, 0, 14, 427 },
			["Kasupi|nightslayer"] = { 2, 0, 9, 415 },
			["Shikumunss|dreamscythe"] = { 2, 0, 19, 383 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 19, 11, 2, 420 },
			["Gzlol|dreamscythe"] = { 14, 10, 47, 521 },
			["Shigekazu|nightslayer"] = { 14, 8, -17, 521 },
			["Wílleh|nightslayer"] = { 14, 8, -17, 521 },
			["Xczv|dreamscythe"] = { 11, 3, 24, 446 },
			["Floridachico|nightslayer"] = { 3, 6, -1, 472 },
			["Jgwentwertj|dreamscythe"] = { 0, 5, -22, 341 },
			["Pwnsaur|dreamscythe"] = { 0, 5, -25, 341 },
			["Coneily|nightslayer"] = { 0, 3, -18, 665 },
			["Thundersháft|nightslayer"] = { 0, 3, -21, 657 },
			["Bbangzz|dreamscythe"] = { 2, 0, 19, 381 },
			["Clothfaté|nightslayer"] = { 2, 0, 14, 427 },
			["Kasupi|nightslayer"] = { 2, 0, 9, 415 },
			["Shikumunss|dreamscythe"] = { 2, 0, 19, 383 },
		},
	},
}

