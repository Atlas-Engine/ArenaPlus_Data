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
	built = 1794088713,
	builtText = "2026-11-07 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 2, 3, -35, 35 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 2, 3, -35, 35 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 2, 3, -35, 35 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 58 },
			["Namkijun|nightslayer"] = { 2, 1, 0, 346 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 347 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 346 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 35 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 347 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 58 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 418 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 563 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 418 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 580 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 370 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 813 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 778 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 974 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 973 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 917 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 918 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 989 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 936 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 907 },
			["Leien|nightslayer"] = { 10, 5, 38, 906 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 1007 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 1009 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 958 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 958 },
			["Exthief|nightslayer"] = { 3, 8, -43, 958 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 958 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 958 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 778 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 793 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 1021 },
			["Trû|nightslayer"] = { 4, 4, 10, 969 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 1029 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 1069 },
			["Swky|nightslayer"] = { 3, 3, 12, 1103 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 1390 },
			["Mßison|nightslayer"] = { 2, 3, -10, 1390 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 346 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 35 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 347 },
			["Aversor|nightslayer"] = { 2, 2, -17, 778 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 867 },
			["Gzlol|dreamscythe"] = { 3, 1, 12, 58 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 418 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 563 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 418 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 580 },
			["Hybro|nightslayer"] = { 1, 1, -3, 969 },
			["Arpx|nightslayer"] = { 1, 0, 1, 1235 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 1175 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 1171 },
			["Yodead|nightslayer"] = { 1, 0, 2, 1221 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 1101 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 370 },
		},
	},
}

