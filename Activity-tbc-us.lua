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
	built = 1795517913,
	builtText = "2026-11-24 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 100 },
			["Ryanin|dreamscythe"] = { 12, 6, -21, 109 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 100 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 100 },
			["Probear|nightslayer"] = { 1, 3, -3, 130 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 100 },
		},
		[3] = {
			["Druidtommy|nightslayer"] = { 5, 0, 7, 132 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 128 },
			["Probear|nightslayer"] = { 5, 0, 5, 130 },
			["Showhan|nightslayer"] = { 5, 0, 0, 126 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 100 },
			["Ryanin|dreamscythe"] = { 21, 10, 43, 109 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 100 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 100 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 257 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 200 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 100 },
			["Jackular|nightslayer"] = { 3, 7, -42, 227 },
			["Probear|nightslayer"] = { 6, 4, 44, 130 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 280 },
			["Xczv|dreamscythe"] = { 3, 6, -43, 320 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 330 },
			["Rjp|nightslayer"] = { 5, 1, 8, 331 },
			["Largefish|nightslayer"] = { 1, 2, 18, 280 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 271 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 132 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 128 },
			["Probear|nightslayer"] = { 5, 0, 5, 130 },
			["Showhan|nightslayer"] = { 5, 0, 0, 126 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 109 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 100 },
			["Restokind|nightslayer"] = { 12, 10, 20, 373 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 320 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 100 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 100 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 257 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 200 },
			["Coneily|nightslayer"] = { 7, 3, 27, 390 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 362 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 100 },
			["Jackular|nightslayer"] = { 3, 7, -42, 227 },
			["Probear|nightslayer"] = { 6, 4, 44, 130 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 280 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 390 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 373 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 460 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 330 },
			["Rjp|nightslayer"] = { 5, 1, 8, 331 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 500 },
			["Tycat|nightslayer"] = { 4, 0, 0, 514 },
			["Largefish|nightslayer"] = { 1, 2, 18, 280 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 438 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 460 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 430 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 430 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 460 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 271 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 132 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 128 },
			["Probear|nightslayer"] = { 5, 0, 5, 130 },
			["Showhan|nightslayer"] = { 5, 0, 0, 126 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 460 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 109 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 100 },
			["Restokind|nightslayer"] = { 12, 10, 20, 373 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 320 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 100 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 100 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 257 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 200 },
			["Coneily|nightslayer"] = { 7, 3, 27, 390 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 362 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 100 },
			["Jackular|nightslayer"] = { 3, 7, -42, 227 },
			["Probear|nightslayer"] = { 6, 4, 44, 130 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 280 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 390 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 373 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 460 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 330 },
			["Rjp|nightslayer"] = { 5, 1, 8, 331 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 500 },
			["Tycat|nightslayer"] = { 4, 0, 0, 514 },
			["Largefish|nightslayer"] = { 1, 2, 18, 280 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 438 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 460 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 430 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 430 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 460 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 271 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 132 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 128 },
			["Probear|nightslayer"] = { 5, 0, 5, 130 },
			["Showhan|nightslayer"] = { 5, 0, 0, 126 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 460 },
		},
	},
}

