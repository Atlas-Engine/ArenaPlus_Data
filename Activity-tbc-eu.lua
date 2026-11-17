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
	built = 1794913162,
	builtText = "2026-11-17 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 14, 6, 17, 647 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 525 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 529 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 646 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 699 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 705 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 690 },
			["Everlost|spineshatter"] = { 3, 1, 15, 656 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 653 },
			["Eaxlow|thunderstrike"] = { 2, 0, 6, 705 },
			["Seeyalolz|thunderstrike"] = { 2, 0, 8, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 729 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 852 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 647 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 994 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 995 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 525 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 529 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 810 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 749 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 810 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 705 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 705 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 750 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 1001 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 646 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 770 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 1065 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 699 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 996 },
			["Almeri|spineshatter"] = { 4, 3, -26, 885 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 885 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 790 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 790 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 705 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 744 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 1034 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 690 },
			["Everlost|spineshatter"] = { 3, 1, 15, 656 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 653 },
			["Karoups|spineshatter"] = { 1, 1, -9, 852 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 1006 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 963 },
			["Oldp|spineshatter"] = { 0, 2, -30, 963 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 1004 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 1019 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 885 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 885 },
			["Minð|thunderstrike"] = { 1, 0, 2, 885 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 885 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 885 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 885 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 743 },
		},
	},
}

