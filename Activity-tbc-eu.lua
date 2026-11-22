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
	built = 1795381165,
	builtText = "2026-11-22 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Hurtie|spineshatter"] = { 11, 5, 49, 45 },
			["Zanven|spineshatter"] = { 11, 5, -19, 45 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 45 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 45 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 22 },
			["Everlost|spineshatter"] = { 1, 1, -11, 45 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 45 },
			["Forksache|spineshatter"] = { 2, 0, 17, 45 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 45 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Hurtie|spineshatter"] = { 11, 5, 49, 45 },
			["Zanven|spineshatter"] = { 11, 5, -19, 45 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 45 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 45 },
			["Cinthya|spineshatter"] = { 8, 2, 4, 154 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 22 },
			["Everlost|spineshatter"] = { 1, 1, -11, 45 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 45 },
			["Forksache|spineshatter"] = { 2, 0, 17, 45 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 45 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cinthya|spineshatter"] = { 13, 3, 44, 154 },
			["Hurtie|spineshatter"] = { 11, 5, 49, 45 },
			["Zanven|spineshatter"] = { 11, 5, -19, 45 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 45 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 45 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 22 },
			["Everlost|spineshatter"] = { 1, 1, -11, 45 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 45 },
			["Forksache|spineshatter"] = { 2, 0, 17, 45 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 249 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 249 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 45 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cinthya|spineshatter"] = { 13, 3, 44, 154 },
			["Hurtie|spineshatter"] = { 11, 5, 49, 45 },
			["Zanven|spineshatter"] = { 11, 5, -19, 45 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 45 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 45 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 22 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 447 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 405 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 369 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 464 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 463 },
			["Everlost|spineshatter"] = { 1, 1, -11, 45 },
			["Farsaroga|spineshatter"] = { 1, 1, -9, 45 },
			["Forksache|spineshatter"] = { 2, 0, 17, 45 },
			["Foúr|spineshatter"] = { 0, 2, -21, 405 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 249 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 249 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 45 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Zanven|spineshatter"] = { 17, 13, -69, 45 },
			["Bimbolo|spineshatter"] = { 7, 12, -102, 369 },
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 1290 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 154 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 1305 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 1305 },
			["Hurtie|spineshatter"] = { 11, 5, 49, 45 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 45 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 45 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 1323 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 22 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 1324 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 1197 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 1305 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 1397 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 1197 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 1125 },
			["Everlost|spineshatter"] = { 3, 5, -17, 45 },
			["Farsaroga|spineshatter"] = { 3, 5, -10, 45 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 1396 },
			["Klinden|spineshatter"] = { 6, 1, 30, 1396 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 447 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 405 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 464 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 463 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 1289 },
			["Forksache|spineshatter"] = { 2, 0, 17, 45 },
			["Foúr|spineshatter"] = { 0, 2, -21, 405 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 249 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 249 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 45 },
			["Exehn|spineshatter"] = { 1, 0, 1, 1269 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 45 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 1125 },
		},
	},
}

