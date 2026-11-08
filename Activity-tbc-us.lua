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
	built = 1794175112,
	builtText = "2026-11-08 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Kohhan|nightslayer"] = { 7, 0, 51, 26 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 16 },
			["Creation|nightslayer"] = { 0, 2, -34, 58 },
			["Tnyni|nightslayer"] = { 2, 0, 22, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Kohhan|nightslayer"] = { 7, 0, 51, 26 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 16 },
			["Creation|nightslayer"] = { 0, 2, -34, 58 },
			["Tnyni|nightslayer"] = { 2, 0, 22, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Kohhan|nightslayer"] = { 7, 0, 51, 26 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 16 },
			["Creation|nightslayer"] = { 0, 2, -34, 58 },
			["Tnyni|nightslayer"] = { 2, 0, 22, 58 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kohhan|nightslayer"] = { 7, 0, 51, 26 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 16 },
			["Creation|nightslayer"] = { 0, 2, -34, 58 },
			["Tnyni|nightslayer"] = { 2, 0, 22, 58 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 1009 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 1008 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 868 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 908 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 1070 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 1071 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 929 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 929 },
			["Kohhan|nightslayer"] = { 13, 7, 49, 26 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 833 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 1111 },
			["Tnyni|nightslayer"] = { 8, 7, 19, 58 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 1015 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 1016 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 1138 },
			["Gzlol|dreamscythe"] = { 4, 6, -56, 1138 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 1007 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 1010 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 1077 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 943 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 16 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 1077 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 1110 },
			["Creation|nightslayer"] = { 0, 2, -34, 58 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 998 },
			["Leien|nightslayer"] = { 0, 1, -10, 998 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 1075 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 1077 },
		},
	},
}

