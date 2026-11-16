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
	built = 1794833967,
	builtText = "2026-11-16 07:59 AM",
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
			["Orcabrina|spineshatter"] = { 15, 19, -92, 730 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 1107 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 1069 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 731 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 825 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 906 },
			["Сократ|anniversary"] = { 12, 10, -31, 908 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 1122 },
			["Everlost|spineshatter"] = { 13, 7, 27, 779 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 1005 },
			["Karoups|spineshatter"] = { 13, 7, 26, 1028 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 763 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 1005 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 778 },
			["Primár|spineshatter"] = { 9, 9, -33, 884 },
			["Therín|spineshatter"] = { 9, 9, 18, 857 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 959 },
			["Flobby|spineshatter"] = { 10, 5, 31, 825 },
			["Oldp|spineshatter"] = { 12, 3, 83, 1292 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 825 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 960 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 927 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 835 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 1005 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 1005 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 825 },
			["Adpt|spineshatter"] = { 5, 5, -8, 1081 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 1365 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 1081 },
			["Dominus|spineshatter"] = { 8, 2, 41, 1185 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 931 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 1171 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 1172 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 751 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 749 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 825 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 982 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 792 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 792 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 985 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 1411 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 1411 },
			["Mblol|spineshatter"] = { 3, 3, 6, 951 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 968 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 1280 },
			["Doko|spineshatter"] = { 3, 2, 20, 1165 },
			["Garad|spineshatter"] = { 4, 1, 21, 825 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 976 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 975 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 1025 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 895 },
			["Walida|spineshatter"] = { 3, 2, 20, 1165 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 1280 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 825 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 1075 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 1365 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 1057 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 825 },
			["Brubru|spineshatter"] = { 0, 2, -38, 1005 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 825 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 825 },
		},
	},
}

