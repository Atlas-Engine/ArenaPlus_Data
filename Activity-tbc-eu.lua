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
	built = 1795395563,
	builtText = "2026-11-22 07:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bagladybetty|spineshatter"] = { 5, 5, 25, 53 },
			["Moscuerta|spineshatter"] = { 6, 1, 37, 46 },
			["Systemhack|spineshatter"] = { 6, 1, 13, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Farsaroga|spineshatter"] = { 18, 18, -13, 72 },
			["Everlost|spineshatter"] = { 10, 14, -37, 71 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 46 },
			["Nennx|spineshatter"] = { 13, 7, 89, 153 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 46 },
			["Forksache|spineshatter"] = { 11, 7, -19, 153 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 53 },
			["Brubru|spineshatter"] = { 3, 9, -93, 69 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 70 },
			["Hööch|spineshatter"] = { 10, 0, 27, 105 },
			["Mblol|spineshatter"] = { 2, 1, -6, 120 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 120 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 157 },
			["Vannah|spineshatter"] = { 1, 0, 5, 157 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 153 },
			["Nennx|spineshatter"] = { 3, 0, 16, 153 },
			["Ironhound|spineshatter"] = { 1, 0, 5, 164 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 71 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 72 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 185 },
			["Zanven|spineshatter"] = { 18, 13, -41, 185 },
			["Nennx|spineshatter"] = { 15, 10, 69, 153 },
			["Forksache|spineshatter"] = { 13, 7, -2, 153 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 46 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 46 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 53 },
			["Brubru|spineshatter"] = { 3, 9, -93, 69 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 285 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 70 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 285 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 262 },
			["Hööch|spineshatter"] = { 10, 0, 27, 105 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 188 },
			["Mblol|spineshatter"] = { 2, 1, -6, 120 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 120 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 285 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 285 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 157 },
			["Vannah|spineshatter"] = { 1, 0, 5, 157 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 153 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 164 },
			["Nennx|spineshatter"] = { 3, 0, 16, 153 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 71 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 72 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 185 },
			["Zanven|spineshatter"] = { 18, 13, -41, 185 },
			["Nennx|spineshatter"] = { 15, 10, 69, 153 },
			["Forksache|spineshatter"] = { 13, 7, -2, 153 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 46 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 46 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 394 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 53 },
			["Brubru|spineshatter"] = { 3, 9, -93, 69 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 285 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 70 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 285 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 262 },
			["Hööch|spineshatter"] = { 10, 0, 27, 105 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 188 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 687 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 645 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 609 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 704 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 703 },
			["Mblol|spineshatter"] = { 2, 1, -6, 120 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 120 },
			["Foúr|spineshatter"] = { 0, 2, -21, 645 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 489 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 489 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 285 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 285 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 157 },
			["Vannah|spineshatter"] = { 1, 0, 5, 157 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 153 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 164 },
			["Nennx|spineshatter"] = { 3, 0, 16, 153 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 71 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 72 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 185 },
			["Zanven|spineshatter"] = { 18, 13, -41, 185 },
			["Systemhack|spineshatter"] = { 20, 7, 51, 46 },
			["Nennx|spineshatter"] = { 15, 10, 69, 153 },
			["Forksache|spineshatter"] = { 13, 7, -2, 153 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 46 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 394 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 53 },
			["Brubru|spineshatter"] = { 3, 9, -93, 69 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 285 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 70 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 285 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 262 },
			["Hööch|spineshatter"] = { 10, 0, 27, 105 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 188 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 1365 },
			["Worldemoboss|spineshatter"] = { 5, 2, 21, 1437 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 687 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 645 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 609 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 704 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 703 },
			["Mblol|spineshatter"] = { 2, 1, -6, 120 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 120 },
			["Foúr|spineshatter"] = { 0, 2, -21, 645 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 489 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 489 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 285 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 285 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 1365 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 157 },
			["Vannah|spineshatter"] = { 1, 0, 5, 157 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 153 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 164 },
			["Nennx|spineshatter"] = { 3, 0, 16, 153 },
		},
	},
}

