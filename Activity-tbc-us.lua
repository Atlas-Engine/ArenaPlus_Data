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
	built = 1794185918,
	builtText = "2026-11-08 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Tnyni|nightslayer"] = { 5, 0, 29, 58 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Creation|nightslayer"] = { 11, 7, -125, 99 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 120 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 58 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 58 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Creation|nightslayer"] = { 11, 9, -159, 99 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 120 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 207 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 58 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 196 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 58 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Creation|nightslayer"] = { 11, 9, -159, 99 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 120 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 207 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 58 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 196 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 58 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 101 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 15, 19, -61, 1189 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 1189 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 1048 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 1088 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 1250 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 1251 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 1109 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 1109 },
			["Creation|nightslayer"] = { 11, 9, -159, 99 },
			["Kohhan|nightslayer"] = { 13, 7, 49, 207 },
			["Tnyni|nightslayer"] = { 13, 7, 48, 58 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 1013 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 1291 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 1195 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 1196 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 1318 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 120 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 1318 },
			["Dinnoo|nightslayer"] = { 7, 0, 42, 1187 },
			["Plasticsurgn|nightslayer"] = { 7, 0, 42, 1190 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 1257 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 1124 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 196 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 1257 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 1290 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 58 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 101 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 1178 },
			["Leien|nightslayer"] = { 0, 1, -10, 1178 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 1256 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 1257 },
		},
	},
}

