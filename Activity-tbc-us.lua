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
	built = 1794189514,
	builtText = "2026-11-08 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Creation|nightslayer"] = { 11, 7, -125, 159 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 180 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 118 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 118 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Creation|nightslayer"] = { 11, 9, -159, 159 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 180 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 266 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 118 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 256 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 118 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 161 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Creation|nightslayer"] = { 11, 9, -159, 159 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 180 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 266 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 118 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 256 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 118 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 161 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 1249 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 1249 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 1108 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 1148 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 1310 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 1311 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 1169 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 1169 },
			["Creation|nightslayer"] = { 11, 9, -159, 159 },
			["Kohhan|nightslayer"] = { 13, 7, 49, 266 },
			["Tnyni|nightslayer"] = { 13, 7, 48, 118 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 1073 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 1351 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 1255 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 1256 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 1378 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 180 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 1378 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 1247 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 1250 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 1317 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 1183 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 256 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 1317 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 1350 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 118 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 161 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 1238 },
			["Leien|nightslayer"] = { 0, 1, -10, 1238 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 1315 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 1317 },
		},
	},
}

