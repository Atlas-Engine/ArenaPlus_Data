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
	built = 1794851966,
	builtText = "2026-11-16 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 45 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 14 },
			["Lyswr|spineshatter"] = { 5, 1, 25, 44 },
			["Zalguu|spineshatter"] = { 5, 1, 25, 44 },
			["Agaj|thunderstrike"] = { 1, 0, 0, 45 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 6, 56 },
			["Zapahsexa|thunderstrike"] = { 1, 0, 0, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 45 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 14 },
			["Lyswr|spineshatter"] = { 5, 1, 25, 44 },
			["Zalguu|spineshatter"] = { 5, 1, 25, 44 },
			["Agaj|thunderstrike"] = { 1, 0, 0, 45 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 6, 56 },
			["Zapahsexa|thunderstrike"] = { 1, 0, 0, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 45 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 14 },
			["Lyswr|spineshatter"] = { 5, 1, 25, 44 },
			["Zalguu|spineshatter"] = { 5, 1, 25, 44 },
			["Agaj|thunderstrike"] = { 1, 0, 0, 45 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 6, 56 },
			["Zapahsexa|thunderstrike"] = { 1, 0, 0, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 45 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 14 },
			["Lyswr|spineshatter"] = { 5, 1, 25, 44 },
			["Zalguu|spineshatter"] = { 5, 1, 25, 44 },
			["Agaj|thunderstrike"] = { 1, 0, 0, 45 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 6, 56 },
			["Zapahsexa|thunderstrike"] = { 1, 0, 0, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 1030 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 1407 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 1031 },
			["Vidykravicka|thunderstrike"] = { 17, 7, 91, 56 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 1206 },
			["Сократ|anniversary"] = { 12, 10, -31, 1208 },
			["Everlost|spineshatter"] = { 13, 7, 27, 1079 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 1305 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 1063 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 1305 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 1078 },
			["Primár|spineshatter"] = { 9, 9, -33, 1184 },
			["Therín|spineshatter"] = { 9, 9, 18, 1157 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 1259 },
			["Flobby|spineshatter"] = { 10, 5, 31, 1125 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 1125 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 1260 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 1227 },
			["Ellilol|thunderstrike"] = { 10, 3, 74, 1369 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 1135 },
			["Dapqueue|spineshatter"] = { 6, 5, -2, 1422 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 1305 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 1305 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 1125 },
			["Adpt|spineshatter"] = { 5, 5, -8, 1381 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 1381 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 1231 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 45 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 1051 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 1049 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 1125 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 1282 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 1092 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 1092 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 1285 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 14 },
			["Lyswr|spineshatter"] = { 5, 1, 25, 44 },
			["Mblol|spineshatter"] = { 3, 3, 6, 1251 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 1268 },
			["Zalguu|spineshatter"] = { 5, 1, 25, 44 },
			["Garad|spineshatter"] = { 4, 1, 21, 1125 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 1276 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 1275 },
			["Karoups|spineshatter"] = { 1, 4, -33, 1328 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 1325 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 1195 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 1125 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 1375 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 1357 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 1125 },
			["Brubru|spineshatter"] = { 0, 2, -38, 1305 },
			["Agaj|thunderstrike"] = { 1, 0, 0, 45 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 1125 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 1125 },
			["Zapahsexa|thunderstrike"] = { 1, 0, 0, 45 },
		},
	},
}

