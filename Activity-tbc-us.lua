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
	built = 1794124713,
	builtText = "2026-11-08 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Missxo|nightslayer"] = { 4, 5, -27, 54 },
			["Jodaldal|nightslayer"] = { 6, 2, 38, 28 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 17, 9, 81, 28 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 68 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 89 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 89 },
			["Shigekazu|nightslayer"] = { 9, 13, -44, 169 },
			["Wílleh|nightslayer"] = { 9, 13, -44, 169 },
			["Missxo|nightslayer"] = { 8, 8, -17, 54 },
			["Bohagons|nightslayer"] = { 2, 11, -85, 175 },
			["Chugzila|nightslayer"] = { 2, 11, -85, 176 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 174 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 178 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 167 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 170 },
			["Saplinq|nightslayer"] = { 4, 3, 7, 118 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 158 },
			["Leien|nightslayer"] = { 0, 1, -10, 158 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 169 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 169 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 28 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 68 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 230 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 231 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 89 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 89 },
			["Missxo|nightslayer"] = { 8, 8, -17, 54 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 271 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 175 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 176 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 174 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 178 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 298 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 298 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 167 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 170 },
			["Saplinq|nightslayer"] = { 4, 3, 7, 118 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 237 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 237 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 270 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 158 },
			["Leien|nightslayer"] = { 0, 1, -10, 158 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 235 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 237 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 169 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 169 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 28 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 68 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 230 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 231 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 89 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 89 },
			["Missxo|nightslayer"] = { 8, 8, -17, 54 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 271 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 175 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 176 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 298 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 174 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 178 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 298 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 167 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 170 },
			["Saplinq|nightslayer"] = { 4, 3, 7, 118 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 237 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 237 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 270 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 635 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 158 },
			["Leien|nightslayer"] = { 0, 1, -10, 158 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 235 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 237 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 169 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 169 },
			["Allenstout|nightslayer"] = { 14, 15, 48, 237 },
			["Jingjingbaby|nightslayer"] = { 14, 15, 48, 237 },
			["Jodaldal|nightslayer"] = { 20, 9, 99, 28 },
			["Sunnyslow|nightslayer"] = { 20, 9, 10, 68 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 230 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 231 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 89 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 89 },
			["Missxo|nightslayer"] = { 10, 9, -7, 54 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 271 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 175 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 176 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 298 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 174 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 178 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 298 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 1378 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 1393 },
			["Saplinq|nightslayer"] = { 6, 4, 15, 118 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 167 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 170 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 270 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 946 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 635 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 947 },
			["Aversor|nightslayer"] = { 2, 2, -17, 1378 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 1180 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 158 },
			["Leien|nightslayer"] = { 0, 1, -10, 158 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 235 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 237 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 970 },
		},
	},
}

