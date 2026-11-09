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
	built = 1794200313,
	builtText = "2026-11-08 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Oxwm|dreamscythe"] = { 10, 3, -33, 30 },
			["Mcjonwald|nightslayer"] = { 1, 5, -46, 23 },
			["Tenetd|dreamscythe"] = { 4, 1, 34, 49 },
			["Healobot|nightslayer"] = { 1, 2, -15, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 118 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 118 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 143 },
			["Mßison|nightslayer"] = { 13, 10, -5, 143 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 30 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 153 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 174 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 175 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 49 },
			["Onit|nightslayer"] = { 3, 4, -19, 61 },
			["Mcjonwald|nightslayer"] = { 1, 5, -46, 23 },
			["Healobot|nightslayer"] = { 1, 2, -15, 41 },
			["Checkmater|nightslayer"] = { 1, 0, 12, 118 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 66 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 118 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 118 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 143 },
			["Mßison|nightslayer"] = { 13, 10, -5, 143 },
			["Creation|nightslayer"] = { 11, 7, -125, 339 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 30 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 153 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 185 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 174 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 175 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 360 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 49 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 189 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 181 },
			["Onit|nightslayer"] = { 3, 4, -19, 61 },
			["Mcjonwald|nightslayer"] = { 1, 5, -46, 23 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 298 },
			["Healobot|nightslayer"] = { 1, 2, -15, 41 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 298 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 341 },
			["Checkmater|nightslayer"] = { 1, 0, 12, 118 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 66 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 118 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 118 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 143 },
			["Mßison|nightslayer"] = { 13, 10, -5, 143 },
			["Creation|nightslayer"] = { 11, 9, -159, 339 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 30 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 153 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 185 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 174 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 175 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 360 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 49 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 189 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 181 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 446 },
			["Onit|nightslayer"] = { 3, 4, -19, 61 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 298 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 436 },
			["Mcjonwald|nightslayer"] = { 1, 5, -46, 23 },
			["Healobot|nightslayer"] = { 1, 2, -15, 41 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 298 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 341 },
			["Checkmater|nightslayer"] = { 1, 0, 12, 118 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 66 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 23, 22, 87, 118 },
			["Gimlidabest|nightslayer"] = { 23, 22, 92, 118 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 1288 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 1328 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 143 },
			["Mßison|nightslayer"] = { 13, 10, -5, 143 },
			["Shigekazu|nightslayer"] = { 9, 13, -44, 1429 },
			["Wílleh|nightslayer"] = { 9, 13, -44, 1429 },
			["Creation|nightslayer"] = { 11, 9, -159, 339 },
			["Kohhan|nightslayer"] = { 13, 7, 49, 446 },
			["Tnyni|nightslayer"] = { 13, 7, 48, 298 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 1253 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 30 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 153 },
			["Dinnoo|nightslayer"] = { 11, 4, 22, 189 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 185 },
			["Plasticsurgn|nightslayer"] = { 11, 4, 22, 181 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 174 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 175 },
			["Bohagons|nightslayer"] = { 2, 11, -85, 1435 },
			["Chugzila|nightslayer"] = { 2, 11, -85, 1436 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 360 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 49 },
			["Onit|nightslayer"] = { 3, 4, -19, 61 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 1363 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 436 },
			["Mcjonwald|nightslayer"] = { 1, 5, -46, 23 },
			["Healobot|nightslayer"] = { 1, 2, -15, 41 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 298 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 341 },
			["Checkmater|nightslayer"] = { 1, 0, 12, 118 },
			["Feldargon|nightslayer"] = { 0, 1, -9, 1418 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 66 },
			["Leien|nightslayer"] = { 0, 1, -10, 1418 },
		},
	},
}

