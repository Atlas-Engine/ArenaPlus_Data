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
	built = 1795841917,
	builtText = "2026-11-27 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 0, 3, -21, 57 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 0, 3, -18, 65 },
			["Thundersháft|nightslayer"] = { 0, 3, -21, 57 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 0, 3, -18, 65 },
			["Thundersháft|nightslayer"] = { 0, 3, -21, 57 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 0, 3, -18, 65 },
			["Thundersháft|nightslayer"] = { 0, 3, -21, 57 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notwzbx|dreamscythe"] = { 4, 14, -120, 1361 },
			["Ryanin|dreamscythe"] = { 15, 2, 24, 1327 },
			["Xczv|dreamscythe"] = { 6, 1, 17, 1407 },
			["Gzlol|dreamscythe"] = { 6, 0, 53, 1361 },
			["Coneily|nightslayer"] = { 0, 3, -18, 65 },
			["Thundersháft|nightslayer"] = { 0, 3, -21, 57 },
			["Couchman|dreamscythe"] = { 1, 0, 11, 1260 },
		},
	},
}

