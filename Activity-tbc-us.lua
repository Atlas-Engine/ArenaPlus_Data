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
	built = 1794106715,
	builtText = "2026-11-07 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 1, 1, -7, 178 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 2, 5, 178 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 335 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 2, 5, 178 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 646 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 335 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 718 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 647 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 718 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 670 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 1113 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 1078 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 1274 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 1273 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 1217 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 1218 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 1289 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 1207 },
			["Leien|nightslayer"] = { 10, 5, 38, 1206 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 1307 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 1309 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 1258 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 1258 },
			["Exthief|nightslayer"] = { 3, 8, -43, 1258 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 1258 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 1237 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 1258 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 1078 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 1093 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 1321 },
			["Trû|nightslayer"] = { 4, 4, 10, 1269 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 1329 },
			["Gzlol|dreamscythe"] = { 4, 2, 5, 178 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 646 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 335 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 647 },
			["Aversor|nightslayer"] = { 2, 2, -17, 1078 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 1167 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 718 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 863 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 718 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 880 },
			["Hybro|nightslayer"] = { 1, 1, -3, 1269 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 1369 },
			["Swky|nightslayer"] = { 0, 1, -4, 1403 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 1401 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 670 },
		},
	},
}

