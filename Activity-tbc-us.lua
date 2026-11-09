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
	built = 1794225515,
	builtText = "2026-11-09 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 538 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 538 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 563 },
			["Mßison|nightslayer"] = { 13, 10, -5, 563 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 450 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 573 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 605 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 594 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 595 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 442 },
			["Astias|nightslayer"] = { 6, 4, 45, 442 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 416 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 466 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 469 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 609 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 601 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 416 },
			["Onit|nightslayer"] = { 3, 4, -19, 482 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 421 },
			["Béon|nightslayer"] = { 4, 2, 13, 423 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 718 },
			["Healobot|nightslayer"] = { 1, 2, -15, 461 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 718 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 486 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 538 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 538 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 563 },
			["Mßison|nightslayer"] = { 13, 10, -5, 563 },
			["Creation|nightslayer"] = { 11, 9, -159, 759 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 450 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 573 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 605 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 594 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 595 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 442 },
			["Astias|nightslayer"] = { 6, 4, 45, 442 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 416 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 780 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 466 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 469 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 609 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 601 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 416 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 866 },
			["Onit|nightslayer"] = { 3, 4, -19, 482 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 718 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 421 },
			["Béon|nightslayer"] = { 4, 2, 13, 423 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 856 },
			["Healobot|nightslayer"] = { 1, 2, -15, 461 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 718 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 761 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 486 },
		},
	},
}

