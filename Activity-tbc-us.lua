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
	built = 1795499914,
	builtText = "2026-11-24 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 3, 6, -43, 20 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 30 },
			["Rjp|nightslayer"] = { 5, 1, 8, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 12, 10, 20, 73 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 20 },
			["Coneily|nightslayer"] = { 7, 3, 27, 90 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 152 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 90 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 73 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 160 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 30 },
			["Rjp|nightslayer"] = { 5, 1, 8, 31 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 138 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 160 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 130 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 130 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 160 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 135 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 12, 10, 20, 73 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 20 },
			["Coneily|nightslayer"] = { 7, 3, 27, 90 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 152 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 90 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 73 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 160 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 30 },
			["Rjp|nightslayer"] = { 5, 1, 8, 31 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 200 },
			["Tycat|nightslayer"] = { 4, 0, 0, 214 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 138 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 160 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 130 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 130 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 160 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 135 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 160 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 12, 10, 20, 73 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 20 },
			["Coneily|nightslayer"] = { 7, 3, 27, 90 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 152 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 90 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 73 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 160 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 30 },
			["Rjp|nightslayer"] = { 5, 1, 8, 31 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 200 },
			["Tycat|nightslayer"] = { 4, 0, 0, 214 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 138 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 160 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 130 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 130 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 160 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 135 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 160 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Restokind|nightslayer"] = { 12, 10, 20, 73 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 20 },
			["Coneily|nightslayer"] = { 7, 3, 27, 90 },
			["Ryanin|dreamscythe"] = { 8, 2, 9, 152 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 90 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 73 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 160 },
			["Gzlol|dreamscythe"] = { 3, 3, 17, 1420 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 30 },
			["Rjp|nightslayer"] = { 5, 1, 8, 31 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 200 },
			["Tycat|nightslayer"] = { 4, 0, 0, 214 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 138 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 160 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 130 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 130 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 160 },
		},
		[3] = {
			["Bananapwn|nightslayer"] = { 8, 2, 18, 135 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 160 },
		},
	},
}

