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
	built = 1794221914,
	builtText = "2026-11-09 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fleegs|nightslayer"] = { 6, 4, 2, 356 },
			["Checkmater|nightslayer"] = { 2, 4, -31, 356 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 478 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 478 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 503 },
			["Mßison|nightslayer"] = { 13, 10, -5, 503 },
			["Creation|nightslayer"] = { 11, 7, -125, 699 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 390 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 513 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 545 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 534 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 535 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 382 },
			["Astias|nightslayer"] = { 6, 4, 45, 382 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 356 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 720 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 406 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 409 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 549 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 541 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 356 },
			["Onit|nightslayer"] = { 3, 4, -19, 421 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 361 },
			["Béon|nightslayer"] = { 4, 2, 13, 363 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 658 },
			["Healobot|nightslayer"] = { 1, 2, -15, 401 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 658 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 701 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 426 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 478 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 478 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 503 },
			["Mßison|nightslayer"] = { 13, 10, -5, 503 },
			["Creation|nightslayer"] = { 11, 9, -159, 699 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 390 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 513 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 545 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 534 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 535 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 382 },
			["Astias|nightslayer"] = { 6, 4, 45, 382 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 356 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 720 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 406 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 409 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 549 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 541 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 356 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 806 },
			["Onit|nightslayer"] = { 3, 4, -19, 421 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 658 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 361 },
			["Béon|nightslayer"] = { 4, 2, 13, 363 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 796 },
			["Healobot|nightslayer"] = { 1, 2, -15, 401 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 658 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 701 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 426 },
		},
	},
}

