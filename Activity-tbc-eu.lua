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
	built = 1795636764,
	builtText = "2026-11-25 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 9, 9, -52, 8 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 9 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 52 },
			["Zanven|spineshatter"] = { 1, 0, 9, 52 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 9, 9, -52, 8 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 94 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 9 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 52 },
			["Zanven|spineshatter"] = { 1, 0, 9, 52 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 9, 9, -52, 8 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 94 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 9 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 52 },
			["Zanven|spineshatter"] = { 1, 0, 9, 52 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 9, 9, -52, 8 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 94 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 9 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 52 },
			["Zanven|spineshatter"] = { 1, 0, 9, 52 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 28, 25, -86, 9 },
			["Bimbolo|spineshatter"] = { 17, 16, -75, 8 },
			["Pinkwidow|spineshatter"] = { 16, 14, 12, 1250 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 1245 },
			["Vannah|spineshatter"] = { 17, 13, -26, 1258 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 1156 },
			["Сократ|anniversary"] = { 16, 13, -5, 1149 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 1245 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 1245 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 1383 },
			["Neore|thunderstrike"] = { 7, 11, -87, 1245 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 1245 },
			["Hurtie|spineshatter"] = { 13, 3, 144, 52 },
			["Zanven|spineshatter"] = { 13, 3, 120, 52 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 1245 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 1245 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 1287 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 1287 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 1208 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 1293 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 974 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 1334 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 1332 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 1303 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 1245 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 1245 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 1245 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 1425 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 1203 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 1390 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 1425 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 1361 },
			["Interscope|spineshatter"] = { 7, 3, 63, 1359 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 1321 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 1065 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 1321 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 1200 },
			["Riotx|spineshatter"] = { 6, 4, -9, 885 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 1390 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 1317 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 1317 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 1425 },
			["Zizzap|spineshatter"] = { 8, 2, 39, 1361 },
			["Klissang|spineshatter"] = { 7, 2, 57, 1425 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 94 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 1339 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 885 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 1361 },
			["Brubru|spineshatter"] = { 0, 3, -16, 965 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 885 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 1321 },
			["Firaa|spineshatter"] = { 1, 1, -6, 1440 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 1378 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 1330 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 1425 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 1425 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 1425 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 1235 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 1204 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 1432 },
			["Vemma|spineshatter"] = { 10, 0, 46, 1219 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 1425 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 1438 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 1439 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 1425 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 1245 },
		},
	},
}

