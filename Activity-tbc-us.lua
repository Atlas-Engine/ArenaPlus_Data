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
	built = 1794196713,
	builtText = "2026-11-08 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 58 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 58 },
			["Tenetd|dreamscythe"] = { 3, 2, -5, 58 },
			["Oxwm|dreamscythe"] = { 3, 0, 6, 58 },
			["Checkmater|nightslayer"] = { 1, 0, 12, 58 },
			["Onit|nightslayer"] = { 1, 0, 12, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 58 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 58 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 83 },
			["Mßison|nightslayer"] = { 13, 10, -5, 83 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 93 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 125 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 114 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 115 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 129 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 121 },
			["Tenetd|dreamscythe"] = { 3, 2, -5, 58 },
			["Oxwm|dreamscythe"] = { 3, 0, 6, 58 },
			["Checkmater|nightslayer"] = { 1, 0, 12, 58 },
			["Onit|nightslayer"] = { 1, 0, 12, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 58 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 58 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 83 },
			["Mßison|nightslayer"] = { 13, 10, -5, 83 },
			["Creation|nightslayer"] = { 11, 7, -125, 279 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 93 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 125 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 114 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 115 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 300 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 129 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 121 },
			["Tenetd|dreamscythe"] = { 3, 2, -5, 58 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 238 },
			["Oxwm|dreamscythe"] = { 3, 0, 6, 58 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 238 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 281 },
			["Checkmater|nightslayer"] = { 1, 0, 12, 58 },
			["Onit|nightslayer"] = { 1, 0, 12, 58 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 58 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 58 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 83 },
			["Mßison|nightslayer"] = { 13, 10, -5, 83 },
			["Creation|nightslayer"] = { 11, 9, -159, 279 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 93 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 125 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 114 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 115 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 300 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 129 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 121 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 386 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 238 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 376 },
			["Tenetd|dreamscythe"] = { 3, 2, -5, 58 },
			["Oxwm|dreamscythe"] = { 3, 0, 6, 58 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 238 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 281 },
			["Checkmater|nightslayer"] = { 1, 0, 12, 58 },
			["Onit|nightslayer"] = { 1, 0, 12, 58 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 23, 22, 87, 58 },
			["Gimlidabest|nightslayer"] = { 23, 22, 92, 58 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 1228 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 1268 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 83 },
			["Mßison|nightslayer"] = { 13, 10, -5, 83 },
			["Ragequitqtt|nightslayer"] = { 10, 12, -31, 114 },
			["Shigekazu|nightslayer"] = { 9, 13, -44, 1369 },
			["ßraxtør|nightslayer"] = { 10, 12, -31, 115 },
			["Wílleh|nightslayer"] = { 9, 13, -44, 1369 },
			["Creation|nightslayer"] = { 11, 9, -159, 279 },
			["Kohhan|nightslayer"] = { 13, 7, 49, 386 },
			["Tnyni|nightslayer"] = { 13, 7, 48, 238 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 1193 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 93 },
			["Dinnoo|nightslayer"] = { 11, 4, 22, 129 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 125 },
			["Plasticsurgn|nightslayer"] = { 11, 4, 22, 121 },
			["Bohagons|nightslayer"] = { 2, 11, -85, 1375 },
			["Chugzila|nightslayer"] = { 2, 11, -85, 1376 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 300 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 1303 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 376 },
			["Tenetd|dreamscythe"] = { 3, 2, -5, 58 },
			["Allenstout|nightslayer"] = { 2, 2, 19, 1437 },
			["Jingjingbaby|nightslayer"] = { 2, 2, 19, 1437 },
			["Oxwm|dreamscythe"] = { 3, 0, 6, 58 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 238 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 281 },
			["Checkmater|nightslayer"] = { 1, 0, 12, 58 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 1358 },
			["Leien|nightslayer"] = { 0, 1, -10, 1358 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 1435 },
			["Onit|nightslayer"] = { 1, 0, 12, 58 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 1437 },
		},
	},
}

