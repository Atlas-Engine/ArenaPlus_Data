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
	built = 1794909563,
	builtText = "2026-11-17 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 14, 6, 17, 587 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 465 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 469 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 690 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 690 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 586 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 639 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 645 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 684 },
			["Izabelyrg|spineshatter"] = { 3, 3, 4, 669 },
			["Mdmaxlockx|spineshatter"] = { 4, 2, 33, 710 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 630 },
			["Everlost|spineshatter"] = { 3, 1, 15, 596 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 593 },
			["Eaxlow|thunderstrike"] = { 2, 0, 6, 645 },
			["Seeyalolz|thunderstrike"] = { 2, 0, 8, 645 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 683 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 669 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 792 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 587 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 934 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 935 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 465 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 469 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 750 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 690 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 750 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 645 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 645 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 690 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 941 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 586 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 710 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 1005 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 639 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 936 },
			["Almeri|spineshatter"] = { 4, 3, -26, 825 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 825 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 730 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 730 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 645 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 684 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 974 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 630 },
			["Everlost|spineshatter"] = { 3, 1, 15, 596 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 593 },
			["Karoups|spineshatter"] = { 1, 1, -9, 792 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 946 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 903 },
			["Oldp|spineshatter"] = { 0, 2, -30, 903 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 944 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 959 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 825 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 825 },
			["Minð|thunderstrike"] = { 1, 0, 2, 825 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 825 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 825 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 825 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 683 },
		},
	},
}

