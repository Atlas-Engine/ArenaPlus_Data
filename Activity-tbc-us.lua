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
	built = 1794131913,
	builtText = "2026-11-08 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Saplinq|nightslayer"] = { 6, 5, -8, 113 },
			["Jodaldal|nightslayer"] = { 6, 2, 38, 148 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 17, 9, 81, 148 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 188 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 209 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 209 },
			["Shigekazu|nightslayer"] = { 9, 13, -44, 289 },
			["Wílleh|nightslayer"] = { 9, 13, -44, 289 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 113 },
			["Bohagons|nightslayer"] = { 2, 11, -85, 295 },
			["Chugzila|nightslayer"] = { 2, 11, -85, 296 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 294 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 298 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 287 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 290 },
			["Ragequitqtt|nightslayer"] = { 6, 1, 41, 350 },
			["ßraxtør|nightslayer"] = { 6, 1, 41, 351 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 223 },
			["Allenstout|nightslayer"] = { 2, 2, 19, 357 },
			["Jingjingbaby|nightslayer"] = { 2, 2, 19, 357 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 278 },
			["Leien|nightslayer"] = { 0, 1, -10, 278 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 355 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 357 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 289 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 289 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 148 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 188 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 350 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 351 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 209 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 209 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 113 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 391 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 295 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 296 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 294 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 298 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 418 },
			["Gzlol|dreamscythe"] = { 4, 6, -56, 418 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 287 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 290 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 357 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 223 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 357 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 390 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 278 },
			["Leien|nightslayer"] = { 0, 1, -10, 278 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 355 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 357 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 289 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 289 },
			["Jodaldal|nightslayer"] = { 20, 9, 99, 148 },
			["Sunnyslow|nightslayer"] = { 20, 9, 10, 188 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 350 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 351 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 209 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 209 },
			["Saplinq|nightslayer"] = { 12, 9, 7, 113 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 391 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 295 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 296 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 418 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 294 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 298 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 418 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 287 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 290 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 357 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 223 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 357 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 390 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 1066 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 755 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 1067 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 1300 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 278 },
			["Leien|nightslayer"] = { 0, 1, -10, 278 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 355 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 357 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 1090 },
		},
	},
}

