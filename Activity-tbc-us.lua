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
	built = 1795546714,
	builtText = "2026-11-24 01:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 580 },
			["Ryanin|dreamscythe"] = { 12, 6, -21, 590 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 580 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 680 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 580 },
			["Jackular|nightslayer"] = { 3, 7, -42, 707 },
			["Probear|nightslayer"] = { 1, 3, -3, 611 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 580 },
		},
		[3] = {
			["Druidtommy|nightslayer"] = { 5, 0, 7, 612 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 608 },
			["Probear|nightslayer"] = { 5, 0, 5, 611 },
			["Showhan|nightslayer"] = { 5, 0, 0, 606 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 590 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 580 },
			["Restokind|nightslayer"] = { 12, 10, 20, 853 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 800 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 580 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 580 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 737 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 680 },
			["Coneily|nightslayer"] = { 7, 3, 27, 870 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 842 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 580 },
			["Jackular|nightslayer"] = { 3, 7, -42, 707 },
			["Probear|nightslayer"] = { 6, 4, 44, 611 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 760 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 870 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 853 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 940 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 810 },
			["Rjp|nightslayer"] = { 5, 1, 8, 811 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 980 },
			["Tycat|nightslayer"] = { 4, 0, 0, 994 },
			["Largefish|nightslayer"] = { 1, 2, 18, 760 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 918 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 940 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 910 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 910 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 940 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 751 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 612 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 608 },
			["Probear|nightslayer"] = { 5, 0, 5, 611 },
			["Showhan|nightslayer"] = { 5, 0, 0, 606 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 940 },
		},
	},
}

