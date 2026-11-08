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
	built = 1794142719,
	builtText = "2026-11-08 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Saplinq|nightslayer"] = { 6, 5, -8, 293 },
			["Jodaldal|nightslayer"] = { 6, 2, 38, 328 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 469 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 469 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 328 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 368 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 530 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 531 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 389 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 389 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 293 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 571 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 475 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 476 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 474 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 478 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 598 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 598 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 467 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 470 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 537 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 404 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 537 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 570 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 458 },
			["Leien|nightslayer"] = { 0, 1, -10, 458 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 536 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 537 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 469 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 469 },
			["Jodaldal|nightslayer"] = { 20, 9, 99, 328 },
			["Sunnyslow|nightslayer"] = { 20, 9, 10, 368 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 530 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 531 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 389 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 389 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 293 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 571 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 475 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 476 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 598 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 474 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 478 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 598 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 467 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 470 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 537 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 404 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 537 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 570 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 1246 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 935 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 1247 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 458 },
			["Leien|nightslayer"] = { 0, 1, -10, 458 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 536 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 537 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 1270 },
		},
	},
}

