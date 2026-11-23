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
	built = 1795406364,
	builtText = "2026-11-22 10:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Farsaroga|spineshatter"] = { 18, 18, -13, 252 },
			["Everlost|spineshatter"] = { 10, 14, -37, 251 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 226 },
			["Nennx|spineshatter"] = { 13, 7, 89, 333 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 226 },
			["Forksache|spineshatter"] = { 11, 7, -19, 333 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 233 },
			["Brubru|spineshatter"] = { 3, 9, -93, 249 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 250 },
			["Hööch|spineshatter"] = { 10, 0, 27, 285 },
			["Mblol|spineshatter"] = { 2, 1, -6, 300 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 300 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 337 },
			["Vannah|spineshatter"] = { 1, 0, 5, 337 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 333 },
			["Nennx|spineshatter"] = { 3, 0, 16, 333 },
			["Ironhound|spineshatter"] = { 1, 0, 5, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 251 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 252 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 365 },
			["Zanven|spineshatter"] = { 18, 13, -41, 365 },
			["Nennx|spineshatter"] = { 15, 10, 69, 333 },
			["Forksache|spineshatter"] = { 13, 7, -2, 333 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 226 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 226 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 574 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 233 },
			["Brubru|spineshatter"] = { 3, 9, -93, 249 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 465 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 250 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 465 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 442 },
			["Hööch|spineshatter"] = { 10, 0, 27, 285 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 368 },
			["Mblol|spineshatter"] = { 2, 1, -6, 300 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 300 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 669 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 669 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 465 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 465 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 337 },
			["Vannah|spineshatter"] = { 1, 0, 5, 337 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 333 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 345 },
			["Nennx|spineshatter"] = { 3, 0, 16, 333 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 251 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 252 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 365 },
			["Zanven|spineshatter"] = { 18, 13, -41, 365 },
			["Nennx|spineshatter"] = { 15, 10, 69, 333 },
			["Forksache|spineshatter"] = { 13, 7, -2, 333 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 226 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 226 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 574 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 233 },
			["Brubru|spineshatter"] = { 3, 9, -93, 249 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 465 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 250 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 465 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 442 },
			["Hööch|spineshatter"] = { 10, 0, 27, 285 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 368 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 867 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 825 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 789 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 884 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 883 },
			["Mblol|spineshatter"] = { 2, 1, -6, 300 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 300 },
			["Foúr|spineshatter"] = { 0, 2, -21, 825 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 669 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 669 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 465 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 465 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 337 },
			["Vannah|spineshatter"] = { 1, 0, 5, 337 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 333 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 345 },
			["Nennx|spineshatter"] = { 3, 0, 16, 333 },
		},
	},
}

