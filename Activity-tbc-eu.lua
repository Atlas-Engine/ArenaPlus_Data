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
	built = 1794859162,
	builtText = "2026-11-16 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Lyswr|spineshatter"] = { 14, 2, 90, 94 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 95 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 101 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 165 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 96 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 134 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 106 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 63 },
			["Oldp|spineshatter"] = { 0, 2, -30, 63 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 104 },
			["Vidykravicka|thunderstrike"] = { 1, 1, -6, 62 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 119 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lyswr|spineshatter"] = { 14, 2, 90, 94 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 95 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 101 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 165 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 96 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 134 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 106 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 63 },
			["Oldp|spineshatter"] = { 0, 2, -30, 63 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 104 },
			["Vidykravicka|thunderstrike"] = { 1, 1, -6, 62 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 119 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lyswr|spineshatter"] = { 14, 2, 90, 94 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 95 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 101 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 165 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 96 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 134 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 106 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 63 },
			["Oldp|spineshatter"] = { 0, 2, -30, 63 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 104 },
			["Vidykravicka|thunderstrike"] = { 1, 1, -6, 62 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 119 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 1150 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 1151 },
			["Everlost|spineshatter"] = { 13, 7, 27, 1199 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 1425 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 1198 },
			["Primár|spineshatter"] = { 9, 9, -33, 1304 },
			["Therín|spineshatter"] = { 9, 9, 18, 1277 },
			["Mfkaxx|spineshatter"] = { 10, 7, 119, 1183 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 94 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 95 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 1379 },
			["Flobby|spineshatter"] = { 10, 5, 31, 1245 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 1245 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 1380 },
			["Vidykravicka|thunderstrike"] = { 10, 5, 35, 62 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 1347 },
			["Пиноккио|anniversary"] = { 8, 6, -1, 1326 },
			["Сократ|anniversary"] = { 8, 6, -1, 1328 },
			["Twatcatcher|spineshatter"] = { 11, 2, 85, 1425 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 1255 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 1425 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 1425 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 1245 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 101 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 1351 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 165 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 1171 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 1169 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 96 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 1245 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 1402 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 1212 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 1212 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 1405 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 134 },
			["Mblol|spineshatter"] = { 3, 3, 6, 1371 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 1388 },
			["Garad|spineshatter"] = { 4, 1, 21, 1245 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 1396 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 1395 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 1315 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 1245 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 1245 },
			["Brubru|spineshatter"] = { 0, 2, -38, 1425 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 106 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 63 },
			["Oldp|spineshatter"] = { 0, 2, -30, 63 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 104 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 119 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 1245 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 1245 },
		},
	},
}

