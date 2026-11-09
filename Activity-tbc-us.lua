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
	built = 1794203914,
	builtText = "2026-11-09 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Fleegs|nightslayer"] = { 6, 4, 2, 56 },
			["Checkmater|nightslayer"] = { 2, 4, -31, 56 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 178 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 178 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 90 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 82 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 56 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 109 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 56 },
			["Onit|nightslayer"] = { 3, 4, -19, 121 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 61 },
			["Béon|nightslayer"] = { 4, 2, 13, 63 },
			["Mcjonwald|nightslayer"] = { 1, 5, -46, 83 },
			["Healobot|nightslayer"] = { 1, 2, -15, 101 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 126 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 178 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 178 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 203 },
			["Mßison|nightslayer"] = { 13, 10, -5, 203 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 90 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 213 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 245 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 234 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 235 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 82 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 56 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 109 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 249 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 241 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 56 },
			["Onit|nightslayer"] = { 3, 4, -19, 121 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 61 },
			["Béon|nightslayer"] = { 4, 2, 13, 63 },
			["Mcjonwald|nightslayer"] = { 1, 5, -46, 83 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 358 },
			["Healobot|nightslayer"] = { 1, 2, -15, 101 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 358 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 126 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 178 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 178 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 203 },
			["Mßison|nightslayer"] = { 13, 10, -5, 203 },
			["Creation|nightslayer"] = { 11, 9, -159, 399 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 90 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 213 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 245 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 234 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 235 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 82 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 56 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 420 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 109 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 249 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 241 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 56 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 506 },
			["Onit|nightslayer"] = { 3, 4, -19, 121 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 358 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 61 },
			["Béon|nightslayer"] = { 4, 2, 13, 63 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 496 },
			["Mcjonwald|nightslayer"] = { 1, 5, -46, 83 },
			["Healobot|nightslayer"] = { 1, 2, -15, 101 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 358 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 401 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 126 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 23, 22, 87, 178 },
			["Gimlidabest|nightslayer"] = { 23, 22, 92, 178 },
			["Jodaldal|nightslayer"] = { 17, 9, 81, 1348 },
			["Sunnyslow|nightslayer"] = { 17, 9, 1, 1388 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 203 },
			["Mßison|nightslayer"] = { 13, 10, -5, 203 },
			["Creation|nightslayer"] = { 11, 9, -159, 399 },
			["Saplinq|nightslayer"] = { 10, 8, -1, 1313 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 90 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 213 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 245 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 234 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 235 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 82 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 56 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 420 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 109 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 249 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 241 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 56 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 506 },
			["Onit|nightslayer"] = { 3, 4, -19, 121 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 358 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 61 },
			["Béon|nightslayer"] = { 4, 2, 13, 63 },
			["Chuckbleez|nightslayer"] = { 5, 1, 41, 1423 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 496 },
			["Mcjonwald|nightslayer"] = { 1, 5, -46, 83 },
			["Healobot|nightslayer"] = { 1, 2, -15, 101 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 358 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 401 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 126 },
		},
	},
}

