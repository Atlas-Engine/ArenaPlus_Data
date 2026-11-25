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
	built = 1795564713,
	builtText = "2026-11-24 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 1, 1, -19, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 1, 1, -19, 31 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 1, 1, -19, 31 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 1, 1, -19, 31 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 889 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 880 },
			["Restokind|nightslayer"] = { 12, 10, 20, 1153 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 1100 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 880 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 880 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 1037 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 980 },
			["Coneily|nightslayer"] = { 7, 3, 27, 1170 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 1142 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 880 },
			["Jackular|nightslayer"] = { 3, 7, -42, 1007 },
			["Probear|nightslayer"] = { 6, 4, 44, 910 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 1060 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 1170 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 1153 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 1240 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 1110 },
			["Rjp|nightslayer"] = { 5, 1, 8, 1111 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 1280 },
			["Tycat|nightslayer"] = { 4, 0, 0, 1294 },
			["Largefish|nightslayer"] = { 1, 2, 18, 1060 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 1218 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 1240 },
			["Jamzki|nightslayer"] = { 1, 1, -19, 31 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 1210 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 1210 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 1240 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 1051 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 912 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 908 },
			["Probear|nightslayer"] = { 5, 0, 5, 910 },
			["Showhan|nightslayer"] = { 5, 0, 0, 906 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 1240 },
		},
	},
}

