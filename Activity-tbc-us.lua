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
	built = 1795550314,
	builtText = "2026-11-24 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 640 },
			["Ryanin|dreamscythe"] = { 12, 6, -21, 650 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 640 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 640 },
			["Probear|nightslayer"] = { 1, 3, -3, 671 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 640 },
		},
		[3] = {
			["Druidtommy|nightslayer"] = { 5, 0, 7, 672 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 668 },
			["Probear|nightslayer"] = { 5, 0, 5, 671 },
			["Showhan|nightslayer"] = { 5, 0, 0, 666 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 650 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 640 },
			["Restokind|nightslayer"] = { 12, 10, 20, 913 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 860 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 640 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 640 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 797 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 740 },
			["Coneily|nightslayer"] = { 7, 3, 27, 930 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 902 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 640 },
			["Jackular|nightslayer"] = { 3, 7, -42, 767 },
			["Probear|nightslayer"] = { 6, 4, 44, 671 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 820 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 930 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 913 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 1000 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 870 },
			["Rjp|nightslayer"] = { 5, 1, 8, 871 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 1040 },
			["Tycat|nightslayer"] = { 4, 0, 0, 1054 },
			["Largefish|nightslayer"] = { 1, 2, 18, 820 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 978 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 1000 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 970 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 970 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 1000 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 811 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 672 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 668 },
			["Probear|nightslayer"] = { 5, 0, 5, 671 },
			["Showhan|nightslayer"] = { 5, 0, 0, 666 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 1000 },
		},
	},
}

