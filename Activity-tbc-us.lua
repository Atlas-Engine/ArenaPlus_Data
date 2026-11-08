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
	built = 1794139115,
	builtText = "2026-11-08 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 17, 9, 81, 268 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 308 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 329 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 329 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 233 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 344 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 409 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 409 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 268 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 308 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 470 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 471 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 329 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 329 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 233 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 511 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 415 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 416 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 414 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 418 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 538 },
			["Gzlol|dreamscythe"] = { 4, 6, -56, 538 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 407 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 410 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 477 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 344 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 477 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 510 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 398 },
			["Leien|nightslayer"] = { 0, 1, -10, 398 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 475 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 477 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 409 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 409 },
			["Jodaldal|nightslayer"] = { 20, 9, 99, 268 },
			["Sunnyslow|nightslayer"] = { 20, 9, 10, 308 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 470 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 471 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 329 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 329 },
			["Saplinq|nightslayer"] = { 12, 9, 7, 233 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 511 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 415 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 416 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 538 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 414 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 418 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 538 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 407 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 410 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 477 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 344 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 477 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 510 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 1186 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 875 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 1187 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 1420 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 398 },
			["Leien|nightslayer"] = { 0, 1, -10, 398 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 475 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 477 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 1210 },
		},
	},
}

