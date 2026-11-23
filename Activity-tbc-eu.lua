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
	built = 1795431561,
	builtText = "2026-11-23 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Farsaroga|spineshatter"] = { 18, 18, -13, 672 },
			["Everlost|spineshatter"] = { 10, 14, -37, 671 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 646 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 653 },
			["Brubru|spineshatter"] = { 3, 9, -93, 669 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 670 },
			["Hööch|spineshatter"] = { 10, 0, 27, 705 },
			["Systemhack|spineshatter"] = { 6, 1, 13, 646 },
			["Mblol|spineshatter"] = { 2, 1, -6, 720 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 720 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 671 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 672 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 785 },
			["Zanven|spineshatter"] = { 18, 13, -41, 785 },
			["Nennx|spineshatter"] = { 15, 10, 69, 753 },
			["Forksache|spineshatter"] = { 13, 7, -2, 753 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 646 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 646 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 993 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 653 },
			["Brubru|spineshatter"] = { 3, 9, -93, 669 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 885 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 670 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 885 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 862 },
			["Hööch|spineshatter"] = { 10, 0, 27, 705 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 788 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 1287 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 1245 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 1209 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 1304 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 1303 },
			["Mblol|spineshatter"] = { 2, 1, -6, 720 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 720 },
			["Foúr|spineshatter"] = { 0, 2, -21, 1245 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 1089 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 1089 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 885 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 885 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 757 },
			["Vannah|spineshatter"] = { 1, 0, 5, 757 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 753 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 764 },
			["Nennx|spineshatter"] = { 3, 0, 16, 753 },
		},
	},
}

