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
	built = 1794891564,
	builtText = "2026-11-16 11:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 165 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 169 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 14, 6, 17, 287 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 165 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 169 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 286 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 339 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 345 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 330 },
			["Everlost|spineshatter"] = { 3, 1, 15, 296 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 293 },
			["Eaxlow|thunderstrike"] = { 2, 0, 6, 345 },
			["Seeyalolz|thunderstrike"] = { 2, 0, 8, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 369 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 492 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 287 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 634 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 635 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 165 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 169 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 450 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 390 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 450 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 345 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 345 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 390 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 641 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 286 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 410 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 705 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 339 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 636 },
			["Almeri|spineshatter"] = { 4, 3, -26, 525 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 525 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 430 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 430 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 345 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 384 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 674 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 330 },
			["Everlost|spineshatter"] = { 3, 1, 15, 296 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 293 },
			["Karoups|spineshatter"] = { 1, 1, -9, 492 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 646 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 603 },
			["Oldp|spineshatter"] = { 0, 2, -30, 603 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 644 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 660 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 525 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 525 },
			["Minð|thunderstrike"] = { 1, 0, 2, 525 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 525 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 525 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 525 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 383 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 369 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 492 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 287 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 634 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 635 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 165 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 169 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 450 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 390 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 450 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 345 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 345 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 390 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 641 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 286 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 410 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 705 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 339 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 636 },
			["Almeri|spineshatter"] = { 4, 3, -26, 525 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 525 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 430 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 430 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 345 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 384 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 674 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 330 },
			["Everlost|spineshatter"] = { 3, 1, 15, 296 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 293 },
			["Karoups|spineshatter"] = { 1, 1, -9, 492 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 646 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 603 },
			["Oldp|spineshatter"] = { 0, 2, -30, 603 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 644 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 660 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 525 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 525 },
			["Minð|thunderstrike"] = { 1, 0, 2, 525 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 525 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 525 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 525 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 383 },
		},
	},
}

