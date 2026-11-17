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
	built = 1794902361,
	builtText = "2026-11-17 02:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 345 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 349 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 549 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 672 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 467 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 345 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 349 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 630 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 630 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 525 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 525 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 570 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 569 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 466 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 519 },
			["Almeri|spineshatter"] = { 4, 3, -26, 705 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 705 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 610 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 610 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 525 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 564 },
			["Mdmaxlockx|spineshatter"] = { 4, 2, 33, 590 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 510 },
			["Everlost|spineshatter"] = { 3, 1, 15, 476 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 473 },
			["Karoups|spineshatter"] = { 1, 1, -9, 672 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 705 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 705 },
			["Minð|thunderstrike"] = { 1, 0, 2, 705 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 705 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 705 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 705 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 563 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 549 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 672 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 467 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 814 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 815 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 345 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 349 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 630 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 569 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 630 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 525 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 525 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 570 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 821 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 466 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 590 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 885 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 519 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 816 },
			["Almeri|spineshatter"] = { 4, 3, -26, 705 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 705 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 610 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 610 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 525 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 564 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 854 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 510 },
			["Everlost|spineshatter"] = { 3, 1, 15, 476 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 473 },
			["Karoups|spineshatter"] = { 1, 1, -9, 672 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 826 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 783 },
			["Oldp|spineshatter"] = { 0, 2, -30, 783 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 824 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 839 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 705 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 705 },
			["Minð|thunderstrike"] = { 1, 0, 2, 705 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 705 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 705 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 705 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 563 },
		},
	},
}

