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
	built = 1795600758,
	builtText = "2026-11-25 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Riotx|spineshatter"] = { 2, 2, -12, 285 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 285 },
			["Aethèl|spineshatter"] = { 1, 0, 9, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 18, 16, -57, 604 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 645 },
			["Vannah|spineshatter"] = { 17, 13, -26, 657 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 555 },
			["Сократ|anniversary"] = { 16, 13, -5, 549 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 645 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 645 },
			["Neore|thunderstrike"] = { 7, 11, -87, 645 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 645 },
			["Pinkwidow|spineshatter"] = { 9, 7, 8, 650 },
			["Bimbolo|spineshatter"] = { 8, 7, -23, 603 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 584 },
			["Zanven|spineshatter"] = { 12, 3, 111, 582 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 645 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 645 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 687 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 687 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 608 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 693 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 374 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 703 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 645 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 645 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 645 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 603 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 465 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 600 },
			["Riotx|spineshatter"] = { 6, 4, -9, 285 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 717 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 717 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 285 },
			["Brubru|spineshatter"] = { 0, 3, -16, 365 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 285 },
		},
		[3] = {
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 635 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 603 },
			["Vemma|spineshatter"] = { 10, 0, 46, 618 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 25, 21, -50, 604 },
			["Pinkwidow|spineshatter"] = { 17, 14, 22, 650 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 645 },
			["Vannah|spineshatter"] = { 17, 13, -26, 657 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 555 },
			["Сократ|anniversary"] = { 16, 13, -5, 549 },
			["Bimbolo|spineshatter"] = { 13, 11, -36, 603 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 645 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 645 },
			["Rejverka|spineshatter"] = { 11, 10, 13, 783 },
			["Neore|thunderstrike"] = { 7, 11, -87, 645 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 645 },
			["Doko|spineshatter"] = { 13, 2, 91, 864 },
			["Hurtie|spineshatter"] = { 12, 3, 134, 584 },
			["Walida|spineshatter"] = { 13, 2, 91, 921 },
			["Zanven|spineshatter"] = { 12, 3, 111, 582 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 645 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 645 },
			["Maxj|spineshatter"] = { 8, 6, 12, 853 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 687 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 687 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 608 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 693 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 374 },
			["Ilovejade|spineshatter"] = { 12, 0, 55, 734 },
			["Invinciblexx|spineshatter"] = { 12, 0, 55, 732 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 703 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 645 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 645 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 645 },
			["Zizzap|spineshatter"] = { 8, 3, 19, 761 },
			["Agaj|thunderstrike"] = { 9, 1, 104, 825 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 603 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 947 },
			["Dominus|spineshatter"] = { 6, 4, 19, 948 },
			["Ellectrons|spineshatter"] = { 2, 8, -80, 790 },
			["Esoteric|thunderstrike"] = { 7, 3, 29, 825 },
			["Firaa|spineshatter"] = { 6, 4, -27, 839 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 761 },
			["Interscope|spineshatter"] = { 7, 3, 63, 759 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 721 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 465 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 721 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 600 },
			["Riotx|spineshatter"] = { 6, 4, -9, 285 },
			["Samwellx|spineshatter"] = { 2, 8, -85, 790 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 717 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 55, 717 },
			["Zapahsexa|thunderstrike"] = { 9, 1, 104, 825 },
			["Blazedx|spineshatter"] = { 7, 2, 57, 894 },
			["Klissang|spineshatter"] = { 7, 2, 57, 825 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 739 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 874 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 285 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 761 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 873 },
			["Brubru|spineshatter"] = { 0, 3, -16, 365 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 285 },
			["Grimroll|thunderstrike"] = { 1, 2, -25, 721 },
			["Rhythmictwo|spineshatter"] = { 3, 0, 29, 937 },
			["Zlodey|spineshatter"] = { 3, 0, 29, 937 },
			["Praysx|spineshatter"] = { 0, 2, -41, 905 },
			["Mblol|spineshatter"] = { 1, 0, 2, 1065 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 1050 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 778 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 730 },
			["Bonjohny|spineshatter"] = { 6, 1, 23, 873 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 874 },
			["Praysx|spineshatter"] = { 6, 1, 17, 905 },
			["Whítewolf|spineshatter"] = { 2, 0, 6, 825 },
			["Tchadow|spineshatter"] = { 0, 1, -17, 825 },
		},
		[3] = {
			["Tchadow|spineshatter"] = { 14, 2, 19, 825 },
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 635 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 603 },
			["Bonjohny|spineshatter"] = { 9, 1, 35, 873 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 874 },
			["Scratm|spineshatter"] = { 9, 1, 10, 958 },
			["Sposobniy|spineshatter"] = { 5, 5, -96, 832 },
			["Vemma|spineshatter"] = { 10, 0, 46, 618 },
			["Bouncus|spineshatter"] = { 8, 0, 25, 825 },
			["Crabzxtrapzx|spineshatter"] = { 8, 0, 23, 838 },
			["Tbchypè|spineshatter"] = { 8, 0, 23, 838 },
			["Kunamoota|thunderstrike"] = { 4, 1, 3, 825 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 645 },
		},
	},
}

