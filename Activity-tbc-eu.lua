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
	built = 1795384764,
	builtText = "2026-11-22 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Zanven|spineshatter"] = { 7, 8, -22, 5 },
			["Everlost|spineshatter"] = { 8, 4, 13, 29 },
		},
		[2] = {
			["Ironhound|spineshatter"] = { 2, 0, 12, 20 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Zanven|spineshatter"] = { 18, 13, -41, 5 },
			["Hurtie|spineshatter"] = { 11, 5, 49, 105 },
			["Everlost|spineshatter"] = { 9, 5, 2, 29 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 105 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 105 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 82 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 105 },
			["Forksache|spineshatter"] = { 2, 0, 17, 105 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 105 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 105 },
		},
		[2] = {
			["Ironhound|spineshatter"] = { 2, 0, 12, 20 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Zanven|spineshatter"] = { 18, 13, -41, 5 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 214 },
			["Hurtie|spineshatter"] = { 11, 5, 49, 105 },
			["Everlost|spineshatter"] = { 9, 5, 2, 29 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 105 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 105 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 82 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 105 },
			["Forksache|spineshatter"] = { 2, 0, 17, 105 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 309 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 309 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 105 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 105 },
		},
		[2] = {
			["Ironhound|spineshatter"] = { 2, 0, 12, 20 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Zanven|spineshatter"] = { 18, 13, -41, 5 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 214 },
			["Hurtie|spineshatter"] = { 11, 5, 49, 105 },
			["Everlost|spineshatter"] = { 9, 5, 2, 29 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 105 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 105 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 82 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 507 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 465 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 429 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 524 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 523 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 105 },
			["Forksache|spineshatter"] = { 2, 0, 17, 105 },
			["Foúr|spineshatter"] = { 0, 2, -21, 465 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 309 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 309 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 105 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 105 },
		},
		[2] = {
			["Ironhound|spineshatter"] = { 2, 0, 12, 20 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Zanven|spineshatter"] = { 24, 21, -91, 5 },
			["Everlost|spineshatter"] = { 11, 9, -4, 29 },
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 1350 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 214 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 1365 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 1365 },
			["Hurtie|spineshatter"] = { 11, 5, 49, 105 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 105 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 105 },
			["Bimbolo|spineshatter"] = { 5, 5, -24, 429 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 1383 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 82 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 1384 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 1257 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 1365 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 1257 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 1185 },
			["Farsaroga|spineshatter"] = { 3, 5, -10, 105 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 507 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 465 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 524 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 523 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 1349 },
			["Forksache|spineshatter"] = { 2, 0, 17, 105 },
			["Foúr|spineshatter"] = { 0, 2, -21, 465 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 309 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 309 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 105 },
			["Exehn|spineshatter"] = { 1, 0, 1, 1328 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 105 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 1185 },
		},
		[2] = {
			["Ironhound|spineshatter"] = { 2, 0, 12, 20 },
		},
	},
}

