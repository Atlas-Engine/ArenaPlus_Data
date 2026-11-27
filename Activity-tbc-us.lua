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
	built = 1795762712,
	builtText = "2026-11-27 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Notwzbx|dreamscythe"] = { 4, 14, -120, 41 },
			["Ryanin|dreamscythe"] = { 15, 2, 24, 7 },
			["Gzlol|dreamscythe"] = { 6, 0, 53, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Notwzbx|dreamscythe"] = { 4, 14, -120, 41 },
			["Ryanin|dreamscythe"] = { 15, 2, 24, 7 },
			["Xczv|dreamscythe"] = { 9, 1, 36, 87 },
			["Gzlol|dreamscythe"] = { 6, 0, 53, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Notwzbx|dreamscythe"] = { 4, 16, -147, 41 },
			["Ryanin|dreamscythe"] = { 17, 2, 38, 7 },
			["Xczv|dreamscythe"] = { 9, 1, 36, 87 },
			["Gzlol|dreamscythe"] = { 8, 0, 77, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Notwzbx|dreamscythe"] = { 4, 16, -147, 41 },
			["Ryanin|dreamscythe"] = { 17, 2, 38, 7 },
			["Xczv|dreamscythe"] = { 9, 1, 36, 87 },
			["Gzlol|dreamscythe"] = { 8, 0, 77, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 21, 3, 45, 7 },
			["Notwzbx|dreamscythe"] = { 4, 16, -147, 41 },
			["Couchman|dreamscythe"] = { 10, 4, 15, 1301 },
			["Gzlol|dreamscythe"] = { 12, 2, 97, 41 },
			["Xczv|dreamscythe"] = { 9, 1, 36, 87 },
			["Clothfaté|nightslayer"] = { 3, 1, 15, 1190 },
			["Kasupi|nightslayer"] = { 3, 1, 4, 1184 },
		},
	},
}

