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
	built = 1795514318,
	builtText = "2026-11-24 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 12, 6, -21, 50 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 40 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 40 },
			["Couchman|dreamscythe"] = { 3, 0, 16, 40 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 40 },
			["Ryanin|dreamscythe"] = { 12, 6, -21, 50 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 40 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 140 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 40 },
			["Jackular|nightslayer"] = { 3, 7, -42, 168 },
			["Probear|nightslayer"] = { 1, 3, -3, 71 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 40 },
		},
		[3] = {
			["Druidtommy|nightslayer"] = { 5, 0, 7, 72 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 68 },
			["Probear|nightslayer"] = { 5, 0, 5, 71 },
			["Showhan|nightslayer"] = { 5, 0, 0, 66 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 40 },
			["Ryanin|dreamscythe"] = { 21, 10, 43, 50 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 40 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 40 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 197 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 140 },
			["Coneily|nightslayer"] = { 7, 3, 27, 330 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 302 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 40 },
			["Jackular|nightslayer"] = { 3, 7, -42, 168 },
			["Probear|nightslayer"] = { 6, 4, 44, 71 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 220 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 330 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 313 },
			["Xczv|dreamscythe"] = { 3, 6, -43, 260 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 270 },
			["Rjp|nightslayer"] = { 5, 1, 8, 271 },
			["Restokind|nightslayer"] = { 3, 2, 27, 313 },
			["Largefish|nightslayer"] = { 1, 2, 18, 220 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 211 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 72 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 68 },
			["Probear|nightslayer"] = { 5, 0, 5, 71 },
			["Showhan|nightslayer"] = { 5, 0, 0, 66 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 50 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 40 },
			["Restokind|nightslayer"] = { 12, 10, 20, 313 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 260 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 40 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 40 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 197 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 140 },
			["Coneily|nightslayer"] = { 7, 3, 27, 330 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 302 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 40 },
			["Jackular|nightslayer"] = { 3, 7, -42, 168 },
			["Probear|nightslayer"] = { 6, 4, 44, 71 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 220 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 330 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 313 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 400 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 270 },
			["Rjp|nightslayer"] = { 5, 1, 8, 271 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 441 },
			["Tycat|nightslayer"] = { 4, 0, 0, 454 },
			["Largefish|nightslayer"] = { 1, 2, 18, 220 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 378 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 400 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 370 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 370 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 400 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 211 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 72 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 68 },
			["Probear|nightslayer"] = { 5, 0, 5, 71 },
			["Showhan|nightslayer"] = { 5, 0, 0, 66 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 400 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 50 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 40 },
			["Restokind|nightslayer"] = { 12, 10, 20, 313 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 260 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 40 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 40 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 197 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 140 },
			["Coneily|nightslayer"] = { 7, 3, 27, 330 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 302 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 40 },
			["Jackular|nightslayer"] = { 3, 7, -42, 168 },
			["Probear|nightslayer"] = { 6, 4, 44, 71 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 220 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 330 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 313 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 400 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 270 },
			["Rjp|nightslayer"] = { 5, 1, 8, 271 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 441 },
			["Tycat|nightslayer"] = { 4, 0, 0, 454 },
			["Largefish|nightslayer"] = { 1, 2, 18, 220 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 378 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 400 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 370 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 370 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 400 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 211 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 72 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 68 },
			["Probear|nightslayer"] = { 5, 0, 5, 71 },
			["Showhan|nightslayer"] = { 5, 0, 0, 66 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 400 },
		},
	},
}

