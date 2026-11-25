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
	built = 1795629564,
	builtText = "2026-11-25 12:59 PM",
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
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 1084 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 1130 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 1125 },
			["Vannah|spineshatter"] = { 17, 13, -26, 1138 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 1036 },
			["Сократ|anniversary"] = { 16, 13, -5, 1029 },
			["Bimbolo|spineshatter"] = { 13, 11, -36, 1084 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 1125 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 1125 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 1263 },
			["Neore|thunderstrike"] = { 7, 11, -87, 1125 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 1125 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 1064 },
			["Zanven|spineshatter"] = { 12, 3, 111, 1062 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 1125 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 1125 },
			["Maxj|spineshatter"] = { 8, 6, 12, 1333 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 1167 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 1167 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 1088 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 1173 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 854 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 1214 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 1212 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 1183 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 1125 },
			["Doko|spineshatter"] = { 10, 1, 70, 1344 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 1125 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 1125 },
			["Walida|spineshatter"] = { 10, 1, 70, 1402 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 1305 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 1083 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 1427 },
			["Dominus|spineshatter"] = { 6, 4, 19, 1429 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 1270 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 1305 },
			["Firaa|spineshatter"] = { 6, 4, -27, 1320 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 1241 },
			["Interscope|spineshatter"] = { 7, 3, 63, 1239 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 1201 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 945 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 1201 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 1080 },
			["Riotx|spineshatter"] = { 6, 4, -9, 765 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 1270 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 1197 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 1197 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 1305 },
			["Zizzap|spineshatter"] = { 8, 2, 39, 1241 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 1375 },
			["Klissang|spineshatter"] = { 7, 2, 57, 1305 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 1219 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 1354 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 765 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 1241 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 1353 },
			["Brubru|spineshatter"] = { 0, 3, -16, 845 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 765 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 1201 },
			["Praysx|spineshatter"] = { 0, 2, -41, 1385 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 1417 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 1417 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 1258 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 1210 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 1353 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 1354 },
			["Praysx|spineshatter"] = { 6, 1, 17, 1385 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 1305 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 1305 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 1305 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 1115 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 1084 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 1312 },
			["Vemma|spineshatter"] = { 10, 0, 46, 1099 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 1305 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 1318 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 1319 },
			["Bonjohny|spineshatter"] = { 5, 1, 13, 1353 },
			["Mdmaxlockx|spineshatter"] = { 5, 1, 9, 1354 },
			["Scratm|spineshatter"] = { 5, 1, -6, 1438 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 1305 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 1125 },
		},
	},
}

