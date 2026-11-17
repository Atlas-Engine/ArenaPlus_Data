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
	built = 1794934764,
	builtText = "2026-11-17 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Icehell|spineshatter"] = { 3, 0, 22, 26 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 48 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 48 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Icehell|spineshatter"] = { 3, 0, 22, 26 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 48 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 48 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 252 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 242 },
			["Icehell|spineshatter"] = { 3, 0, 22, 26 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 48 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 48 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 252 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 242 },
			["Icehell|spineshatter"] = { 3, 0, 22, 26 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 48 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 48 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 1089 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 1212 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 1007 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 1354 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 1355 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 885 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 889 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 1170 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 1110 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 1170 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 1065 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 1065 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 1110 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 1361 },
			["Djznx|thunderstrike"] = { 8, 2, 1, 252 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 1006 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 242 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 1130 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 1425 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 1059 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 1356 },
			["Almeri|spineshatter"] = { 4, 3, -26, 1245 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 1245 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 1150 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 1150 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 1065 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 1104 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 1394 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 1050 },
			["Everlost|spineshatter"] = { 3, 1, 15, 1016 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 1013 },
			["Icehell|spineshatter"] = { 3, 0, 22, 26 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 48 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 48 },
			["Karoups|spineshatter"] = { 1, 1, -9, 1212 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 1366 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 1323 },
			["Oldp|spineshatter"] = { 0, 2, -30, 1323 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 1364 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 1380 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 1245 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 1245 },
			["Minð|thunderstrike"] = { 1, 0, 2, 1245 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 1245 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 1245 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 1245 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 1103 },
		},
	},
}

