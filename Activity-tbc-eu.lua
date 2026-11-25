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
	built = 1795633162,
	builtText = "2026-11-25 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 34 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 34 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 34 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 1144 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 1190 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 1185 },
			["Vannah|spineshatter"] = { 17, 13, -26, 1197 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 1096 },
			["Сократ|anniversary"] = { 16, 13, -5, 1089 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 1185 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 1185 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 1323 },
			["Neore|thunderstrike"] = { 7, 11, -87, 1185 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 1185 },
			["Bimbolo|spineshatter"] = { 8, 7, -23, 1143 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 1124 },
			["Zanven|spineshatter"] = { 12, 3, 111, 1122 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 1185 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 1185 },
			["Maxj|spineshatter"] = { 8, 6, 12, 1393 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 1227 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 1227 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 1148 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 1233 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 914 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 1274 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 1272 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 1243 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 1185 },
			["Doko|spineshatter"] = { 10, 1, 70, 1404 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 1185 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 1185 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 1365 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 1143 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 1330 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 1365 },
			["Firaa|spineshatter"] = { 6, 4, -27, 1380 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 1301 },
			["Interscope|spineshatter"] = { 7, 3, 63, 1299 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 1261 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 1005 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 1261 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 1140 },
			["Riotx|spineshatter"] = { 6, 4, -9, 825 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 1330 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 1257 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 1257 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 1365 },
			["Zizzap|spineshatter"] = { 8, 2, 39, 1301 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 1435 },
			["Klissang|spineshatter"] = { 7, 2, 57, 1365 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 34 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 1279 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 1414 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 825 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 1301 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 1413 },
			["Brubru|spineshatter"] = { 0, 3, -16, 905 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 825 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 1261 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 1318 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 1270 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 1413 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 1414 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 1365 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 1365 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 1365 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 1175 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 1143 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 1372 },
			["Vemma|spineshatter"] = { 10, 0, 46, 1159 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 1365 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 1378 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 1379 },
			["Bonjohny|spineshatter"] = { 5, 1, 13, 1413 },
			["Mdmaxlockx|spineshatter"] = { 5, 1, 9, 1414 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 1365 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 1185 },
		},
	},
}

