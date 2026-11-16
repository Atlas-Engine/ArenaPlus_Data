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
	built = 1794848363,
	builtText = "2026-11-16 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 970 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 1347 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 971 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 1065 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 1146 },
			["Сократ|anniversary"] = { 12, 10, -31, 1148 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 1362 },
			["Everlost|spineshatter"] = { 13, 7, 27, 1019 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 1245 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 1003 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 1245 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 1018 },
			["Primár|spineshatter"] = { 9, 9, -33, 1124 },
			["Therín|spineshatter"] = { 9, 9, 18, 1097 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 1199 },
			["Flobby|spineshatter"] = { 10, 5, 31, 1065 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 1065 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 1200 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 1167 },
			["Ellilol|thunderstrike"] = { 10, 3, 74, 1309 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 1075 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 1245 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 1245 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 1065 },
			["Adpt|spineshatter"] = { 5, 5, -8, 1321 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 1321 },
			["Dominus|spineshatter"] = { 8, 2, 41, 1425 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 1171 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 1411 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 1412 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 991 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 989 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 1065 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 1222 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 1032 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 1032 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 1225 },
			["Mblol|spineshatter"] = { 3, 3, 6, 1191 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 1208 },
			["Doko|spineshatter"] = { 3, 2, 20, 1404 },
			["Garad|spineshatter"] = { 4, 1, 21, 1065 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 1216 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 1215 },
			["Karoups|spineshatter"] = { 1, 4, -33, 1268 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 1265 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 1135 },
			["Walida|spineshatter"] = { 3, 2, 20, 1405 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 1065 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 1315 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 1297 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 1065 },
			["Brubru|spineshatter"] = { 0, 2, -38, 1245 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 1065 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 1065 },
		},
	},
}

