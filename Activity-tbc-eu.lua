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
	built = 1795607957,
	builtText = "2026-11-25 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 494 },
			["Пиноккио|anniversary"] = { 6, 6, -26, 675 },
			["Сократ|anniversary"] = { 6, 6, -26, 669 },
			["Hurtie|spineshatter"] = { 7, 3, 68, 704 },
			["Riotx|spineshatter"] = { 6, 4, -9, 405 },
			["Zanven|spineshatter"] = { 7, 3, 53, 702 },
			["Meziljie|spineshatter"] = { 3, 3, 2, 585 },
			["Notnotyou|spineshatter"] = { 3, 3, 2, 720 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 405 },
			["Brubru|spineshatter"] = { 0, 3, -16, 485 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 405 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 724 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 770 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 765 },
			["Vannah|spineshatter"] = { 17, 13, -26, 777 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 675 },
			["Сократ|anniversary"] = { 16, 13, -5, 669 },
			["Bimbolo|spineshatter"] = { 13, 11, -36, 723 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 765 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 765 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 903 },
			["Neore|thunderstrike"] = { 7, 11, -87, 765 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 765 },
			["Doko|spineshatter"] = { 13, 2, 91, 984 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 704 },
			["Walida|spineshatter"] = { 13, 2, 91, 1041 },
			["Zanven|spineshatter"] = { 12, 3, 111, 702 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 765 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 765 },
			["Maxj|spineshatter"] = { 8, 6, 12, 973 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 807 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 807 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 728 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 813 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 494 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 854 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 852 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 823 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 765 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 765 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 765 },
			["Zizzap|spineshatter"] = { 8, 3, 19, 881 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 945 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 723 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 1067 },
			["Dominus|spineshatter"] = { 6, 4, 19, 1068 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 910 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 945 },
			["Firaa|spineshatter"] = { 6, 4, -27, 959 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 881 },
			["Interscope|spineshatter"] = { 7, 3, 63, 879 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 841 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 585 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 841 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 720 },
			["Riotx|spineshatter"] = { 6, 4, -9, 405 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 910 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 837 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 837 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 945 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 1014 },
			["Klissang|spineshatter"] = { 7, 2, 57, 945 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 859 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 994 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 405 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 881 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 993 },
			["Brubru|spineshatter"] = { 0, 3, -16, 485 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 405 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 841 },
			["Rhythmictwo|spineshatter"] = { 3, 0, 29, 1057 },
			["Zlodey|spineshatter"] = { 3, 0, 29, 1057 },
			["Praysx|spineshatter"] = { 0, 2, -41, 1025 },
			["Mblol|spineshatter"] = { 1, 0, 2, 1185 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 1170 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 898 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 850 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 993 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 994 },
			["Praysx|spineshatter"] = { 6, 1, 17, 1025 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 945 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 945 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 945 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 755 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 723 },
			["Bonjohny|spineshatter"] = { 9, 1, 35, 993 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 994 },
			["Scratm|spineshatter"] = { 9, 1, 10, 1078 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 952 },
			["Vemma|spineshatter"] = { 10, 0, 46, 738 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 945 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 958 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 958 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 945 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 765 },
		},
	},
}

