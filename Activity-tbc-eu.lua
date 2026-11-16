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
	built = 1794841162,
	builtText = "2026-11-16 09:59 AM",
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
			["Orcabrina|spineshatter"] = { 15, 19, -92, 850 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 1227 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 1189 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 851 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 945 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 1026 },
			["Сократ|anniversary"] = { 12, 10, -31, 1028 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 1242 },
			["Everlost|spineshatter"] = { 13, 7, 27, 899 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 1125 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 883 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 1125 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 898 },
			["Primár|spineshatter"] = { 9, 9, -33, 1004 },
			["Therín|spineshatter"] = { 9, 9, 18, 977 },
			["Karoups|spineshatter"] = { 9, 7, 8, 1148 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 1079 },
			["Flobby|spineshatter"] = { 10, 5, 31, 945 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 945 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 1080 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 1047 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 955 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 1125 },
			["Oldp|spineshatter"] = { 8, 3, 59, 1412 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 1125 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 945 },
			["Adpt|spineshatter"] = { 5, 5, -8, 1201 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 1201 },
			["Dominus|spineshatter"] = { 8, 2, 41, 1305 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 1051 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 1291 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 1292 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 871 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 869 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 945 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 1102 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 912 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 912 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 1105 },
			["Mblol|spineshatter"] = { 3, 3, 6, 1071 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 1088 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 1400 },
			["Doko|spineshatter"] = { 3, 2, 20, 1284 },
			["Garad|spineshatter"] = { 4, 1, 21, 945 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 1096 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 1095 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 1145 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 1015 },
			["Walida|spineshatter"] = { 3, 2, 20, 1285 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 1400 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 945 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 1195 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 1177 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 945 },
			["Brubru|spineshatter"] = { 0, 2, -38, 1125 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 945 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 945 },
		},
	},
}

