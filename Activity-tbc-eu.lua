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
	built = 1795399174,
	builtText = "2026-11-22 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Farsaroga|spineshatter"] = { 18, 18, -13, 132 },
			["Everlost|spineshatter"] = { 10, 14, -37, 131 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 106 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 113 },
			["Brubru|spineshatter"] = { 3, 9, -93, 130 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 130 },
			["Hööch|spineshatter"] = { 10, 0, 27, 166 },
			["Systemhack|spineshatter"] = { 6, 1, 13, 106 },
			["Mblol|spineshatter"] = { 2, 1, -6, 180 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 131 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 132 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 245 },
			["Zanven|spineshatter"] = { 18, 13, -41, 245 },
			["Forksache|spineshatter"] = { 13, 7, -2, 213 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 106 },
			["Nennx|spineshatter"] = { 13, 7, 89, 213 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 106 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 113 },
			["Brubru|spineshatter"] = { 3, 9, -93, 130 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 346 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 130 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 346 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 322 },
			["Hööch|spineshatter"] = { 10, 0, 27, 166 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 248 },
			["Mblol|spineshatter"] = { 2, 1, -6, 180 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 180 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 346 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 346 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 217 },
			["Vannah|spineshatter"] = { 1, 0, 5, 217 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 213 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 225 },
			["Nennx|spineshatter"] = { 3, 0, 16, 213 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 131 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 132 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 245 },
			["Zanven|spineshatter"] = { 18, 13, -41, 245 },
			["Nennx|spineshatter"] = { 15, 10, 69, 213 },
			["Forksache|spineshatter"] = { 13, 7, -2, 213 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 106 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 106 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 454 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 113 },
			["Brubru|spineshatter"] = { 3, 9, -93, 130 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 346 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 130 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 346 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 322 },
			["Hööch|spineshatter"] = { 10, 0, 27, 166 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 248 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 706 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 670 },
			["Mblol|spineshatter"] = { 2, 1, -6, 180 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 180 },
			["Foúr|spineshatter"] = { 0, 2, -21, 706 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 550 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 550 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 346 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 346 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 217 },
			["Vannah|spineshatter"] = { 1, 0, 5, 217 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 213 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 225 },
			["Nennx|spineshatter"] = { 3, 0, 16, 213 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 131 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 132 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 245 },
			["Zanven|spineshatter"] = { 18, 13, -41, 245 },
			["Nennx|spineshatter"] = { 15, 10, 69, 213 },
			["Forksache|spineshatter"] = { 13, 7, -2, 213 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 106 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 106 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 454 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 113 },
			["Brubru|spineshatter"] = { 3, 9, -93, 130 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 346 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 130 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 346 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 322 },
			["Hööch|spineshatter"] = { 10, 0, 27, 166 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 248 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 1426 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 747 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 706 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 670 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 764 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 763 },
			["Mblol|spineshatter"] = { 2, 1, -6, 180 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 180 },
			["Foúr|spineshatter"] = { 0, 2, -21, 706 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 550 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 550 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 346 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 346 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 1426 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 217 },
			["Vannah|spineshatter"] = { 1, 0, 5, 217 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 213 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 225 },
			["Nennx|spineshatter"] = { 3, 0, 16, 213 },
		},
	},
}

