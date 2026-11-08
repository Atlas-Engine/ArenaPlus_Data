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
	built = 1794149917,
	builtText = "2026-11-08 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 589 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 589 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 448 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 488 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 650 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 651 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 509 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 509 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 413 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 691 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 595 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 596 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 594 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 598 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 718 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 718 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 587 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 590 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 657 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 524 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 657 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 690 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 578 },
			["Leien|nightslayer"] = { 0, 1, -10, 578 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 655 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 657 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 589 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 589 },
			["Jodaldal|nightslayer"] = { 20, 9, 99, 448 },
			["Sunnyslow|nightslayer"] = { 20, 9, 10, 488 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 650 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 651 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 509 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 509 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 413 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 691 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 595 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 596 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 718 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 594 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 598 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 718 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 587 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 590 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 657 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 524 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 657 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 690 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 1366 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 1055 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 1367 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 578 },
			["Leien|nightslayer"] = { 0, 1, -10, 578 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 655 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 657 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 1390 },
		},
	},
}

