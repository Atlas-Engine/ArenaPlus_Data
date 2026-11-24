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
	built = 1795503514,
	builtText = "2026-11-24 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 17 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 40 },
			["Ryanin|dreamscythe"] = { 9, 4, 64, 40 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 40 },
			["Probear|nightslayer"] = { 5, 1, 47, 40 },
			["Largefish|nightslayer"] = { 1, 2, 18, 40 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 40 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 17 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 40 },
			["Ryanin|dreamscythe"] = { 9, 4, 64, 40 },
			["Coneily|nightslayer"] = { 7, 3, 27, 150 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 122 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 40 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 150 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 133 },
			["Xczv|dreamscythe"] = { 3, 6, -43, 80 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 90 },
			["Probear|nightslayer"] = { 5, 1, 47, 40 },
			["Rjp|nightslayer"] = { 5, 1, 8, 91 },
			["Restokind|nightslayer"] = { 3, 2, 27, 133 },
			["Largefish|nightslayer"] = { 1, 2, 18, 40 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 40 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 31 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 17, 6, 73, 40 },
			["Restokind|nightslayer"] = { 12, 10, 20, 133 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 80 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 17 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 40 },
			["Coneily|nightslayer"] = { 7, 3, 27, 150 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 122 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 40 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 150 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 133 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 220 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 90 },
			["Probear|nightslayer"] = { 5, 1, 47, 40 },
			["Rjp|nightslayer"] = { 5, 1, 8, 91 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 260 },
			["Tycat|nightslayer"] = { 4, 0, 0, 274 },
			["Largefish|nightslayer"] = { 1, 2, 18, 40 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 198 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 220 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 40 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 190 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 190 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 220 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 31 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 220 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 17, 6, 73, 40 },
			["Restokind|nightslayer"] = { 12, 10, 20, 133 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 80 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 17 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 40 },
			["Coneily|nightslayer"] = { 7, 3, 27, 150 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 122 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 40 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 150 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 133 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 220 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 90 },
			["Probear|nightslayer"] = { 5, 1, 47, 40 },
			["Rjp|nightslayer"] = { 5, 1, 8, 91 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 260 },
			["Tycat|nightslayer"] = { 4, 0, 0, 274 },
			["Largefish|nightslayer"] = { 1, 2, 18, 40 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 198 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 220 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 40 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 190 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 190 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 220 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 31 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 220 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 17, 6, 73, 40 },
			["Restokind|nightslayer"] = { 12, 10, 20, 133 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 80 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 17 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 40 },
			["Coneily|nightslayer"] = { 7, 3, 27, 150 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 122 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 40 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 150 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 133 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 220 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 90 },
			["Probear|nightslayer"] = { 5, 1, 47, 40 },
			["Rjp|nightslayer"] = { 5, 1, 8, 91 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 260 },
			["Tycat|nightslayer"] = { 4, 0, 0, 274 },
			["Largefish|nightslayer"] = { 1, 2, 18, 40 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 198 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 220 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 40 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 190 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 190 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 220 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 31 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 220 },
		},
	},
}

