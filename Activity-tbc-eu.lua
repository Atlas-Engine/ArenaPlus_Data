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
	built = 1795611562,
	builtText = "2026-11-25 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 554 },
			["Riotx|spineshatter"] = { 6, 4, -9, 465 },
			["Meziljie|spineshatter"] = { 3, 3, 2, 645 },
			["Aethèl|spineshatter"] = { 3, 0, 29, 465 },
			["Brubru|spineshatter"] = { 0, 3, -16, 545 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 465 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 784 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 830 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 825 },
			["Vannah|spineshatter"] = { 17, 13, -26, 837 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 736 },
			["Сократ|anniversary"] = { 16, 13, -5, 729 },
			["Bimbolo|spineshatter"] = { 13, 11, -36, 783 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 825 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 825 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 963 },
			["Neore|thunderstrike"] = { 7, 11, -87, 825 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 825 },
			["Doko|spineshatter"] = { 13, 2, 91, 1044 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 764 },
			["Walida|spineshatter"] = { 13, 2, 91, 1102 },
			["Zanven|spineshatter"] = { 12, 3, 111, 762 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 825 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 825 },
			["Maxj|spineshatter"] = { 8, 6, 12, 1033 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 867 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 867 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 788 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 873 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 554 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 914 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 912 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 883 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 825 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 825 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 825 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 1005 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 783 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 1127 },
			["Dominus|spineshatter"] = { 6, 4, 19, 1129 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 970 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 1005 },
			["Firaa|spineshatter"] = { 6, 4, -27, 1020 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 941 },
			["Interscope|spineshatter"] = { 7, 3, 63, 939 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 901 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 645 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 901 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 780 },
			["Riotx|spineshatter"] = { 6, 4, -9, 465 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 970 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 897 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 897 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 1005 },
			["Zizzap|spineshatter"] = { 8, 2, 39, 941 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 1075 },
			["Klissang|spineshatter"] = { 7, 2, 57, 1005 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 919 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 1054 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 465 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 941 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 1053 },
			["Brubru|spineshatter"] = { 0, 3, -16, 545 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 465 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 901 },
			["Praysx|spineshatter"] = { 0, 2, -41, 1085 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 1117 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 1117 },
			["Mblol|spineshatter"] = { 1, 0, 2, 1245 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 1230 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 958 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 910 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 1053 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 1054 },
			["Praysx|spineshatter"] = { 6, 1, 17, 1085 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 1005 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 1005 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 1005 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 815 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 783 },
			["Bonjohny|spineshatter"] = { 9, 1, 35, 1053 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 1054 },
			["Scratm|spineshatter"] = { 9, 1, 10, 1138 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 1012 },
			["Vemma|spineshatter"] = { 10, 0, 46, 799 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 1005 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 1018 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 1019 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 1005 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 825 },
		},
	},
}

