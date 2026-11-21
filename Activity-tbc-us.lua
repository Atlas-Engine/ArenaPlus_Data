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
	built = 1795237114,
	builtText = "2026-11-20 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Kohhan|nightslayer"] = { 5, 2, 12, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Kohhan|nightslayer"] = { 6, 3, 17, 31 },
			["Coneily|nightslayer"] = { 5, 2, 38, 99 },
			["Thundersháft|nightslayer"] = { 5, 2, 37, 99 },
			["Bazook|nightslayer"] = { 2, 1, 1, 81 },
			["Truccz|nightslayer"] = { 2, 1, 1, 82 },
			["Ryanin|dreamscythe"] = { 0, 2, -14, 100 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 82 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Kohhan|nightslayer"] = { 6, 3, 17, 31 },
			["Coneily|nightslayer"] = { 5, 2, 38, 99 },
			["Thundersháft|nightslayer"] = { 5, 2, 37, 99 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 225 },
			["Tycat|nightslayer"] = { 2, 2, -31, 225 },
			["Bazook|nightslayer"] = { 2, 1, 1, 81 },
			["Ryanin|dreamscythe"] = { 1, 2, -11, 100 },
			["Truccz|nightslayer"] = { 2, 1, 1, 82 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 100 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 82 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 220 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kohhan|nightslayer"] = { 6, 3, 17, 31 },
			["Coneily|nightslayer"] = { 5, 2, 38, 99 },
			["Thundersháft|nightslayer"] = { 5, 2, 37, 99 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 225 },
			["Tycat|nightslayer"] = { 2, 2, -31, 225 },
			["Bazook|nightslayer"] = { 2, 1, 1, 81 },
			["Ryanin|dreamscythe"] = { 1, 2, -11, 100 },
			["Truccz|nightslayer"] = { 2, 1, 1, 82 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 100 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 82 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 220 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 13, 7, 14, 100 },
			["Gzlol|dreamscythe"] = { 12, 5, 45, 1180 },
			["Kohhan|nightslayer"] = { 6, 3, 17, 31 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 1360 },
			["Coneily|nightslayer"] = { 5, 2, 38, 99 },
			["Ðade|nightslayer"] = { 4, 3, 10, 1341 },
			["Thundersháft|nightslayer"] = { 5, 2, 37, 99 },
			["Henra|nightslayer"] = { 1, 4, -70, 1180 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 1180 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 225 },
			["Palapapa|nightslayer"] = { 4, 0, 28, 1411 },
			["Tycat|nightslayer"] = { 2, 2, -31, 225 },
			["Bazook|nightslayer"] = { 2, 1, 1, 81 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 1391 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 1329 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 1360 },
			["Shibax|nightslayer"] = { 0, 3, -40, 1360 },
			["Truccz|nightslayer"] = { 2, 1, 1, 82 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 100 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 1375 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 82 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 220 },
			["Rjp|nightslayer"] = { 1, 0, 5, 1411 },
		},
	},
}

