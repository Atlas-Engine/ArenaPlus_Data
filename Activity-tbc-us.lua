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
	built = 1795510714,
	builtText = "2026-11-24 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Probear|nightslayer"] = { 1, 3, -3, 11 },
		},
		[3] = {
			["Druidtommy|nightslayer"] = { 5, 0, 7, 12 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 8 },
			["Probear|nightslayer"] = { 5, 0, 5, 11 },
			["Showhan|nightslayer"] = { 5, 0, 0, 6 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 137 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 160 },
			["Ryanin|dreamscythe"] = { 9, 4, 64, 160 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 80 },
			["Jackular|nightslayer"] = { 3, 7, -42, 107 },
			["Probear|nightslayer"] = { 6, 4, 44, 11 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 160 },
			["Largefish|nightslayer"] = { 1, 2, 18, 160 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 160 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 151 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 12 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 8 },
			["Probear|nightslayer"] = { 5, 0, 5, 11 },
			["Showhan|nightslayer"] = { 5, 0, 0, 6 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 17, 6, 73, 160 },
			["Restokind|nightslayer"] = { 12, 10, 20, 253 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 200 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 137 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 160 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 80 },
			["Coneily|nightslayer"] = { 7, 3, 27, 270 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 242 },
			["Jackular|nightslayer"] = { 3, 7, -42, 107 },
			["Probear|nightslayer"] = { 6, 4, 44, 11 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 160 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 270 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 253 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 340 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 210 },
			["Rjp|nightslayer"] = { 5, 1, 8, 211 },
			["Largefish|nightslayer"] = { 1, 2, 18, 160 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 318 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 340 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 160 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 310 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 310 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 340 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 151 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 12 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 8 },
			["Probear|nightslayer"] = { 5, 0, 5, 11 },
			["Showhan|nightslayer"] = { 5, 0, 0, 6 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 340 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 17, 6, 73, 160 },
			["Restokind|nightslayer"] = { 12, 10, 20, 253 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 200 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 137 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 160 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 80 },
			["Coneily|nightslayer"] = { 7, 3, 27, 270 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 242 },
			["Jackular|nightslayer"] = { 3, 7, -42, 107 },
			["Probear|nightslayer"] = { 6, 4, 44, 11 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 160 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 270 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 253 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 340 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 210 },
			["Rjp|nightslayer"] = { 5, 1, 8, 211 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 380 },
			["Tycat|nightslayer"] = { 4, 0, 0, 394 },
			["Largefish|nightslayer"] = { 1, 2, 18, 160 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 318 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 340 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 160 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 310 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 310 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 340 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 151 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 12 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 8 },
			["Probear|nightslayer"] = { 5, 0, 5, 11 },
			["Showhan|nightslayer"] = { 5, 0, 0, 6 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 340 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 17, 6, 73, 160 },
			["Restokind|nightslayer"] = { 12, 10, 20, 253 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 200 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 137 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 160 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 80 },
			["Coneily|nightslayer"] = { 7, 3, 27, 270 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 242 },
			["Jackular|nightslayer"] = { 3, 7, -42, 107 },
			["Probear|nightslayer"] = { 6, 4, 44, 11 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 160 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 270 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 253 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 340 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 210 },
			["Rjp|nightslayer"] = { 5, 1, 8, 211 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 380 },
			["Tycat|nightslayer"] = { 4, 0, 0, 394 },
			["Largefish|nightslayer"] = { 1, 2, 18, 160 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 318 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 340 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 160 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 310 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 310 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 340 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 151 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 12 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 8 },
			["Probear|nightslayer"] = { 5, 0, 5, 11 },
			["Showhan|nightslayer"] = { 5, 0, 0, 6 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 340 },
		},
	},
}

