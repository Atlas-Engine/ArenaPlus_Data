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
	built = 1795525112,
	builtText = "2026-11-24 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 1, 0, 9, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 1, 0, 9, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 220 },
			["Ryanin|dreamscythe"] = { 12, 6, -21, 229 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 220 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 320 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 220 },
			["Jackular|nightslayer"] = { 3, 7, -42, 347 },
			["Probear|nightslayer"] = { 1, 3, -3, 250 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 220 },
			["Maigaysiao|nightslayer"] = { 1, 0, 9, 40 },
		},
		[3] = {
			["Druidtommy|nightslayer"] = { 5, 0, 7, 252 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 248 },
			["Probear|nightslayer"] = { 5, 0, 5, 250 },
			["Showhan|nightslayer"] = { 5, 0, 0, 246 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 229 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 220 },
			["Restokind|nightslayer"] = { 12, 10, 20, 493 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 440 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 220 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 220 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 377 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 320 },
			["Coneily|nightslayer"] = { 7, 3, 27, 510 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 482 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 220 },
			["Jackular|nightslayer"] = { 3, 7, -42, 347 },
			["Probear|nightslayer"] = { 6, 4, 44, 250 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 400 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 510 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 493 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 580 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 450 },
			["Rjp|nightslayer"] = { 5, 1, 8, 451 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 620 },
			["Tycat|nightslayer"] = { 4, 0, 0, 634 },
			["Largefish|nightslayer"] = { 1, 2, 18, 400 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 558 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 580 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 550 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 550 },
			["Maigaysiao|nightslayer"] = { 1, 0, 9, 40 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 580 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 391 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 252 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 248 },
			["Probear|nightslayer"] = { 5, 0, 5, 250 },
			["Showhan|nightslayer"] = { 5, 0, 0, 246 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 580 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 229 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 220 },
			["Restokind|nightslayer"] = { 12, 10, 20, 493 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 440 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 220 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 220 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 377 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 320 },
			["Coneily|nightslayer"] = { 7, 3, 27, 510 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 482 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 220 },
			["Jackular|nightslayer"] = { 3, 7, -42, 347 },
			["Probear|nightslayer"] = { 6, 4, 44, 250 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 400 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 510 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 493 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 580 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 450 },
			["Rjp|nightslayer"] = { 5, 1, 8, 451 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 620 },
			["Tycat|nightslayer"] = { 4, 0, 0, 634 },
			["Largefish|nightslayer"] = { 1, 2, 18, 400 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 558 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 580 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 550 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 550 },
			["Maigaysiao|nightslayer"] = { 1, 0, 9, 40 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 580 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 391 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 252 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 248 },
			["Probear|nightslayer"] = { 5, 0, 5, 250 },
			["Showhan|nightslayer"] = { 5, 0, 0, 246 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 580 },
		},
	},
}

