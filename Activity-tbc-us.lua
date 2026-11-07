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
	built = 1794092316,
	builtText = "2026-11-07 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 2, 3, -35, 95 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 118 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 2, 3, -35, 95 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 118 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 406 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 95 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 407 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 118 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 478 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 623 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 478 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 640 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 430 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 873 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 838 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 1034 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 1033 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 977 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 978 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 1049 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 997 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 967 },
			["Leien|nightslayer"] = { 10, 5, 38, 966 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 1067 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 1069 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 1018 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 1018 },
			["Exthief|nightslayer"] = { 3, 8, -43, 1018 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 1018 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 1018 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 838 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 853 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 1081 },
			["Trû|nightslayer"] = { 4, 4, 10, 1029 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 1089 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 1129 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 406 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 95 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 407 },
			["Aversor|nightslayer"] = { 2, 2, -17, 838 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 927 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 118 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 478 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 623 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 478 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 640 },
			["Hybro|nightslayer"] = { 1, 1, -3, 1029 },
			["Arpx|nightslayer"] = { 1, 0, 1, 1295 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 1235 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 1232 },
			["Swky|nightslayer"] = { 0, 1, -4, 1163 },
			["Yodead|nightslayer"] = { 1, 0, 2, 1281 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 1161 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 430 },
		},
	},
}

