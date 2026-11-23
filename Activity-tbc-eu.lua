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
	built = 1795435161,
	builtText = "2026-11-23 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bagladybetty|spineshatter"] = { 5, 5, 25, 713 },
			["Moscuerta|spineshatter"] = { 6, 1, 37, 706 },
			["Systemhack|spineshatter"] = { 6, 1, 13, 706 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 731 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 732 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 845 },
			["Zanven|spineshatter"] = { 18, 13, -41, 845 },
			["Nennx|spineshatter"] = { 15, 10, 69, 813 },
			["Forksache|spineshatter"] = { 13, 7, -2, 813 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 706 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 706 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 1053 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 713 },
			["Brubru|spineshatter"] = { 3, 9, -93, 729 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 945 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 730 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 945 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 922 },
			["Hööch|spineshatter"] = { 10, 0, 27, 765 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 848 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 1347 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 1305 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 1269 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 1364 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 1363 },
			["Mblol|spineshatter"] = { 2, 1, -6, 780 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 780 },
			["Foúr|spineshatter"] = { 0, 2, -21, 1305 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 1149 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 1149 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 945 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 945 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 817 },
			["Vannah|spineshatter"] = { 1, 0, 5, 817 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 813 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 824 },
			["Nennx|spineshatter"] = { 3, 0, 16, 813 },
		},
	},
}

