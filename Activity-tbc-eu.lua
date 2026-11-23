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
	built = 1795391962,
	builtText = "2026-11-22 06:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Farsaroga|spineshatter"] = { 18, 18, -13, 12 },
			["Everlost|spineshatter"] = { 10, 14, -37, 11 },
			["Moscuerta|spineshatter"] = { 9, 4, 75, 45 },
			["Brubru|spineshatter"] = { 3, 9, -93, 9 },
			["Hööch|spineshatter"] = { 10, 0, 27, 45 },
			["Lôlgroundit|spineshatter"] = { 3, 7, -68, 24 },
			["Bagladybetty|spineshatter"] = { 2, 3, -9, 45 },
			["Mblol|spineshatter"] = { 2, 1, -6, 60 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 60 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 18, 18, -24, 11 },
			["Farsaroga|spineshatter"] = { 18, 18, -13, 12 },
			["Nennx|spineshatter"] = { 13, 7, 89, 93 },
			["Forksache|spineshatter"] = { 11, 7, -19, 93 },
			["Hurtie|spineshatter"] = { 7, 8, 9, 125 },
			["Zanven|spineshatter"] = { 7, 8, -22, 125 },
			["Moscuerta|spineshatter"] = { 9, 4, 75, 45 },
			["Systemhack|spineshatter"] = { 9, 4, 12, 61 },
			["Brubru|spineshatter"] = { 3, 9, -93, 9 },
			["Hööch|spineshatter"] = { 10, 0, 27, 45 },
			["Lôlgroundit|spineshatter"] = { 3, 7, -68, 24 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 128 },
			["Bagladybetty|spineshatter"] = { 2, 3, -9, 45 },
			["Mblol|spineshatter"] = { 2, 1, -6, 60 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 60 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 97 },
			["Vannah|spineshatter"] = { 1, 0, 5, 97 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 93 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 104 },
			["Nennx|spineshatter"] = { 3, 0, 16, 93 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 11 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 12 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 125 },
			["Zanven|spineshatter"] = { 18, 13, -41, 125 },
			["Nennx|spineshatter"] = { 15, 10, 69, 93 },
			["Forksache|spineshatter"] = { 13, 7, -2, 93 },
			["Moscuerta|spineshatter"] = { 9, 4, 75, 45 },
			["Systemhack|spineshatter"] = { 9, 4, 12, 61 },
			["Brubru|spineshatter"] = { 3, 9, -93, 9 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 225 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 225 },
			["Cinthya|spineshatter"] = { 8, 2, 4, 333 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 202 },
			["Hööch|spineshatter"] = { 10, 0, 27, 45 },
			["Lôlgroundit|spineshatter"] = { 3, 7, -68, 24 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 128 },
			["Bagladybetty|spineshatter"] = { 2, 3, -9, 45 },
			["Mblol|spineshatter"] = { 2, 1, -6, 60 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 60 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 225 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 225 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 97 },
			["Vannah|spineshatter"] = { 1, 0, 5, 97 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 93 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 104 },
			["Nennx|spineshatter"] = { 3, 0, 16, 93 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 11 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 12 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 125 },
			["Zanven|spineshatter"] = { 18, 13, -41, 125 },
			["Nennx|spineshatter"] = { 15, 10, 69, 93 },
			["Forksache|spineshatter"] = { 13, 7, -2, 93 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 333 },
			["Moscuerta|spineshatter"] = { 9, 4, 75, 45 },
			["Systemhack|spineshatter"] = { 9, 4, 12, 61 },
			["Brubru|spineshatter"] = { 3, 9, -93, 9 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 225 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 225 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 202 },
			["Hööch|spineshatter"] = { 10, 0, 27, 45 },
			["Lôlgroundit|spineshatter"] = { 3, 7, -68, 24 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 128 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 627 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 585 },
			["Bagladybetty|spineshatter"] = { 2, 3, -9, 45 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 549 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 644 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 643 },
			["Mblol|spineshatter"] = { 2, 1, -6, 60 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 60 },
			["Foúr|spineshatter"] = { 0, 2, -21, 585 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 429 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 429 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 225 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 225 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 97 },
			["Vannah|spineshatter"] = { 1, 0, 5, 97 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 93 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 104 },
			["Nennx|spineshatter"] = { 3, 0, 16, 93 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 21, 23, -41, 11 },
			["Farsaroga|spineshatter"] = { 21, 23, -23, 12 },
			["Zanven|spineshatter"] = { 22, 18, -52, 125 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 125 },
			["Nennx|spineshatter"] = { 15, 10, 69, 93 },
			["Systemhack|spineshatter"] = { 15, 8, 15, 61 },
			["Forksache|spineshatter"] = { 13, 7, -2, 93 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 333 },
			["Moscuerta|spineshatter"] = { 9, 4, 75, 45 },
			["Brubru|spineshatter"] = { 3, 9, -93, 9 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 225 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 225 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 202 },
			["Hööch|spineshatter"] = { 10, 0, 27, 45 },
			["Lôlgroundit|spineshatter"] = { 3, 7, -68, 24 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 128 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 1377 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 1305 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 627 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 585 },
			["Bagladybetty|spineshatter"] = { 2, 3, -9, 45 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 549 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 644 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 643 },
			["Mblol|spineshatter"] = { 2, 1, -6, 60 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 60 },
			["Foúr|spineshatter"] = { 0, 2, -21, 585 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 429 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 429 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 225 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 225 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 1305 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 97 },
			["Vannah|spineshatter"] = { 1, 0, 5, 97 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 93 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 104 },
			["Nennx|spineshatter"] = { 3, 0, 16, 93 },
		},
	},
}

