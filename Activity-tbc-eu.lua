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
	built = 1795388364,
	builtText = "2026-11-22 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Forksache|spineshatter"] = { 11, 7, -19, 33 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 37 },
			["Vannah|spineshatter"] = { 1, 0, 5, 37 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 33 },
			["Nennx|spineshatter"] = { 3, 0, 16, 33 },
			["Ironhound|spineshatter"] = { 1, 0, 5, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Hurtie|spineshatter"] = { 18, 13, 58, 65 },
			["Zanven|spineshatter"] = { 18, 13, -41, 65 },
			["Forksache|spineshatter"] = { 13, 7, -2, 33 },
			["Everlost|spineshatter"] = { 9, 5, 2, 89 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 165 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 165 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 142 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 68 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 165 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 165 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 165 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 37 },
			["Vannah|spineshatter"] = { 1, 0, 5, 37 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 33 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 45 },
			["Nennx|spineshatter"] = { 3, 0, 16, 33 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Hurtie|spineshatter"] = { 18, 13, 58, 65 },
			["Zanven|spineshatter"] = { 18, 13, -41, 65 },
			["Forksache|spineshatter"] = { 13, 7, -2, 33 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 274 },
			["Everlost|spineshatter"] = { 9, 5, 2, 89 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 165 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 165 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 142 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 68 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 165 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 165 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 165 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 37 },
			["Vannah|spineshatter"] = { 1, 0, 5, 37 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 33 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 45 },
			["Nennx|spineshatter"] = { 3, 0, 16, 33 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Hurtie|spineshatter"] = { 18, 13, 58, 65 },
			["Zanven|spineshatter"] = { 18, 13, -41, 65 },
			["Forksache|spineshatter"] = { 13, 7, -2, 33 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 274 },
			["Everlost|spineshatter"] = { 9, 5, 2, 89 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 165 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 165 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 142 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 68 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 567 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 525 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 489 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 584 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 583 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 165 },
			["Foúr|spineshatter"] = { 0, 2, -21, 525 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 369 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 369 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 165 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 165 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 37 },
			["Vannah|spineshatter"] = { 1, 0, 5, 37 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 33 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 45 },
			["Nennx|spineshatter"] = { 3, 0, 16, 33 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Zanven|spineshatter"] = { 22, 18, -52, 65 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 65 },
			["Everlost|spineshatter"] = { 11, 9, -4, 89 },
			["Forksache|spineshatter"] = { 13, 7, -2, 33 },
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 1410 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 274 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 1425 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 1425 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 165 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 165 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 142 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 68 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 1317 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 1425 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 1317 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 1245 },
			["Farsaroga|spineshatter"] = { 3, 5, -10, 165 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 567 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 525 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 489 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 584 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 583 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 1409 },
			["Foúr|spineshatter"] = { 0, 2, -21, 525 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 369 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 369 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 165 },
			["Exehn|spineshatter"] = { 1, 0, 1, 1388 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 165 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 1245 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 37 },
			["Vannah|spineshatter"] = { 1, 0, 5, 37 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 33 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 45 },
			["Nennx|spineshatter"] = { 3, 0, 16, 33 },
		},
	},
}

