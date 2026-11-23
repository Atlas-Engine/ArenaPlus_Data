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

ns.ACTIVITY_BY_REGION["tbc-eu"] = {
	built = 1795417158,
	builtText = "2026-11-23 01:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 431 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 432 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 545 },
			["Zanven|spineshatter"] = { 18, 13, -41, 545 },
			["Nennx|spineshatter"] = { 15, 10, 69, 513 },
			["Forksache|spineshatter"] = { 13, 7, -2, 513 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 406 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 406 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 413 },
			["Brubru|spineshatter"] = { 3, 9, -93, 429 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 645 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 430 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 645 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 622 },
			["Hööch|spineshatter"] = { 10, 0, 27, 465 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 548 },
			["Mblol|spineshatter"] = { 2, 1, -6, 480 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 480 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 645 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 645 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 517 },
			["Vannah|spineshatter"] = { 1, 0, 5, 517 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 513 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 524 },
			["Nennx|spineshatter"] = { 3, 0, 16, 513 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 431 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 432 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 545 },
			["Zanven|spineshatter"] = { 18, 13, -41, 545 },
			["Nennx|spineshatter"] = { 15, 10, 69, 513 },
			["Forksache|spineshatter"] = { 13, 7, -2, 513 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 406 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 406 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 753 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 413 },
			["Brubru|spineshatter"] = { 3, 9, -93, 429 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 645 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 430 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 645 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 622 },
			["Hööch|spineshatter"] = { 10, 0, 27, 465 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 548 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 1046 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 1005 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 969 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 1064 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 1063 },
			["Mblol|spineshatter"] = { 2, 1, -6, 480 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 480 },
			["Foúr|spineshatter"] = { 0, 2, -21, 1005 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 849 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 849 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 645 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 645 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 517 },
			["Vannah|spineshatter"] = { 1, 0, 5, 517 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 513 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 524 },
			["Nennx|spineshatter"] = { 3, 0, 16, 513 },
		},
	},
}

