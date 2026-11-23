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
	built = 1795427959,
	builtText = "2026-11-23 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Farsaroga|spineshatter"] = { 18, 18, -13, 612 },
			["Everlost|spineshatter"] = { 10, 14, -37, 611 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 586 },
			["Nennx|spineshatter"] = { 13, 7, 89, 693 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 586 },
			["Forksache|spineshatter"] = { 11, 7, -19, 693 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 593 },
			["Brubru|spineshatter"] = { 3, 9, -93, 609 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 610 },
			["Hööch|spineshatter"] = { 10, 0, 27, 645 },
			["Mblol|spineshatter"] = { 2, 1, -6, 660 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 660 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 697 },
			["Vannah|spineshatter"] = { 1, 0, 5, 697 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 693 },
			["Nennx|spineshatter"] = { 3, 0, 16, 693 },
			["Ironhound|spineshatter"] = { 1, 0, 5, 704 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 611 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 612 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 725 },
			["Zanven|spineshatter"] = { 18, 13, -41, 725 },
			["Nennx|spineshatter"] = { 15, 10, 69, 693 },
			["Forksache|spineshatter"] = { 13, 7, -2, 693 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 586 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 586 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 933 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 593 },
			["Brubru|spineshatter"] = { 3, 9, -93, 609 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 825 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 610 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 825 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 802 },
			["Hööch|spineshatter"] = { 10, 0, 27, 645 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 728 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 1226 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 1185 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 1149 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 1244 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 1243 },
			["Mblol|spineshatter"] = { 2, 1, -6, 660 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 660 },
			["Foúr|spineshatter"] = { 0, 2, -21, 1185 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 1029 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 1029 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 825 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 825 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 697 },
			["Vannah|spineshatter"] = { 1, 0, 5, 697 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 693 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 704 },
			["Nennx|spineshatter"] = { 3, 0, 16, 693 },
		},
	},
}

