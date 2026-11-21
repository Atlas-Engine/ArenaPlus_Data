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
	built = 1795233512,
	builtText = "2026-11-20 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 5, 2, 38, 39 },
			["Thundersháft|nightslayer"] = { 5, 2, 37, 39 },
			["Bazook|nightslayer"] = { 2, 1, 1, 21 },
			["Truccz|nightslayer"] = { 2, 1, 1, 22 },
			["Kohhan|nightslayer"] = { 1, 1, 5, 23 },
			["Ryanin|dreamscythe"] = { 0, 2, -14, 40 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 22 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 5, 2, 38, 39 },
			["Thundersháft|nightslayer"] = { 5, 2, 37, 39 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 165 },
			["Tycat|nightslayer"] = { 2, 2, -31, 165 },
			["Bazook|nightslayer"] = { 2, 1, 1, 21 },
			["Truccz|nightslayer"] = { 2, 1, 1, 22 },
			["Kohhan|nightslayer"] = { 1, 1, 5, 23 },
			["Ryanin|dreamscythe"] = { 0, 2, -14, 40 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 22 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 40 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 5, 2, 38, 39 },
			["Thundersháft|nightslayer"] = { 5, 2, 37, 39 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 165 },
			["Tycat|nightslayer"] = { 2, 2, -31, 165 },
			["Bazook|nightslayer"] = { 2, 1, 1, 21 },
			["Ryanin|dreamscythe"] = { 1, 2, -11, 40 },
			["Truccz|nightslayer"] = { 2, 1, 1, 22 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 40 },
			["Kohhan|nightslayer"] = { 1, 1, 5, 23 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 22 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 160 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 5, 2, 38, 39 },
			["Thundersháft|nightslayer"] = { 5, 2, 37, 39 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 165 },
			["Tycat|nightslayer"] = { 2, 2, -31, 165 },
			["Bazook|nightslayer"] = { 2, 1, 1, 21 },
			["Ryanin|dreamscythe"] = { 1, 2, -11, 40 },
			["Truccz|nightslayer"] = { 2, 1, 1, 22 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 40 },
			["Kohhan|nightslayer"] = { 1, 1, 5, 23 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 22 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 160 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 13, 7, 14, 40 },
			["Gzlol|dreamscythe"] = { 12, 5, 45, 1120 },
			["Bazook|nightslayer"] = { 7, 3, 30, 21 },
			["Palapapa|nightslayer"] = { 8, 2, 10, 1351 },
			["Rjp|nightslayer"] = { 8, 2, 19, 1351 },
			["Truccz|nightslayer"] = { 7, 3, 30, 22 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 1300 },
			["Bonecrank|dreamscythe"] = { 3, 4, -3, 1433 },
			["Coneily|nightslayer"] = { 5, 2, 38, 39 },
			["Ðade|nightslayer"] = { 4, 3, 10, 1281 },
			["Thundersháft|nightslayer"] = { 5, 2, 37, 39 },
			["Henra|nightslayer"] = { 1, 4, -70, 1120 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 1120 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 165 },
			["Tycat|nightslayer"] = { 2, 2, -31, 165 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 1331 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 1269 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 1300 },
			["Shibax|nightslayer"] = { 0, 3, -40, 1300 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 40 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 1315 },
			["Kohhan|nightslayer"] = { 1, 1, 5, 23 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 22 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 160 },
		},
	},
}

