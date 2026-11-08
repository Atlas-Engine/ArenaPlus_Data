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
	built = 1794103112,
	builtText = "2026-11-07 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 1, 1, -7, 118 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 2, 5, 118 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 275 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 2, 5, 118 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 586 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 275 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 658 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 587 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 658 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 610 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 1053 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 1018 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 1214 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 1213 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 1157 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 1157 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 1229 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 1147 },
			["Leien|nightslayer"] = { 10, 5, 38, 1146 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 1247 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 1249 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 1198 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 1198 },
			["Exthief|nightslayer"] = { 3, 8, -43, 1198 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 1198 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 1176 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 1198 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 1018 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 1033 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 1261 },
			["Trû|nightslayer"] = { 4, 4, 10, 1209 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 1268 },
			["Gzlol|dreamscythe"] = { 4, 2, 5, 118 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 586 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 275 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 587 },
			["Aversor|nightslayer"] = { 2, 2, -17, 1018 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 1107 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 658 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 803 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 658 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 820 },
			["Hybro|nightslayer"] = { 1, 1, -3, 1209 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 1309 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 1415 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 1411 },
			["Swky|nightslayer"] = { 0, 1, -4, 1343 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 1341 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 610 },
		},
	},
}

