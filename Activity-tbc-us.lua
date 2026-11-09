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
	built = 1794193112,
	builtText = "2026-11-08 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 23 },
			["Mßison|nightslayer"] = { 13, 10, -5, 23 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 33 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 54 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 54 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 23 },
			["Mßison|nightslayer"] = { 13, 10, -5, 23 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 33 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 65 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 54 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 54 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 69 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 61 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 178 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 178 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 23 },
			["Mßison|nightslayer"] = { 13, 10, -5, 23 },
			["Creation|nightslayer"] = { 11, 9, -159, 219 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 33 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 65 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 54 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 54 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 240 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 69 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 61 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 326 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 178 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 316 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 178 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 221 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 23 },
			["Mßison|nightslayer"] = { 13, 10, -5, 23 },
			["Creation|nightslayer"] = { 11, 9, -159, 219 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 33 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 65 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 54 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 54 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 240 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 69 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 61 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 326 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 178 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 316 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 178 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 221 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 21, 18, 15, 54 },
			["ßraxtør|nightslayer"] = { 21, 18, 15, 54 },
			["Shigekazu|nightslayer"] = { 15, 19, -61, 1309 },
			["Wílleh|nightslayer"] = { 15, 19, -61, 1308 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 1168 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 1208 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 23 },
			["Mßison|nightslayer"] = { 13, 10, -5, 23 },
			["Cheryxx|nightslayer"] = { 11, 11, 3, 1229 },
			["Gimlidabest|nightslayer"] = { 11, 11, 7, 1229 },
			["Creation|nightslayer"] = { 11, 9, -159, 219 },
			["Kohhan|nightslayer"] = { 13, 7, 49, 326 },
			["Tnyni|nightslayer"] = { 13, 7, 48, 178 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 1133 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 33 },
			["Dinnoo|nightslayer"] = { 11, 4, 22, 69 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 65 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 1411 },
			["Plasticsurgn|nightslayer"] = { 11, 4, 22, 61 },
			["Bohagons|nightslayer"] = { 2, 12, -96, 1315 },
			["Chugzila|nightslayer"] = { 2, 12, -96, 1316 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 1438 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 240 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 1438 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 1377 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 1243 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 316 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 1377 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 1410 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 178 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 221 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 1298 },
			["Leien|nightslayer"] = { 0, 1, -10, 1298 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 1375 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 1377 },
		},
	},
}

