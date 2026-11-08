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
	built = 1794099512,
	builtText = "2026-11-07 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 1, 1, -7, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 1, 1, -7, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 2, 5, 58 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 215 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 2, 5, 58 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 526 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 215 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 527 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 598 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 598 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 550 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 993 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 958 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 1154 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 1153 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 1097 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 1097 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 1169 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 1116 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 1087 },
			["Leien|nightslayer"] = { 10, 5, 38, 1086 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 1187 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 1189 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 1138 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 1138 },
			["Exthief|nightslayer"] = { 3, 8, -43, 1138 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 1138 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 1138 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 958 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 973 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 1201 },
			["Trû|nightslayer"] = { 4, 4, 10, 1149 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 1208 },
			["Gzlol|dreamscythe"] = { 4, 2, 5, 58 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 526 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 215 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 527 },
			["Aversor|nightslayer"] = { 2, 2, -17, 958 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 1047 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 598 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 743 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 598 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 760 },
			["Hybro|nightslayer"] = { 1, 1, -3, 1149 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 1249 },
			["Arpx|nightslayer"] = { 1, 0, 1, 1415 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 1355 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 1351 },
			["Swky|nightslayer"] = { 0, 1, -4, 1283 },
			["Yodead|nightslayer"] = { 1, 0, 2, 1401 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 1281 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 550 },
		},
	},
}

