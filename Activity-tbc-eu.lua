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
	built = 1794923973,
	builtText = "2026-11-17 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 73 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 62 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 73 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 62 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 706 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 709 },
			["Djznx|thunderstrike"] = { 8, 2, 1, 73 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 62 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 909 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 1032 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 828 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 1174 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 1175 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 706 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 709 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 990 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 930 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 991 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 886 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 886 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 930 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 1181 },
			["Djznx|thunderstrike"] = { 8, 2, 1, 73 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 826 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 62 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 950 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 1246 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 879 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 1176 },
			["Almeri|spineshatter"] = { 4, 3, -26, 1066 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 1066 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 970 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 970 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 886 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 925 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 1214 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 870 },
			["Everlost|spineshatter"] = { 3, 1, 15, 836 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 833 },
			["Karoups|spineshatter"] = { 1, 1, -9, 1032 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 1186 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 1143 },
			["Oldp|spineshatter"] = { 0, 2, -30, 1143 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 1184 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 1200 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 1066 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 1066 },
			["Minð|thunderstrike"] = { 1, 0, 2, 1066 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 1066 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 1066 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 1066 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 923 },
		},
	},
}

