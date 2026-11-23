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
	built = 1795424357,
	builtText = "2026-11-23 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 18, 18, -24, 551 },
			["Farsaroga|spineshatter"] = { 18, 18, -13, 552 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 526 },
			["Nennx|spineshatter"] = { 13, 7, 89, 632 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 526 },
			["Forksache|spineshatter"] = { 11, 7, -19, 633 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 533 },
			["Hurtie|spineshatter"] = { 7, 8, 9, 665 },
			["Zanven|spineshatter"] = { 7, 8, -22, 665 },
			["Brubru|spineshatter"] = { 3, 9, -93, 549 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 550 },
			["Hööch|spineshatter"] = { 10, 0, 27, 585 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 668 },
			["Mblol|spineshatter"] = { 2, 1, -6, 600 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 600 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 637 },
			["Vannah|spineshatter"] = { 1, 0, 5, 637 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 633 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 644 },
			["Nennx|spineshatter"] = { 3, 0, 16, 632 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 551 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 552 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 665 },
			["Zanven|spineshatter"] = { 18, 13, -41, 665 },
			["Nennx|spineshatter"] = { 15, 10, 69, 632 },
			["Forksache|spineshatter"] = { 13, 7, -2, 633 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 526 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 526 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 873 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 533 },
			["Brubru|spineshatter"] = { 3, 9, -93, 549 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 765 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 550 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 765 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 742 },
			["Hööch|spineshatter"] = { 10, 0, 27, 585 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 668 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 1166 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 1125 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 1089 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 1184 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 1183 },
			["Mblol|spineshatter"] = { 2, 1, -6, 600 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 600 },
			["Foúr|spineshatter"] = { 0, 2, -21, 1125 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 969 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 969 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 765 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 765 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 637 },
			["Vannah|spineshatter"] = { 1, 0, 5, 637 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 633 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 644 },
			["Nennx|spineshatter"] = { 3, 0, 16, 632 },
		},
	},
}

