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
	built = 1794844763,
	builtText = "2026-11-16 10:59 AM",
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
			["Orcabrina|spineshatter"] = { 15, 19, -92, 910 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 1287 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 911 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 1005 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 1086 },
			["Сократ|anniversary"] = { 12, 10, -31, 1088 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 1302 },
			["Everlost|spineshatter"] = { 13, 7, 27, 959 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 1185 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 943 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 1185 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 958 },
			["Primár|spineshatter"] = { 9, 9, -33, 1064 },
			["Therín|spineshatter"] = { 9, 9, 18, 1037 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 1139 },
			["Flobby|spineshatter"] = { 10, 5, 31, 1005 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 1005 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 1140 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 1107 },
			["Ellilol|thunderstrike"] = { 10, 3, 74, 1249 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 1015 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 1185 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 1185 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 1005 },
			["Adpt|spineshatter"] = { 5, 5, -8, 1261 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 1261 },
			["Dominus|spineshatter"] = { 8, 2, 41, 1365 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 1111 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 1351 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 1352 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 931 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 929 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 1005 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 1162 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 972 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 972 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 1165 },
			["Mblol|spineshatter"] = { 3, 3, 6, 1131 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 1148 },
			["Doko|spineshatter"] = { 3, 2, 20, 1344 },
			["Garad|spineshatter"] = { 4, 1, 21, 1005 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 1156 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 1155 },
			["Karoups|spineshatter"] = { 1, 4, -33, 1208 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 1205 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 1075 },
			["Walida|spineshatter"] = { 3, 2, 20, 1345 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 1005 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 1255 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 1237 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 1005 },
			["Brubru|spineshatter"] = { 0, 2, -38, 1185 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 1005 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 1005 },
		},
	},
}

