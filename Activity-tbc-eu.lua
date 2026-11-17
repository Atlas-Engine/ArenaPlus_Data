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
	built = 1794920371,
	builtText = "2026-11-17 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 646 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 649 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 849 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 972 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 767 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 1114 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 1115 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 646 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 649 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 930 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 870 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 931 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 826 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 826 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 870 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 1121 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 766 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 890 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 1186 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 819 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 1116 },
			["Almeri|spineshatter"] = { 4, 3, -26, 1006 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 1006 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 910 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 910 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 826 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 865 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 1154 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 810 },
			["Everlost|spineshatter"] = { 3, 1, 15, 776 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 773 },
			["Karoups|spineshatter"] = { 1, 1, -9, 972 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 1126 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 1083 },
			["Oldp|spineshatter"] = { 0, 2, -30, 1083 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 1124 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 1140 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 1006 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 1006 },
			["Minð|thunderstrike"] = { 1, 0, 2, 1006 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 1006 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 1006 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 1006 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 863 },
		},
	},
}

