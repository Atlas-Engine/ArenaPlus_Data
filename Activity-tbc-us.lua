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
	built = 1794218314,
	builtText = "2026-11-09 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Oxwm|dreamscythe"] = { 10, 3, -33, 330 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 322 },
			["Astias|nightslayer"] = { 6, 4, 45, 322 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 296 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 346 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 301 },
			["Béon|nightslayer"] = { 4, 2, 13, 303 },
			["Checkmater|nightslayer"] = { 2, 4, -31, 296 },
			["Tenetd|dreamscythe"] = { 4, 1, 34, 349 },
			["Healobot|nightslayer"] = { 1, 2, -15, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 418 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 418 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 443 },
			["Mßison|nightslayer"] = { 13, 10, -5, 443 },
			["Creation|nightslayer"] = { 11, 7, -125, 639 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 330 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 453 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 485 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 474 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 475 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 322 },
			["Astias|nightslayer"] = { 6, 4, 45, 322 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 296 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 660 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 346 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 349 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 489 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 481 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 296 },
			["Onit|nightslayer"] = { 3, 4, -19, 361 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 301 },
			["Béon|nightslayer"] = { 4, 2, 13, 303 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 598 },
			["Healobot|nightslayer"] = { 1, 2, -15, 341 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 598 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 641 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 366 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 418 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 418 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 443 },
			["Mßison|nightslayer"] = { 13, 10, -5, 443 },
			["Creation|nightslayer"] = { 11, 9, -159, 639 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 330 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 453 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 485 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 474 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 475 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 322 },
			["Astias|nightslayer"] = { 6, 4, 45, 322 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 296 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 660 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 346 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 349 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 489 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 481 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 296 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 746 },
			["Onit|nightslayer"] = { 3, 4, -19, 361 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 598 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 301 },
			["Béon|nightslayer"] = { 4, 2, 13, 303 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 736 },
			["Healobot|nightslayer"] = { 1, 2, -15, 341 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 598 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 641 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 366 },
		},
	},
}

