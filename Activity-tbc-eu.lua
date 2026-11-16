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
	built = 1794869961,
	builtText = "2026-11-16 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Senikss|thunderstrike"] = { 9, 2, 48, 30 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 29 },
			["Izabelyrg|spineshatter"] = { 3, 3, 4, 9 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 23 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 9 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 132 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 90 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 90 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 30 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 29 },
			["Plmfgbt|spineshatter"] = { 6, 4, 14, 109 },
			["Eaxlow|thunderstrike"] = { 6, 3, 5, 121 },
			["Seeyalolz|thunderstrike"] = { 6, 3, 17, 121 },
			["Almeri|spineshatter"] = { 4, 3, -26, 165 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 165 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 70 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 70 },
			["Karoups|spineshatter"] = { 1, 1, -9, 132 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 165 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 165 },
			["Minð|thunderstrike"] = { 1, 0, 2, 165 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 165 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 165 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 165 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 23 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 9 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 132 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 274 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 275 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 90 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 29 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 90 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 30 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 281 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 345 },
			["Plmfgbt|spineshatter"] = { 6, 4, 14, 109 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 276 },
			["Eaxlow|thunderstrike"] = { 6, 3, 5, 121 },
			["Seeyalolz|thunderstrike"] = { 6, 3, 17, 121 },
			["Almeri|spineshatter"] = { 4, 3, -26, 165 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 165 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 70 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 70 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 314 },
			["Karoups|spineshatter"] = { 1, 1, -9, 132 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 286 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 243 },
			["Oldp|spineshatter"] = { 0, 2, -30, 243 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 284 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 299 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 165 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 165 },
			["Minð|thunderstrike"] = { 1, 0, 2, 165 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 165 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 165 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 165 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 23 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 9 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 132 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 274 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 275 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 90 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 29 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 90 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 30 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 281 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 345 },
			["Plmfgbt|spineshatter"] = { 6, 4, 14, 109 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 276 },
			["Eaxlow|thunderstrike"] = { 6, 3, 5, 121 },
			["Seeyalolz|thunderstrike"] = { 6, 3, 17, 121 },
			["Almeri|spineshatter"] = { 4, 3, -26, 165 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 165 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 70 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 70 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 314 },
			["Karoups|spineshatter"] = { 1, 1, -9, 132 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 286 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 243 },
			["Oldp|spineshatter"] = { 0, 2, -30, 243 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 284 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 299 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 165 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 165 },
			["Minð|thunderstrike"] = { 1, 0, 2, 165 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 165 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 165 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 165 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 23 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 14, 45, 9 },
			["Orcabrina|spineshatter"] = { 13, 18, -108, 1330 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 132 },
			["Vidykravicka|thunderstrike"] = { 19, 7, 92, 29 },
			["Senikss|thunderstrike"] = { 15, 5, 58, 30 },
			["Sustanøn|spineshatter"] = { 13, 6, 25, 1331 },
			["Everlost|spineshatter"] = { 13, 5, 58, 1379 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 1378 },
			["Seeyalolz|thunderstrike"] = { 11, 6, 24, 121 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 274 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 275 },
			["Flobby|spineshatter"] = { 10, 5, 31, 1425 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 1425 },
			["Eaxlow|thunderstrike"] = { 9, 5, -12, 121 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 90 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 90 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 1425 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 281 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 345 },
			["Plmfgbt|spineshatter"] = { 6, 4, 14, 109 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 1351 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 1349 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 276 },
			["Almeri|spineshatter"] = { 4, 3, -26, 165 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 165 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 70 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 70 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 314 },
			["Garad|spineshatter"] = { 4, 1, 21, 1425 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 1425 },
			["Mfkaxx|spineshatter"] = { 3, 1, 30, 1363 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 1425 },
			["Karoups|spineshatter"] = { 1, 1, -9, 132 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 286 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 243 },
			["Oldp|spineshatter"] = { 0, 2, -30, 243 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 284 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 299 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 1425 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 165 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 165 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 1425 },
			["Minð|thunderstrike"] = { 1, 0, 2, 165 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 165 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 165 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 165 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 23 },
		},
	},
}

