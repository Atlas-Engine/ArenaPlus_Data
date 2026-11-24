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
	built = 1795496314,
	builtText = "2026-11-23 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 7, 3, 27, 30 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 30 },
			["Restokind|nightslayer"] = { 3, 2, 27, 13 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 12, 10, 20, 13 },
			["Coneily|nightslayer"] = { 7, 3, 27, 30 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 92 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 30 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 100 },
			["Xczv|dreamscythe"] = { 8, 1, 22, 100 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 140 },
			["Tycat|nightslayer"] = { 4, 0, 0, 154 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 100 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 70 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 70 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 100 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 75 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 12, 10, 20, 13 },
			["Coneily|nightslayer"] = { 7, 3, 27, 30 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 92 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 30 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 100 },
			["Xczv|dreamscythe"] = { 8, 1, 22, 100 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 140 },
			["Tycat|nightslayer"] = { 4, 0, 0, 154 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 100 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 70 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 70 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 100 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 75 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 100 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 12, 10, 20, 13 },
			["Coneily|nightslayer"] = { 7, 3, 27, 30 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 92 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 30 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 100 },
			["Xczv|dreamscythe"] = { 8, 1, 22, 100 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 140 },
			["Tycat|nightslayer"] = { 4, 0, 0, 154 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 100 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 70 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 70 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 100 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 75 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 100 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 12, 10, 20, 13 },
			["Coneily|nightslayer"] = { 7, 3, 27, 30 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 92 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 30 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 100 },
			["Xczv|dreamscythe"] = { 8, 1, 22, 100 },
			["Gzlol|dreamscythe"] = { 3, 3, 17, 1360 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 140 },
			["Tycat|nightslayer"] = { 4, 0, 0, 154 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 100 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 70 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 70 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 100 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 75 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 100 },
		},
	},
}

