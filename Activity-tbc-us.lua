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
	built = 1794207516,
	builtText = "2026-11-09 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Oxwm|dreamscythe"] = { 10, 3, -33, 150 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 142 },
			["Astias|nightslayer"] = { 6, 4, 45, 142 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 116 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 166 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 121 },
			["Béon|nightslayer"] = { 4, 2, 13, 123 },
			["Checkmater|nightslayer"] = { 2, 4, -31, 116 },
			["Tenetd|dreamscythe"] = { 4, 1, 34, 169 },
			["Healobot|nightslayer"] = { 1, 2, -15, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 238 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 238 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 263 },
			["Mßison|nightslayer"] = { 13, 10, -5, 263 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 150 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 273 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 305 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 294 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 295 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 142 },
			["Astias|nightslayer"] = { 6, 4, 45, 142 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 116 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 166 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 169 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 309 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 301 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 116 },
			["Onit|nightslayer"] = { 3, 4, -19, 182 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 121 },
			["Béon|nightslayer"] = { 4, 2, 13, 123 },
			["Healobot|nightslayer"] = { 1, 2, -15, 161 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 186 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 238 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 238 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 263 },
			["Mßison|nightslayer"] = { 13, 10, -5, 263 },
			["Creation|nightslayer"] = { 11, 9, -159, 459 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 150 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 273 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 305 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 294 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 295 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 142 },
			["Astias|nightslayer"] = { 6, 4, 45, 142 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 116 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 480 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 166 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 169 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 309 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 301 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 116 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 566 },
			["Onit|nightslayer"] = { 3, 4, -19, 182 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 418 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 121 },
			["Béon|nightslayer"] = { 4, 2, 13, 123 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 556 },
			["Healobot|nightslayer"] = { 1, 2, -15, 161 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 418 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 461 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 186 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 238 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 238 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 263 },
			["Mßison|nightslayer"] = { 13, 10, -5, 263 },
			["Creation|nightslayer"] = { 11, 9, -159, 459 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 150 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 273 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 305 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 294 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 295 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 142 },
			["Saplinq|nightslayer"] = { 6, 5, -8, 1373 },
			["Astias|nightslayer"] = { 6, 4, 45, 142 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 116 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 480 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 166 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 169 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 309 },
			["Jodaldal|nightslayer"] = { 6, 2, 38, 1408 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 301 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 116 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 566 },
			["Onit|nightslayer"] = { 3, 4, -19, 182 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 418 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 121 },
			["Béon|nightslayer"] = { 4, 2, 13, 123 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 556 },
			["Healobot|nightslayer"] = { 1, 2, -15, 161 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 418 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 461 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 186 },
		},
	},
}

