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
	built = 1795769914,
	builtText = "2026-11-27 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 1, 0, 11, 60 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Notwzbx|dreamscythe"] = { 4, 14, -120, 161 },
			["Ryanin|dreamscythe"] = { 15, 2, 24, 127 },
			["Gzlol|dreamscythe"] = { 6, 0, 53, 161 },
			["Couchman|dreamscythe"] = { 1, 0, 11, 60 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Notwzbx|dreamscythe"] = { 4, 16, -147, 161 },
			["Ryanin|dreamscythe"] = { 17, 2, 38, 127 },
			["Xczv|dreamscythe"] = { 9, 1, 36, 207 },
			["Gzlol|dreamscythe"] = { 8, 0, 77, 161 },
			["Couchman|dreamscythe"] = { 1, 0, 11, 60 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Notwzbx|dreamscythe"] = { 4, 16, -147, 161 },
			["Ryanin|dreamscythe"] = { 17, 2, 38, 127 },
			["Xczv|dreamscythe"] = { 9, 1, 36, 207 },
			["Gzlol|dreamscythe"] = { 8, 0, 77, 161 },
			["Couchman|dreamscythe"] = { 1, 0, 11, 60 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 21, 3, 45, 127 },
			["Notwzbx|dreamscythe"] = { 4, 16, -147, 161 },
			["Couchman|dreamscythe"] = { 11, 4, 26, 60 },
			["Gzlol|dreamscythe"] = { 12, 2, 97, 161 },
			["Xczv|dreamscythe"] = { 9, 1, 36, 207 },
			["Clothfaté|nightslayer"] = { 3, 1, 15, 1310 },
			["Kasupi|nightslayer"] = { 3, 1, 4, 1304 },
		},
	},
}

