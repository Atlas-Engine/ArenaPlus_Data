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
	built = 1794866363,
	builtText = "2026-11-16 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Plmfgbt|spineshatter"] = { 3, 3, -5, 49 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Kaelolo|spineshatter"] = { 18, 10, 79, 72 },
			["Izabelyrg|spineshatter"] = { 16, 10, 41, 65 },
			["Plmfgbt|spineshatter"] = { 6, 4, 14, 49 },
			["Eaxlow|thunderstrike"] = { 6, 3, 5, 62 },
			["Seeyalolz|thunderstrike"] = { 6, 3, 17, 61 },
			["Almeri|spineshatter"] = { 4, 3, -26, 105 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 105 },
			["Karoups|spineshatter"] = { 1, 1, -9, 72 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 105 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 105 },
			["Minð|thunderstrike"] = { 1, 0, 2, 105 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 105 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 105 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Kaelolo|spineshatter"] = { 18, 10, 79, 72 },
			["Izabelyrg|spineshatter"] = { 16, 10, 41, 65 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 214 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 215 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 221 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 285 },
			["Plmfgbt|spineshatter"] = { 6, 4, 14, 49 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 216 },
			["Eaxlow|thunderstrike"] = { 6, 3, 5, 62 },
			["Seeyalolz|thunderstrike"] = { 6, 3, 17, 61 },
			["Almeri|spineshatter"] = { 4, 3, -26, 105 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 105 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 254 },
			["Karoups|spineshatter"] = { 1, 1, -9, 72 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 226 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 183 },
			["Oldp|spineshatter"] = { 0, 2, -30, 183 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 224 },
			["Vidykravicka|thunderstrike"] = { 1, 1, -6, 182 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 239 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 105 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 105 },
			["Minð|thunderstrike"] = { 1, 0, 2, 105 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 105 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 105 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kaelolo|spineshatter"] = { 18, 10, 79, 72 },
			["Izabelyrg|spineshatter"] = { 16, 10, 41, 65 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 214 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 215 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 221 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 285 },
			["Plmfgbt|spineshatter"] = { 6, 4, 14, 49 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 216 },
			["Eaxlow|thunderstrike"] = { 6, 3, 5, 62 },
			["Seeyalolz|thunderstrike"] = { 6, 3, 17, 61 },
			["Almeri|spineshatter"] = { 4, 3, -26, 105 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 105 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 254 },
			["Karoups|spineshatter"] = { 1, 1, -9, 72 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 226 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 183 },
			["Oldp|spineshatter"] = { 0, 2, -30, 183 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 224 },
			["Vidykravicka|thunderstrike"] = { 1, 1, -6, 182 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 239 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 105 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 105 },
			["Minð|thunderstrike"] = { 1, 0, 2, 105 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 105 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 105 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Kaelolo|spineshatter"] = { 21, 14, 66, 72 },
			["Orcabrina|spineshatter"] = { 13, 18, -108, 1270 },
			["Izabelyrg|spineshatter"] = { 16, 11, 41, 65 },
			["Sustanøn|spineshatter"] = { 13, 6, 25, 1271 },
			["Everlost|spineshatter"] = { 13, 5, 58, 1319 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 1318 },
			["Seeyalolz|thunderstrike"] = { 11, 6, 24, 61 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 214 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 215 },
			["Flobby|spineshatter"] = { 10, 5, 31, 1365 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 1365 },
			["Vidykravicka|thunderstrike"] = { 10, 5, 35, 182 },
			["Eaxlow|thunderstrike"] = { 9, 5, -12, 62 },
			["Primár|spineshatter"] = { 7, 7, -17, 1424 },
			["Therín|spineshatter"] = { 7, 7, 21, 1397 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 1365 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 221 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 285 },
			["Plmfgbt|spineshatter"] = { 6, 4, 14, 49 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 1291 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 1289 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 216 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 1365 },
			["Almeri|spineshatter"] = { 4, 3, -26, 105 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 105 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 254 },
			["Garad|spineshatter"] = { 4, 1, 21, 1365 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 1435 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 1365 },
			["Mfkaxx|spineshatter"] = { 3, 1, 30, 1303 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 1365 },
			["Karoups|spineshatter"] = { 1, 1, -9, 72 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 226 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 183 },
			["Oldp|spineshatter"] = { 0, 2, -30, 183 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 224 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 239 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 1365 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 105 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 105 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 1365 },
			["Minð|thunderstrike"] = { 1, 0, 2, 105 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 105 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 105 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 105 },
		},
	},
}

