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
	built = 1795438760,
	builtText = "2026-11-23 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 791 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 792 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 905 },
			["Zanven|spineshatter"] = { 18, 13, -41, 905 },
			["Nennx|spineshatter"] = { 15, 10, 69, 873 },
			["Forksache|spineshatter"] = { 13, 7, -2, 873 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 766 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 766 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 1113 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 773 },
			["Brubru|spineshatter"] = { 3, 9, -93, 789 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 1005 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 790 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 1005 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 982 },
			["Hööch|spineshatter"] = { 10, 0, 27, 825 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 908 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 1407 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 1365 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 1329 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 1424 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 1423 },
			["Mblol|spineshatter"] = { 2, 1, -6, 840 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 840 },
			["Foúr|spineshatter"] = { 0, 2, -21, 1365 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 1209 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 1209 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 1005 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 1005 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 877 },
			["Vannah|spineshatter"] = { 1, 0, 5, 877 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 873 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 884 },
			["Nennx|spineshatter"] = { 3, 0, 16, 873 },
		},
	},
}

