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
	built = 1794916761,
	builtText = "2026-11-17 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 585 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 589 },
			["Lifeburst|spineshatter"] = { 10, 2, 43, 707 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 706 },
			["Everlost|spineshatter"] = { 3, 1, 15, 716 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 713 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 789 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 912 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 707 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 1054 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 1055 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 585 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 589 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 870 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 809 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 870 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 765 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 765 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 810 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 1061 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 706 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 830 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 1125 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 759 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 1056 },
			["Almeri|spineshatter"] = { 4, 3, -26, 945 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 945 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 850 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 850 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 765 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 804 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 1094 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 750 },
			["Everlost|spineshatter"] = { 3, 1, 15, 716 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 713 },
			["Karoups|spineshatter"] = { 1, 1, -9, 912 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 1066 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 1023 },
			["Oldp|spineshatter"] = { 0, 2, -30, 1023 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 1064 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 1079 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 945 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 945 },
			["Minð|thunderstrike"] = { 1, 0, 2, 945 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 945 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 945 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 945 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 803 },
		},
	},
}

