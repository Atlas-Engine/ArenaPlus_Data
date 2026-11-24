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
	built = 1795521514,
	builtText = "2026-11-24 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 12, 6, -21, 170 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 160 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 160 },
			["Couchman|dreamscythe"] = { 3, 0, 16, 160 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 160 },
			["Ryanin|dreamscythe"] = { 21, 10, 43, 170 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 160 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 160 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 317 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 260 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 160 },
			["Jackular|nightslayer"] = { 3, 7, -42, 287 },
			["Probear|nightslayer"] = { 6, 4, 44, 191 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 340 },
			["Largefish|nightslayer"] = { 1, 2, 18, 340 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 331 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 192 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 188 },
			["Probear|nightslayer"] = { 5, 0, 5, 191 },
			["Showhan|nightslayer"] = { 5, 0, 0, 186 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 170 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 160 },
			["Restokind|nightslayer"] = { 12, 10, 20, 433 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 380 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 160 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 160 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 317 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 260 },
			["Coneily|nightslayer"] = { 7, 3, 27, 450 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 422 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 160 },
			["Jackular|nightslayer"] = { 3, 7, -42, 287 },
			["Probear|nightslayer"] = { 6, 4, 44, 191 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 340 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 450 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 433 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 520 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 390 },
			["Rjp|nightslayer"] = { 5, 1, 8, 391 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 560 },
			["Tycat|nightslayer"] = { 4, 0, 0, 574 },
			["Largefish|nightslayer"] = { 1, 2, 18, 340 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 498 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 520 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 490 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 490 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 520 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 331 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 192 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 188 },
			["Probear|nightslayer"] = { 5, 0, 5, 191 },
			["Showhan|nightslayer"] = { 5, 0, 0, 186 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 520 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 170 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 160 },
			["Restokind|nightslayer"] = { 12, 10, 20, 433 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 380 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 160 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 160 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 317 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 260 },
			["Coneily|nightslayer"] = { 7, 3, 27, 450 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 422 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 160 },
			["Jackular|nightslayer"] = { 3, 7, -42, 287 },
			["Probear|nightslayer"] = { 6, 4, 44, 191 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 340 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 450 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 433 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 520 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 390 },
			["Rjp|nightslayer"] = { 5, 1, 8, 391 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 560 },
			["Tycat|nightslayer"] = { 4, 0, 0, 574 },
			["Largefish|nightslayer"] = { 1, 2, 18, 340 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 498 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 520 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 490 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 490 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 520 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 331 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 192 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 188 },
			["Probear|nightslayer"] = { 5, 0, 5, 191 },
			["Showhan|nightslayer"] = { 5, 0, 0, 186 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 520 },
		},
	},
}

