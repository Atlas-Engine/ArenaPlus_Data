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
	built = 1795240716,
	builtText = "2026-11-21 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 10, 6, 36, 41 },
			["Thundersháft|nightslayer"] = { 10, 6, 35, 31 },
			["Mopz|nightslayer"] = { 12, 3, 78, 36 },
			["Kohhan|nightslayer"] = { 3, 1, 16, 52 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 15, 8, 74, 41 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 31 },
			["Mopz|nightslayer"] = { 12, 3, 78, 36 },
			["Kohhan|nightslayer"] = { 9, 4, 33, 52 },
			["Bazook|nightslayer"] = { 2, 1, 1, 141 },
			["Truccz|nightslayer"] = { 2, 1, 1, 142 },
			["Ryanin|dreamscythe"] = { 0, 2, -14, 160 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 142 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 15, 8, 74, 41 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 31 },
			["Mopz|nightslayer"] = { 12, 3, 78, 36 },
			["Kohhan|nightslayer"] = { 9, 4, 33, 52 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 285 },
			["Tycat|nightslayer"] = { 2, 2, -31, 285 },
			["Bazook|nightslayer"] = { 2, 1, 1, 141 },
			["Ryanin|dreamscythe"] = { 1, 2, -11, 160 },
			["Truccz|nightslayer"] = { 2, 1, 1, 142 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 160 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 142 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 280 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 15, 8, 74, 41 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 31 },
			["Mopz|nightslayer"] = { 12, 3, 78, 36 },
			["Kohhan|nightslayer"] = { 9, 4, 33, 52 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 285 },
			["Tycat|nightslayer"] = { 2, 2, -31, 285 },
			["Bazook|nightslayer"] = { 2, 1, 1, 141 },
			["Ryanin|dreamscythe"] = { 1, 2, -11, 160 },
			["Truccz|nightslayer"] = { 2, 1, 1, 142 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 160 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 142 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 280 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 15, 8, 74, 41 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 31 },
			["Ryanin|dreamscythe"] = { 13, 7, 14, 160 },
			["Gzlol|dreamscythe"] = { 12, 5, 45, 1240 },
			["Mopz|nightslayer"] = { 12, 3, 78, 36 },
			["Kohhan|nightslayer"] = { 9, 4, 33, 52 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 1420 },
			["Ðade|nightslayer"] = { 4, 3, 10, 1401 },
			["Henra|nightslayer"] = { 1, 4, -70, 1240 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 1240 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 285 },
			["Tycat|nightslayer"] = { 2, 2, -31, 285 },
			["Bazook|nightslayer"] = { 2, 1, 1, 141 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 1389 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 1420 },
			["Shibax|nightslayer"] = { 0, 3, -40, 1420 },
			["Truccz|nightslayer"] = { 2, 1, 1, 142 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 160 },
			["Tnyni|nightslayer"] = { 1, 1, 5, 142 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 280 },
			["Floridaboi|nightslayer"] = { 0, 1, -18, 1435 },
		},
	},
}

