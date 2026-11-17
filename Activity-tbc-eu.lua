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
	built = 1794887965,
	builtText = "2026-11-16 10:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 105 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 109 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 14, 6, 17, 227 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 105 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 109 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 330 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 330 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 226 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 279 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 285 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 324 },
			["Izabelyrg|spineshatter"] = { 3, 3, 4, 309 },
			["Mdmaxlockx|spineshatter"] = { 4, 2, 33, 350 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 270 },
			["Everlost|spineshatter"] = { 3, 1, 15, 236 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 233 },
			["Eaxlow|thunderstrike"] = { 2, 0, 6, 285 },
			["Seeyalolz|thunderstrike"] = { 2, 0, 8, 285 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 323 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 309 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 432 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 227 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 574 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 575 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 105 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 109 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 390 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 330 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 390 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 285 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 285 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 330 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 581 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 226 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 350 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 645 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 279 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 576 },
			["Almeri|spineshatter"] = { 4, 3, -26, 465 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 465 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 370 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 370 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 285 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 324 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 614 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 270 },
			["Everlost|spineshatter"] = { 3, 1, 15, 236 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 233 },
			["Karoups|spineshatter"] = { 1, 1, -9, 432 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 586 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 543 },
			["Oldp|spineshatter"] = { 0, 2, -30, 543 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 584 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 600 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 465 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 465 },
			["Minð|thunderstrike"] = { 1, 0, 2, 465 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 465 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 465 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 465 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 323 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 309 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 432 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 227 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 574 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 575 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 105 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 109 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 390 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 330 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 390 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 285 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 285 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 330 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 581 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 226 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 350 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 645 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 279 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 576 },
			["Almeri|spineshatter"] = { 4, 3, -26, 465 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 465 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 370 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 370 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 285 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 324 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 614 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 270 },
			["Everlost|spineshatter"] = { 3, 1, 15, 236 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 233 },
			["Karoups|spineshatter"] = { 1, 1, -9, 432 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 586 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 543 },
			["Oldp|spineshatter"] = { 0, 2, -30, 543 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 584 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 600 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 465 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 465 },
			["Minð|thunderstrike"] = { 1, 0, 2, 465 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 465 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 465 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 465 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 323 },
		},
	},
}

