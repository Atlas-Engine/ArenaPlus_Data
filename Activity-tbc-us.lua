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
	built = 1794171516,
	builtText = "2026-11-08 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 949 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 949 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 808 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 848 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 1010 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 1011 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 869 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 869 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 773 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 1051 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 955 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 956 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 1078 },
			["Kohhan|nightslayer"] = { 6, 7, -2, 954 },
			["Tnyni|nightslayer"] = { 6, 7, -3, 958 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 1078 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 947 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 950 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 1017 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 884 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 1017 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 1050 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 1415 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 938 },
			["Leien|nightslayer"] = { 0, 1, -10, 938 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 1015 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 1017 },
		},
	},
}

