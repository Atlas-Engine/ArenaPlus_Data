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
	built = 1794085114,
	builtText = "2026-11-07 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 286 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 358 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 287 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 358 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 310 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 718 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 718 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 286 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 287 },
			["Aversor|nightslayer"] = { 2, 2, -17, 718 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 358 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 503 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 358 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 520 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 310 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 753 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 718 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 914 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 913 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 857 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 858 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 929 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 877 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 847 },
			["Leien|nightslayer"] = { 10, 5, 38, 846 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 947 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 949 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 898 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 898 },
			["Exthief|nightslayer"] = { 3, 8, -43, 898 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 898 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 898 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 718 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 733 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 961 },
			["Trû|nightslayer"] = { 4, 4, 10, 909 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 969 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 1009 },
			["Swky|nightslayer"] = { 3, 3, 12, 1043 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 1330 },
			["Mßison|nightslayer"] = { 2, 3, -10, 1330 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 286 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 287 },
			["Aversor|nightslayer"] = { 2, 2, -17, 718 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 807 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 358 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 503 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 358 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 520 },
			["Hybro|nightslayer"] = { 1, 1, -3, 909 },
			["Arpx|nightslayer"] = { 1, 0, 1, 1175 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 1115 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 1111 },
			["Yodead|nightslayer"] = { 1, 0, 2, 1161 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 1041 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 310 },
		},
	},
}

