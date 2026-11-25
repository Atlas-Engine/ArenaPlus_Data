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
	built = 1795622365,
	builtText = "2026-11-25 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Riotx|spineshatter"] = { 2, 2, -12, 645 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 645 },
			["Aethèl|spineshatter"] = { 1, 0, 9, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 964 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 1010 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 1005 },
			["Vannah|spineshatter"] = { 17, 13, -26, 1018 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 916 },
			["Сократ|anniversary"] = { 16, 13, -5, 909 },
			["Bimbolo|spineshatter"] = { 13, 11, -36, 964 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 1005 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 1005 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 1143 },
			["Neore|thunderstrike"] = { 7, 11, -87, 1005 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 1005 },
			["Doko|spineshatter"] = { 13, 2, 91, 1224 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 944 },
			["Walida|spineshatter"] = { 13, 2, 91, 1282 },
			["Zanven|spineshatter"] = { 12, 3, 111, 942 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 1005 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 1005 },
			["Maxj|spineshatter"] = { 8, 6, 12, 1213 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 1047 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 1047 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 968 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 1053 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 734 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 1094 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 1092 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 1063 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 1005 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 1005 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 1005 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 1186 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 963 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 1307 },
			["Dominus|spineshatter"] = { 6, 4, 19, 1309 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 1150 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 1185 },
			["Firaa|spineshatter"] = { 6, 4, -27, 1200 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 1121 },
			["Interscope|spineshatter"] = { 7, 3, 63, 1119 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 1081 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 825 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 1081 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 960 },
			["Riotx|spineshatter"] = { 6, 4, -9, 645 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 1150 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 1077 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 1077 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 1185 },
			["Zizzap|spineshatter"] = { 8, 2, 39, 1121 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 1255 },
			["Klissang|spineshatter"] = { 7, 2, 57, 1185 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 1099 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 1234 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 645 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 1121 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 1233 },
			["Brubru|spineshatter"] = { 0, 3, -16, 725 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 645 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 1081 },
			["Praysx|spineshatter"] = { 0, 2, -41, 1265 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 1297 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 1297 },
			["Mblol|spineshatter"] = { 1, 0, 2, 1425 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 1410 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 1138 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 1090 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 1233 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 1234 },
			["Praysx|spineshatter"] = { 6, 1, 17, 1265 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 1185 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 1185 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 1185 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 995 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 964 },
			["Bonjohny|spineshatter"] = { 9, 1, 35, 1233 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 1234 },
			["Scratm|spineshatter"] = { 9, 1, 10, 1318 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 1192 },
			["Vemma|spineshatter"] = { 10, 0, 46, 979 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 1185 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 1198 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 1199 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 1185 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 1005 },
		},
	},
}

