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
	built = 1794135515,
	builtText = "2026-11-08 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Saplinq|nightslayer"] = { 6, 5, -8, 173 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 17, 9, 81, 208 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 248 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 269 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 269 },
			["Shigekazu|nightslayer"] = { 9, 13, -44, 349 },
			["Wílleh|nightslayer"] = { 9, 13, -44, 349 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 173 },
			["Bohagons|nightslayer"] = { 2, 11, -85, 355 },
			["Chugzila|nightslayer"] = { 2, 11, -85, 356 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 354 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 358 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 347 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 350 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 284 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 338 },
			["Leien|nightslayer"] = { 0, 1, -10, 338 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 349 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 349 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 208 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 248 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 410 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 411 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 269 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 269 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 173 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 451 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 355 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 356 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 354 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 358 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 478 },
			["Gzlol|dreamscythe"] = { 4, 6, -56, 478 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 347 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 350 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 417 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 284 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 417 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 450 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 338 },
			["Leien|nightslayer"] = { 0, 1, -10, 338 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 415 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 417 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 349 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 349 },
			["Jodaldal|nightslayer"] = { 20, 9, 99, 208 },
			["Sunnyslow|nightslayer"] = { 20, 9, 10, 248 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 410 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 411 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 269 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 269 },
			["Saplinq|nightslayer"] = { 12, 9, 7, 173 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 451 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 355 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 356 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 478 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 354 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 358 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 478 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 347 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 350 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 417 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 284 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 417 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 450 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 1126 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 815 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 1127 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 1360 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 338 },
			["Leien|nightslayer"] = { 0, 1, -10, 338 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 415 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 417 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 1150 },
		},
	},
}

