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
	built = 1795604357,
	builtText = "2026-11-25 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Riotx|spineshatter"] = { 2, 2, -12, 345 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 345 },
			["Aethèl|spineshatter"] = { 1, 0, 9, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 18, 16, -57, 664 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 705 },
			["Vannah|spineshatter"] = { 17, 13, -26, 717 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 615 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 705 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 705 },
			["Neore|thunderstrike"] = { 7, 11, -87, 705 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 705 },
			["Сократ|anniversary"] = { 10, 8, -2, 609 },
			["Pinkwidow|spineshatter"] = { 9, 7, 8, 710 },
			["Bimbolo|spineshatter"] = { 8, 7, -23, 663 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 644 },
			["Zanven|spineshatter"] = { 12, 3, 111, 642 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 705 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 705 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 668 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 434 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 705 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 705 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 705 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 663 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 525 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 660 },
			["Riotx|spineshatter"] = { 6, 4, -9, 345 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 345 },
			["Brubru|spineshatter"] = { 0, 3, -16, 425 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 345 },
		},
		[3] = {
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 695 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 663 },
			["Vemma|spineshatter"] = { 10, 0, 46, 678 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 664 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 710 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 705 },
			["Vannah|spineshatter"] = { 17, 13, -26, 717 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 615 },
			["Сократ|anniversary"] = { 16, 13, -5, 609 },
			["Bimbolo|spineshatter"] = { 13, 11, -36, 663 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 705 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 705 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 843 },
			["Neore|thunderstrike"] = { 7, 11, -87, 705 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 705 },
			["Doko|spineshatter"] = { 13, 2, 91, 924 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 644 },
			["Walida|spineshatter"] = { 13, 2, 91, 981 },
			["Zanven|spineshatter"] = { 12, 3, 111, 642 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 705 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 705 },
			["Maxj|spineshatter"] = { 8, 6, 12, 913 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 747 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 747 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 668 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 753 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 434 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 794 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 792 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 763 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 705 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 705 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 705 },
			["Zizzap|spineshatter"] = { 8, 3, 19, 821 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 885 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 663 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 1007 },
			["Dominus|spineshatter"] = { 6, 4, 19, 1008 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 850 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 885 },
			["Firaa|spineshatter"] = { 6, 4, -27, 899 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 821 },
			["Interscope|spineshatter"] = { 7, 3, 63, 819 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 781 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 525 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 781 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 660 },
			["Riotx|spineshatter"] = { 6, 4, -9, 345 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 850 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 777 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 777 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 885 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 954 },
			["Klissang|spineshatter"] = { 7, 2, 57, 885 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 799 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 934 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 345 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 821 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 933 },
			["Brubru|spineshatter"] = { 0, 3, -16, 425 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 345 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 781 },
			["Rhythmictwo|spineshatter"] = { 3, 0, 29, 997 },
			["Zlodey|spineshatter"] = { 3, 0, 29, 997 },
			["Praysx|spineshatter"] = { 0, 2, -41, 965 },
			["Mblol|spineshatter"] = { 1, 0, 2, 1125 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 1110 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 838 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 790 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 933 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 934 },
			["Praysx|spineshatter"] = { 6, 1, 17, 965 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 885 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 885 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 885 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 695 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 663 },
			["Bonjohny|spineshatter"] = { 9, 1, 35, 933 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 934 },
			["Scratm|spineshatter"] = { 9, 1, 10, 1018 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 892 },
			["Vemma|spineshatter"] = { 10, 0, 46, 678 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 885 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 898 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 898 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 885 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 705 },
		},
	},
}

