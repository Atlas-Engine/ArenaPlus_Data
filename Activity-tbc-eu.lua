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
	built = 1794837568,
	builtText = "2026-11-16 08:59 AM",
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
			["Orcabrina|spineshatter"] = { 15, 19, -92, 790 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 1167 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 1129 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 791 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 885 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 966 },
			["Сократ|anniversary"] = { 12, 10, -31, 968 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 1182 },
			["Everlost|spineshatter"] = { 13, 7, 27, 840 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 1065 },
			["Karoups|spineshatter"] = { 13, 7, 26, 1088 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 823 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 1065 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 838 },
			["Primár|spineshatter"] = { 9, 9, -33, 944 },
			["Therín|spineshatter"] = { 9, 9, 18, 917 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 1019 },
			["Flobby|spineshatter"] = { 10, 5, 31, 885 },
			["Oldp|spineshatter"] = { 12, 3, 83, 1352 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 885 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 1020 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 987 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 895 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 1065 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 1065 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 885 },
			["Adpt|spineshatter"] = { 5, 5, -8, 1141 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 1425 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 1141 },
			["Dominus|spineshatter"] = { 8, 2, 41, 1245 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 991 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 1231 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 1232 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 811 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 809 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 885 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 1042 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 852 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 852 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 1045 },
			["Mblol|spineshatter"] = { 3, 3, 6, 1011 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 1028 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 1340 },
			["Doko|spineshatter"] = { 3, 2, 20, 1225 },
			["Garad|spineshatter"] = { 4, 1, 21, 885 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 1036 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 1035 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 1085 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 955 },
			["Walida|spineshatter"] = { 3, 2, 20, 1225 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 1340 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 885 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 1135 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 1425 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 1117 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 885 },
			["Brubru|spineshatter"] = { 0, 2, -38, 1065 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 885 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 885 },
		},
	},
}

