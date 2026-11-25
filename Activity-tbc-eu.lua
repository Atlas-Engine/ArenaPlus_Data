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
	built = 1795615159,
	builtText = "2026-11-25 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 614 },
			["Riotx|spineshatter"] = { 6, 4, -9, 525 },
			["Meziljie|spineshatter"] = { 3, 3, 2, 705 },
			["Aethèl|spineshatter"] = { 3, 0, 29, 525 },
			["Brubru|spineshatter"] = { 0, 3, -16, 605 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 525 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 844 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 890 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 885 },
			["Vannah|spineshatter"] = { 17, 13, -26, 897 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 795 },
			["Сократ|anniversary"] = { 16, 13, -5, 789 },
			["Bimbolo|spineshatter"] = { 13, 11, -36, 843 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 885 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 885 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 1023 },
			["Neore|thunderstrike"] = { 7, 11, -87, 885 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 885 },
			["Doko|spineshatter"] = { 13, 2, 91, 1104 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 824 },
			["Walida|spineshatter"] = { 13, 2, 91, 1161 },
			["Zanven|spineshatter"] = { 12, 3, 111, 822 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 885 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 885 },
			["Maxj|spineshatter"] = { 8, 6, 12, 1093 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 927 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 927 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 848 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 933 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 614 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 974 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 972 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 943 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 885 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 885 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 885 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 1065 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 843 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 1187 },
			["Dominus|spineshatter"] = { 6, 4, 19, 1188 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 1030 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 1065 },
			["Firaa|spineshatter"] = { 6, 4, -27, 1079 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 1001 },
			["Interscope|spineshatter"] = { 7, 3, 63, 999 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 961 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 705 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 961 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 840 },
			["Riotx|spineshatter"] = { 6, 4, -9, 525 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 1030 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 957 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 957 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 1065 },
			["Zizzap|spineshatter"] = { 8, 2, 39, 1001 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 1134 },
			["Klissang|spineshatter"] = { 7, 2, 57, 1065 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 979 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 1114 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 525 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 1001 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 1113 },
			["Brubru|spineshatter"] = { 0, 3, -16, 605 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 525 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 961 },
			["Praysx|spineshatter"] = { 0, 2, -41, 1145 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 1177 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 1177 },
			["Mblol|spineshatter"] = { 1, 0, 2, 1305 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 1290 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 1018 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 970 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 1113 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 1114 },
			["Praysx|spineshatter"] = { 6, 1, 17, 1145 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 1065 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 1065 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 1065 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 875 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 843 },
			["Bonjohny|spineshatter"] = { 9, 1, 35, 1113 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 1114 },
			["Scratm|spineshatter"] = { 9, 1, 10, 1198 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 1072 },
			["Vemma|spineshatter"] = { 10, 0, 46, 859 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 1065 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 1078 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 1078 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 1065 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 885 },
		},
	},
}

