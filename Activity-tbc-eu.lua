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
	built = 1795625963,
	builtText = "2026-11-25 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Riotx|spineshatter"] = { 2, 2, -12, 705 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 705 },
			["Aethèl|spineshatter"] = { 1, 0, 9, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 1024 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 1070 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 1065 },
			["Vannah|spineshatter"] = { 17, 13, -26, 1077 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 976 },
			["Сократ|anniversary"] = { 16, 13, -5, 969 },
			["Bimbolo|spineshatter"] = { 13, 11, -36, 1024 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 1065 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 1065 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 1203 },
			["Neore|thunderstrike"] = { 7, 11, -87, 1065 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 1065 },
			["Doko|spineshatter"] = { 13, 2, 91, 1284 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 1004 },
			["Walida|spineshatter"] = { 13, 2, 91, 1342 },
			["Zanven|spineshatter"] = { 12, 3, 111, 1002 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 1065 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 1065 },
			["Maxj|spineshatter"] = { 8, 6, 12, 1273 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 1107 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 1107 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 1028 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 1113 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 794 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 1154 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 1152 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 1123 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 1065 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 1065 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 1065 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 1245 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 1023 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 1367 },
			["Dominus|spineshatter"] = { 6, 4, 19, 1369 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 1210 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 1245 },
			["Firaa|spineshatter"] = { 6, 4, -27, 1260 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 1181 },
			["Interscope|spineshatter"] = { 7, 3, 63, 1179 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 1141 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 885 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 1141 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 1020 },
			["Riotx|spineshatter"] = { 6, 4, -9, 705 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 1210 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 1137 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 1137 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 1245 },
			["Zizzap|spineshatter"] = { 8, 2, 39, 1181 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 1315 },
			["Klissang|spineshatter"] = { 7, 2, 57, 1245 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 1159 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 1294 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 705 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 1181 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 1293 },
			["Brubru|spineshatter"] = { 0, 3, -16, 785 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 705 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 1141 },
			["Praysx|spineshatter"] = { 0, 2, -41, 1325 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 1357 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 1357 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 1198 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 1150 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 1293 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 1294 },
			["Praysx|spineshatter"] = { 6, 1, 17, 1325 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 1245 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 1245 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 1245 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 1055 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 1024 },
			["Bonjohny|spineshatter"] = { 9, 1, 35, 1293 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 1294 },
			["Scratm|spineshatter"] = { 9, 1, 10, 1378 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 1252 },
			["Vemma|spineshatter"] = { 10, 0, 46, 1039 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 1245 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 1258 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 1259 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 1245 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 1065 },
		},
	},
}

