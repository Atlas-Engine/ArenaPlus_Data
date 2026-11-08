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
	built = 1794121116,
	builtText = "2026-11-08 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 8 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 29 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 29 },
			["Jodaldal|nightslayer"] = { 11, 7, 43, 58 },
			["Missxo|nightslayer"] = { 4, 3, 10, 58 },
			["Saplinq|nightslayer"] = { 4, 3, 7, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 8 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 29 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 29 },
			["Shigekazu|nightslayer"] = { 9, 13, -44, 109 },
			["Wílleh|nightslayer"] = { 9, 13, -44, 109 },
			["Jodaldal|nightslayer"] = { 11, 7, 43, 58 },
			["Bohagons|nightslayer"] = { 2, 11, -85, 115 },
			["Chugzila|nightslayer"] = { 2, 11, -85, 116 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 114 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 118 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 107 },
			["Missxo|nightslayer"] = { 4, 3, 10, 58 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 110 },
			["Ragequitqtt|nightslayer"] = { 6, 1, 41, 170 },
			["Saplinq|nightslayer"] = { 4, 3, 7, 58 },
			["ßraxtør|nightslayer"] = { 6, 1, 41, 171 },
			["Allenstout|nightslayer"] = { 2, 2, 19, 177 },
			["Jingjingbaby|nightslayer"] = { 2, 2, 19, 177 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 98 },
			["Leien|nightslayer"] = { 0, 1, -10, 98 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 175 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 177 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 109 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 109 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 8 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 170 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 171 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 29 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 29 },
			["Jodaldal|nightslayer"] = { 11, 7, 43, 58 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 211 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 115 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 116 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 114 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 118 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 238 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 238 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 107 },
			["Missxo|nightslayer"] = { 4, 3, 10, 58 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 110 },
			["Saplinq|nightslayer"] = { 4, 3, 7, 58 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 177 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 177 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 210 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 98 },
			["Leien|nightslayer"] = { 0, 1, -10, 98 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 175 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 177 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 109 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 109 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 8 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 170 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 171 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 29 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 29 },
			["Jodaldal|nightslayer"] = { 11, 7, 43, 58 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 211 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 115 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 116 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 238 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 114 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 118 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 238 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 107 },
			["Missxo|nightslayer"] = { 4, 3, 10, 58 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 110 },
			["Saplinq|nightslayer"] = { 4, 3, 7, 58 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 177 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 177 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 210 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 575 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 98 },
			["Leien|nightslayer"] = { 0, 1, -10, 98 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 175 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 177 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 109 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 109 },
			["Allenstout|nightslayer"] = { 14, 15, 48, 177 },
			["Jingjingbaby|nightslayer"] = { 14, 15, 48, 177 },
			["Sunnyslow|nightslayer"] = { 20, 9, 10, 8 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 170 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 171 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 29 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 29 },
			["Jodaldal|nightslayer"] = { 14, 7, 61, 58 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 211 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 115 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 116 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 238 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 114 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 118 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 238 },
			["Missxo|nightslayer"] = { 6, 4, 20, 58 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 1318 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 1333 },
			["Saplinq|nightslayer"] = { 6, 4, 15, 58 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 107 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 110 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 210 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 886 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 575 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 887 },
			["Aversor|nightslayer"] = { 2, 2, -17, 1318 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 1407 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 1120 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 98 },
			["Leien|nightslayer"] = { 0, 1, -10, 98 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 175 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 177 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 910 },
		},
	},
}

