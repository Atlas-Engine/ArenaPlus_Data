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
	built = 1795553914,
	builtText = "2026-11-24 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 12, 6, -21, 710 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 700 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 700 },
			["Couchman|dreamscythe"] = { 3, 0, 16, 700 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 700 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 710 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 700 },
			["Restokind|nightslayer"] = { 12, 10, 20, 973 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 920 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 700 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 700 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 857 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 800 },
			["Coneily|nightslayer"] = { 7, 3, 27, 990 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 962 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 700 },
			["Jackular|nightslayer"] = { 3, 7, -42, 827 },
			["Probear|nightslayer"] = { 6, 4, 44, 731 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 880 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 990 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 973 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 1060 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 930 },
			["Rjp|nightslayer"] = { 5, 1, 8, 931 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 1100 },
			["Tycat|nightslayer"] = { 4, 0, 0, 1114 },
			["Largefish|nightslayer"] = { 1, 2, 18, 880 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 1038 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 1060 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 1030 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 1030 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 1060 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 871 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 732 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 728 },
			["Probear|nightslayer"] = { 5, 0, 5, 731 },
			["Showhan|nightslayer"] = { 5, 0, 0, 726 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 1060 },
		},
	},
}

