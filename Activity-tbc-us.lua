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
	built = 1794117513,
	builtText = "2026-11-08 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 9, 13, -44, 49 },
			["Wílleh|nightslayer"] = { 9, 13, -44, 49 },
			["Bohagons|nightslayer"] = { 2, 11, -85, 55 },
			["Chugzila|nightslayer"] = { 2, 11, -85, 56 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 54 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 58 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 47 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 50 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 38 },
			["Leien|nightslayer"] = { 0, 1, -10, 38 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 49 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 49 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 110 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 111 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 151 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 55 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 56 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 54 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 58 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 178 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 178 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 47 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 50 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 117 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 117 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 150 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 38 },
			["Leien|nightslayer"] = { 0, 1, -10, 38 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 115 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 117 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 49 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 49 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 110 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 111 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 151 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 55 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 56 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 54 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 58 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 178 },
			["Gzlol|dreamscythe"] = { 4, 6, -56, 178 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 47 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 50 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 117 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 117 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 150 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 38 },
			["Leien|nightslayer"] = { 0, 1, -10, 38 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 115 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 117 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 49 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 49 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 110 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 111 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 151 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 55 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 56 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 178 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 54 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 58 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 178 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 47 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 50 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 117 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 117 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 150 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 515 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 38 },
			["Leien|nightslayer"] = { 0, 1, -10, 38 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 115 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 117 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 32, -75, 49 },
			["Wílleh|nightslayer"] = { 29, 32, -75, 49 },
			["Jingjingbaby|nightslayer"] = { 24, 24, 60, 117 },
			["Allenstout|nightslayer"] = { 21, 18, 94, 117 },
			["Bohagons|nightslayer"] = { 10, 15, -68, 55 },
			["Chugzila|nightslayer"] = { 10, 15, -68, 56 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 110 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 111 },
			["Feldargon|nightslayer"] = { 10, 6, 43, 38 },
			["Leien|nightslayer"] = { 10, 6, 28, 38 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 151 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 178 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 54 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 58 },
			["Exthief|nightslayer"] = { 3, 8, -43, 1438 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 1438 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 1416 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 178 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 1438 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 1258 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 1273 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 47 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 50 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 150 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 826 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 515 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 827 },
			["Aversor|nightslayer"] = { 2, 2, -17, 1258 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 1347 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 898 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 1043 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 898 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 1060 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 115 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 117 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 850 },
		},
	},
}

