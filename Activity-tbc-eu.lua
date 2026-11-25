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
	built = 1795618767,
	builtText = "2026-11-25 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Iggysmalls|spineshatter"] = { 3, 1, 10, 674 },
			["Riotx|spineshatter"] = { 2, 2, -12, 585 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 585 },
			["Aethèl|spineshatter"] = { 1, 0, 9, 585 },
			["Brubru|spineshatter"] = { 0, 1, -5, 665 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 904 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 950 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 945 },
			["Vannah|spineshatter"] = { 17, 13, -26, 958 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 856 },
			["Сократ|anniversary"] = { 16, 13, -5, 849 },
			["Bimbolo|spineshatter"] = { 13, 11, -36, 904 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 945 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 945 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 1083 },
			["Neore|thunderstrike"] = { 7, 11, -87, 945 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 945 },
			["Doko|spineshatter"] = { 13, 2, 91, 1164 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 884 },
			["Walida|spineshatter"] = { 13, 2, 91, 1222 },
			["Zanven|spineshatter"] = { 12, 3, 111, 882 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 945 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 945 },
			["Maxj|spineshatter"] = { 8, 6, 12, 1153 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 987 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 987 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 908 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 993 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 674 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 1034 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 1032 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 1003 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 945 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 945 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 945 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 1126 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 903 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 1247 },
			["Dominus|spineshatter"] = { 6, 4, 19, 1249 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 1090 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 1125 },
			["Firaa|spineshatter"] = { 6, 4, -27, 1140 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 1061 },
			["Interscope|spineshatter"] = { 7, 3, 63, 1059 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 1021 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 765 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 1021 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 900 },
			["Riotx|spineshatter"] = { 6, 4, -9, 585 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 1090 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 1017 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 1017 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 1125 },
			["Zizzap|spineshatter"] = { 8, 2, 39, 1061 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 1195 },
			["Klissang|spineshatter"] = { 7, 2, 57, 1125 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 1039 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 1174 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 585 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 1062 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 1173 },
			["Brubru|spineshatter"] = { 0, 3, -16, 665 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 585 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 1021 },
			["Praysx|spineshatter"] = { 0, 2, -41, 1205 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 1237 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 1237 },
			["Mblol|spineshatter"] = { 1, 0, 2, 1365 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 1350 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 1078 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 1030 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 1173 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 1174 },
			["Praysx|spineshatter"] = { 6, 1, 17, 1205 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 1125 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 1125 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 1125 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 935 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 904 },
			["Bonjohny|spineshatter"] = { 9, 1, 35, 1173 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 1174 },
			["Scratm|spineshatter"] = { 9, 1, 10, 1258 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 1132 },
			["Vemma|spineshatter"] = { 10, 0, 46, 919 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 1125 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 1138 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 1139 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 1125 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 945 },
		},
	},
}

