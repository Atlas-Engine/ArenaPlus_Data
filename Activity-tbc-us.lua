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
	built = 1795528712,
	builtText = "2026-11-24 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 0, 9, -139, 29 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 1, 9, -130, 29 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 280 },
			["Ryanin|dreamscythe"] = { 12, 6, -21, 289 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 280 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 280 },
			["Maigaysiao|nightslayer"] = { 1, 9, -130, 29 },
			["Probear|nightslayer"] = { 1, 3, -3, 310 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 280 },
		},
		[3] = {
			["Druidtommy|nightslayer"] = { 5, 0, 7, 312 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 308 },
			["Probear|nightslayer"] = { 5, 0, 5, 310 },
			["Showhan|nightslayer"] = { 5, 0, 0, 306 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 289 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 280 },
			["Restokind|nightslayer"] = { 12, 10, 20, 553 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 500 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 280 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 280 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 437 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 380 },
			["Coneily|nightslayer"] = { 7, 3, 27, 570 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 542 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 280 },
			["Jackular|nightslayer"] = { 3, 7, -42, 407 },
			["Maigaysiao|nightslayer"] = { 1, 9, -130, 29 },
			["Probear|nightslayer"] = { 6, 4, 44, 310 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 460 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 570 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 553 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 640 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 510 },
			["Rjp|nightslayer"] = { 5, 1, 8, 511 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 680 },
			["Tycat|nightslayer"] = { 4, 0, 0, 694 },
			["Largefish|nightslayer"] = { 1, 2, 18, 460 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 618 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 640 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 610 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 610 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 640 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 451 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 312 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 308 },
			["Probear|nightslayer"] = { 5, 0, 5, 310 },
			["Showhan|nightslayer"] = { 5, 0, 0, 306 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 640 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 289 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 280 },
			["Restokind|nightslayer"] = { 12, 10, 20, 553 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 500 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 280 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 280 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 437 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 380 },
			["Coneily|nightslayer"] = { 7, 3, 27, 570 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 542 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 280 },
			["Jackular|nightslayer"] = { 3, 7, -42, 407 },
			["Maigaysiao|nightslayer"] = { 1, 9, -130, 29 },
			["Probear|nightslayer"] = { 6, 4, 44, 310 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 460 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 570 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 553 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 640 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 510 },
			["Rjp|nightslayer"] = { 5, 1, 8, 511 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 680 },
			["Tycat|nightslayer"] = { 4, 0, 0, 694 },
			["Largefish|nightslayer"] = { 1, 2, 18, 460 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 618 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 640 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 610 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 610 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 640 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 451 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 312 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 308 },
			["Probear|nightslayer"] = { 5, 0, 5, 310 },
			["Showhan|nightslayer"] = { 5, 0, 0, 306 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 640 },
		},
	},
}

