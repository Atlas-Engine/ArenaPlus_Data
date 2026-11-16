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
	built = 1794830364,
	builtText = "2026-11-16 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Stovo|thunderstrike"] = { 4, 5, -22, 691 },
			["Xionc|thunderstrike"] = { 4, 5, -20, 689 },
			["Orcabrina|spineshatter"] = { 5, 3, 28, 670 },
			["Sustanøn|spineshatter"] = { 5, 3, 10, 671 },
			["Everlost|spineshatter"] = { 3, 2, 9, 719 },
			["Patrickwoo|spineshatter"] = { 3, 2, -3, 718 },
			["Mfkaxx|spineshatter"] = { 1, 1, 16, 703 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 670 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 1047 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 1009 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 671 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 765 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 846 },
			["Сократ|anniversary"] = { 12, 10, -31, 848 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 1062 },
			["Everlost|spineshatter"] = { 13, 7, 27, 719 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 945 },
			["Karoups|spineshatter"] = { 13, 7, 26, 968 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 703 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 945 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 718 },
			["Primár|spineshatter"] = { 9, 9, -33, 824 },
			["Therín|spineshatter"] = { 9, 9, 18, 797 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 899 },
			["Flobby|spineshatter"] = { 10, 5, 31, 765 },
			["Oldp|spineshatter"] = { 12, 3, 83, 1232 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 765 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 900 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 867 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 775 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 945 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 945 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 765 },
			["Adpt|spineshatter"] = { 5, 5, -8, 1021 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 1305 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 1021 },
			["Dominus|spineshatter"] = { 8, 2, 41, 1125 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 871 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 1111 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 1112 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 691 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 689 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 765 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 922 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 732 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 732 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 925 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 1351 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 1351 },
			["Mblol|spineshatter"] = { 3, 3, 6, 891 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 908 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 1220 },
			["Doko|spineshatter"] = { 3, 2, 20, 1105 },
			["Garad|spineshatter"] = { 4, 1, 21, 765 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 916 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 915 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 965 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 835 },
			["Walida|spineshatter"] = { 3, 2, 20, 1105 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 1220 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 765 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 1015 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 1305 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 997 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 765 },
			["Brubru|spineshatter"] = { 0, 2, -38, 945 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 765 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 765 },
		},
	},
}

