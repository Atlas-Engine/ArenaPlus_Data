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
	built = 1794095913,
	builtText = "2026-11-07 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 2, 3, -35, 155 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 178 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 2, 3, -35, 155 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 178 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 466 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 155 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 467 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 178 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 538 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 683 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 538 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 700 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 490 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 933 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 898 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 1094 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 1093 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 1037 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 1038 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 1109 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 1056 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 1027 },
			["Leien|nightslayer"] = { 10, 5, 38, 1026 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 1127 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 1129 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 1078 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 1078 },
			["Exthief|nightslayer"] = { 3, 8, -43, 1078 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 1078 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 1078 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 898 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 913 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 1141 },
			["Trû|nightslayer"] = { 4, 4, 10, 1089 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 1149 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 466 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 155 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 467 },
			["Aversor|nightslayer"] = { 2, 2, -17, 898 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 987 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 178 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 538 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 683 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 538 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 700 },
			["Hybro|nightslayer"] = { 1, 1, -3, 1089 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 1189 },
			["Arpx|nightslayer"] = { 1, 0, 1, 1355 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 1295 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 1291 },
			["Swky|nightslayer"] = { 0, 1, -4, 1223 },
			["Yodead|nightslayer"] = { 1, 0, 2, 1341 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 1221 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 490 },
		},
	},
}

