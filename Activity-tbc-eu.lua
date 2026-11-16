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
	built = 1794855561,
	builtText = "2026-11-16 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lyswr|spineshatter"] = { 9, 1, 65, 34 },
			["Zalguu|spineshatter"] = { 9, 1, 65, 35 },
			["Agaj|thunderstrike"] = { 4, 5, -45, 41 },
			["Zapahsexa|thunderstrike"] = { 4, 5, -46, 36 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 46 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 44 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 59 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Lyswr|spineshatter"] = { 14, 2, 90, 34 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 35 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 41 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 105 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 36 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 74 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 46 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 44 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 59 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 6, 116 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lyswr|spineshatter"] = { 14, 2, 90, 34 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 35 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 41 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 105 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 36 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 74 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 46 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 44 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 59 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 6, 116 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lyswr|spineshatter"] = { 14, 2, 90, 34 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 35 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 41 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 105 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 36 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 74 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 46 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 44 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 59 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 6, 116 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 1090 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 1091 },
			["Vidykravicka|thunderstrike"] = { 17, 7, 91, 116 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 1266 },
			["Сократ|anniversary"] = { 12, 10, -31, 1268 },
			["Everlost|spineshatter"] = { 13, 7, 27, 1139 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 1365 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 1138 },
			["Primár|spineshatter"] = { 9, 9, -33, 1244 },
			["Therín|spineshatter"] = { 9, 9, 18, 1217 },
			["Mfkaxx|spineshatter"] = { 10, 7, 119, 1123 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 34 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 35 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 1319 },
			["Flobby|spineshatter"] = { 10, 5, 31, 1185 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 1185 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 1320 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 1287 },
			["Ellilol|thunderstrike"] = { 10, 3, 74, 1429 },
			["Twatcatcher|spineshatter"] = { 11, 2, 85, 1365 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 1195 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 1365 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 1365 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 1185 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 41 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 1291 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 105 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 1111 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 1109 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 36 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 1185 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 1342 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 1152 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 1152 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 1345 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 74 },
			["Keepdistance|spineshatter"] = { 4, 2, -1, 46 },
			["Mblol|spineshatter"] = { 3, 3, 6, 1311 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 1328 },
			["Radamsa|spineshatter"] = { 4, 2, -1, 44 },
			["Garad|spineshatter"] = { 4, 1, 21, 1185 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 1336 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 1335 },
			["Karoups|spineshatter"] = { 1, 4, -33, 1388 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 1385 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 1255 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 1185 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 1185 },
			["Brubru|spineshatter"] = { 0, 2, -38, 1365 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 59 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 1185 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 1185 },
		},
	},
}

