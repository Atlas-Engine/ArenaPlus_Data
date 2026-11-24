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
	built = 1795492713,
	builtText = "2026-11-23 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 6, 6, -38, 40 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 32 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 40 },
			["Xczv|dreamscythe"] = { 8, 1, 22, 40 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 40 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 10 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 40 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 15 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 6, 6, -38, 40 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 32 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 40 },
			["Xczv|dreamscythe"] = { 8, 1, 22, 40 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 80 },
			["Tycat|nightslayer"] = { 4, 0, 0, 94 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 40 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 10 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 40 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 15 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 6, 6, -38, 40 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 32 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 40 },
			["Xczv|dreamscythe"] = { 8, 1, 22, 40 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 80 },
			["Tycat|nightslayer"] = { 4, 0, 0, 94 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 40 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 10 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 40 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 15 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 6, 6, -38, 40 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 32 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 40 },
			["Xczv|dreamscythe"] = { 8, 1, 22, 40 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 80 },
			["Tycat|nightslayer"] = { 4, 0, 0, 94 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 40 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 10 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 40 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 15 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 40 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 11, 5, -5, 32 },
			["Restokind|nightslayer"] = { 6, 6, -38, 40 },
			["Lizzygrey|nightslayer"] = { 8, 2, 32, 1407 },
			["Mopz|nightslayer"] = { 8, 2, 32, 1406 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 40 },
			["Xczv|dreamscythe"] = { 8, 1, 22, 40 },
			["Gzlol|dreamscythe"] = { 3, 3, 17, 1300 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 80 },
			["Tycat|nightslayer"] = { 4, 0, 0, 94 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 40 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 10 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 40 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 15 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 40 },
		},
	},
}

