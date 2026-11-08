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
	built = 1794128314,
	builtText = "2026-11-08 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Saplinq|nightslayer"] = { 6, 5, -8, 53 },
			["Missxo|nightslayer"] = { 2, 0, 22, 52 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 17, 9, 81, 88 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 128 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 149 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 149 },
			["Missxo|nightslayer"] = { 10, 8, 5, 52 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 53 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 229 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 229 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 88 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 128 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 290 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 291 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 149 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 149 },
			["Missxo|nightslayer"] = { 10, 8, 5, 52 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 53 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 331 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 235 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 236 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 234 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 238 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 358 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 358 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 227 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 230 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 297 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 297 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 330 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 218 },
			["Leien|nightslayer"] = { 0, 1, -10, 218 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 295 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 297 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 229 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 229 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 88 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 128 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 290 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 291 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 149 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 149 },
			["Missxo|nightslayer"] = { 10, 8, 5, 52 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 53 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 331 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 235 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 236 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 358 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 234 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 238 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 358 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 227 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 230 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 297 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 297 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 330 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 695 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 218 },
			["Leien|nightslayer"] = { 0, 1, -10, 218 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 295 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 297 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 229 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 229 },
			["Jingjingbaby|nightslayer"] = { 14, 15, 48, 297 },
			["Jodaldal|nightslayer"] = { 20, 9, 99, 88 },
			["Sunnyslow|nightslayer"] = { 20, 9, 10, 128 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 290 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 291 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 149 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 149 },
			["Missxo|nightslayer"] = { 12, 9, 15, 52 },
			["Saplinq|nightslayer"] = { 12, 9, 7, 53 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 331 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 235 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 236 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 358 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 234 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 238 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 358 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 1438 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 227 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 230 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 297 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 330 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 1006 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 695 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 1007 },
			["Aversor|nightslayer"] = { 2, 2, -17, 1438 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 1240 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 218 },
			["Leien|nightslayer"] = { 0, 1, -10, 218 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 295 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 297 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 1030 },
		},
	},
}

