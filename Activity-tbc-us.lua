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
	built = 1795751913,
	builtText = "2026-11-26 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 0, 3, -17, 38 },
			["Gzlol|dreamscythe"] = { 2, 0, 24, 41 },
			["Notwzbx|dreamscythe"] = { 0, 2, -27, 41 },
			["Ryanin|dreamscythe"] = { 2, 0, 14, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 0, 3, -17, 38 },
			["Gzlol|dreamscythe"] = { 2, 0, 24, 41 },
			["Notwzbx|dreamscythe"] = { 0, 2, -27, 41 },
			["Ryanin|dreamscythe"] = { 2, 0, 14, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 0, 3, -17, 38 },
			["Gzlol|dreamscythe"] = { 2, 0, 24, 41 },
			["Notwzbx|dreamscythe"] = { 0, 2, -27, 41 },
			["Ryanin|dreamscythe"] = { 2, 0, 14, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 0, 3, -17, 38 },
			["Gzlol|dreamscythe"] = { 2, 0, 24, 41 },
			["Notwzbx|dreamscythe"] = { 0, 2, -27, 41 },
			["Ryanin|dreamscythe"] = { 2, 0, 14, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 10, 8, -13, 38 },
			["Couchman|dreamscythe"] = { 10, 4, 15, 1121 },
			["Gzlol|dreamscythe"] = { 6, 2, 44, 41 },
			["Ryanin|dreamscythe"] = { 6, 1, 21, 41 },
			["Willinek|nightslayer"] = { 3, 2, -12, 1418 },
			["Clothfaté|nightslayer"] = { 3, 1, 15, 1010 },
			["Kasupi|nightslayer"] = { 3, 1, 4, 1004 },
			["Notwzbx|dreamscythe"] = { 0, 2, -27, 41 },
		},
	},
}

