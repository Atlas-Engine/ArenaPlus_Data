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
	built = 1794153516,
	builtText = "2026-11-08 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 17, 9, 81, 508 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 548 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 569 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 569 },
			["Shigekazu|nightslayer"] = { 9, 13, -44, 649 },
			["Wílleh|nightslayer"] = { 9, 13, -44, 649 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 473 },
			["Bohagons|nightslayer"] = { 2, 11, -85, 655 },
			["Chugzila|nightslayer"] = { 2, 11, -85, 656 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 654 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 658 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 647 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 650 },
			["Ragequitqtt|nightslayer"] = { 6, 1, 41, 710 },
			["ßraxtør|nightslayer"] = { 6, 1, 41, 711 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 584 },
			["Allenstout|nightslayer"] = { 2, 2, 19, 717 },
			["Jingjingbaby|nightslayer"] = { 2, 2, 19, 717 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 638 },
			["Leien|nightslayer"] = { 0, 1, -10, 638 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 715 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 717 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 649 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 649 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 508 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 548 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 710 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 711 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 569 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 569 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 473 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 751 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 655 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 656 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 778 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 654 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 658 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 778 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 647 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 650 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 717 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 584 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 717 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 750 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 1115 },
			["Namkijun|nightslayer"] = { 2, 1, 0, 1426 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 1427 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 638 },
			["Leien|nightslayer"] = { 0, 1, -10, 638 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 715 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 717 },
		},
	},
}

