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
	built = 1794232713,
	builtText = "2026-11-09 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 60 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 60 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 658 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 658 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 683 },
			["Mßison|nightslayer"] = { 13, 10, -5, 683 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 570 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 693 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 714 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 715 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 60 },
			["Astias|nightslayer"] = { 6, 4, 45, 562 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 536 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 586 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 589 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 536 },
			["Onit|nightslayer"] = { 3, 4, -19, 601 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 541 },
			["Béon|nightslayer"] = { 4, 2, 13, 543 },
			["Healobot|nightslayer"] = { 1, 2, -15, 581 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 606 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 658 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 658 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 683 },
			["Mßison|nightslayer"] = { 13, 10, -5, 683 },
			["Creation|nightslayer"] = { 11, 9, -159, 879 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 570 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 693 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 725 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 714 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 715 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 60 },
			["Astias|nightslayer"] = { 6, 4, 45, 562 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 536 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 900 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 586 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 589 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 729 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 721 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 536 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 986 },
			["Onit|nightslayer"] = { 3, 4, -19, 601 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 838 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 541 },
			["Béon|nightslayer"] = { 4, 2, 13, 543 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 976 },
			["Healobot|nightslayer"] = { 1, 2, -15, 581 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 838 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 881 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 606 },
		},
	},
}

