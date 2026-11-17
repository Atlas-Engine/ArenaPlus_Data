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
	built = 1794898762,
	builtText = "2026-11-17 01:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 285 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 289 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 489 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 612 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 407 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 285 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 289 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 570 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 570 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 465 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 465 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 510 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 509 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 406 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 530 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 459 },
			["Almeri|spineshatter"] = { 4, 3, -26, 645 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 645 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 550 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 550 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 465 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 504 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 450 },
			["Everlost|spineshatter"] = { 3, 1, 15, 416 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 413 },
			["Karoups|spineshatter"] = { 1, 1, -9, 612 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 645 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 645 },
			["Minð|thunderstrike"] = { 1, 0, 2, 645 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 645 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 645 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 645 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 503 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 489 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 612 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 407 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 754 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 755 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 285 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 289 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 570 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 509 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 570 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 465 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 465 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 510 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 761 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 406 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 530 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 825 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 459 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 756 },
			["Almeri|spineshatter"] = { 4, 3, -26, 645 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 645 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 550 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 550 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 465 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 504 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 794 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 450 },
			["Everlost|spineshatter"] = { 3, 1, 15, 416 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 413 },
			["Karoups|spineshatter"] = { 1, 1, -9, 612 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 766 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 723 },
			["Oldp|spineshatter"] = { 0, 2, -30, 723 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 764 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 779 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 645 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 645 },
			["Minð|thunderstrike"] = { 1, 0, 2, 645 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 645 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 645 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 645 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 503 },
		},
	},
}

