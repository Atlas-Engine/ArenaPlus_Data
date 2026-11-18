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
	built = 1795021158,
	builtText = "2026-11-18 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 165 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 165 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 165 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 165 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 6, 525 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 4, 525 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 24, 26, 47, 1155 },
			["Shadøwsfall|thunderstrike"] = { 24, 26, 47, 1160 },
			["Mblol|spineshatter"] = { 16, 13, 17, 1065 },
			["Notagainqt|spineshatter"] = { 16, 13, 23, 1065 },
			["Pinkwidow|spineshatter"] = { 17, 10, 97, 987 },
			["Meanetrik|thunderstrike"] = { 13, 10, 88, 1135 },
			["Nutcracky|spineshatter"] = { 13, 9, 57, 1015 },
			["Everlost|spineshatter"] = { 10, 11, -17, 1146 },
			["Farsaroga|spineshatter"] = { 10, 11, -6, 1144 },
			["Skillexe|thunderstrike"] = { 12, 6, 53, 1055 },
			["Teslash|thunderstrike"] = { 12, 6, 26, 1053 },
			["Daddyjoe|spineshatter"] = { 12, 5, 102, 1108 },
			["Izabelyrg|spineshatter"] = { 11, 6, 46, 987 },
			["Nguaroth|spineshatter"] = { 12, 5, 102, 1122 },
			["Sylex|spineshatter"] = { 9, 7, 32, 978 },
			["Drainèr|spineshatter"] = { 8, 7, -33, 1043 },
			["Greåzy|spineshatter"] = { 4, 11, -29, 1300 },
			["Katlhuzad|spineshatter"] = { 6, 9, -54, 1212 },
			["Sharmama|spineshatter"] = { 6, 9, -54, 1210 },
			["ßéstcømp|spineshatter"] = { 10, 5, -33, 1162 },
			["Zizzap|spineshatter"] = { 4, 11, -130, 1300 },
			["Blasttortle|spineshatter"] = { 11, 3, 69, 1305 },
			["Feynmann|spineshatter"] = { 11, 3, 59, 1303 },
			["Soulmoo|spineshatter"] = { 8, 5, 24, 1140 },
			["Warbunnyx|spineshatter"] = { 8, 5, 48, 1139 },
			["Bananagram|spineshatter"] = { 5, 7, -7, 1208 },
			["Doko|spineshatter"] = { 6, 6, 18, 1245 },
			["Jaguár|spineshatter"] = { 5, 7, -11, 1213 },
			["Kamenskii|spineshatter"] = { 6, 6, -3, 1270 },
			["Rotarepmi|thunderstrike"] = { 8, 4, 31, 1138 },
			["Vetó|thunderstrike"] = { 8, 4, 55, 1156 },
			["Walida|spineshatter"] = { 6, 6, 18, 1300 },
			["Eaxlow|thunderstrike"] = { 7, 4, 38, 1245 },
			["Esoteric|thunderstrike"] = { 5, 6, -34, 1065 },
			["Folfirinox|thunderstrike"] = { 7, 4, 42, 1245 },
			["Jostix|spineshatter"] = { 4, 7, -101, 1354 },
			["Milevan|spineshatter"] = { 5, 6, -30, 1245 },
			["Mortallovex|spineshatter"] = { 4, 7, -68, 1362 },
			["Crankshãft|spineshatter"] = { 4, 6, -57, 1065 },
			["Dängi|spineshatter"] = { 6, 4, 31, 1281 },
			["Fentastic|spineshatter"] = { 5, 5, 35, 1333 },
			["Firaa|spineshatter"] = { 3, 7, -118, 1163 },
			["Jebx|spineshatter"] = { 4, 6, -26, 1199 },
			["Nelthari|spineshatter"] = { 6, 4, 30, 1322 },
			["Oktanius|spineshatter"] = { 7, 3, 9, 1144 },
			["Rezenzadruid|spineshatter"] = { 5, 5, 36, 1245 },
			["Stréyf|spineshatter"] = { 5, 5, -64, 1245 },
			["Temuworldles|spineshatter"] = { 4, 6, -28, 1091 },
			["Xeroxd|thunderstrike"] = { 5, 5, 20, 1296 },
			["Zuxilon|thunderstrike"] = { 5, 5, 0, 1296 },
			["Clozapine|spineshatter"] = { 7, 2, 27, 1080 },
			["Ellectrons|spineshatter"] = { 6, 3, 45, 1119 },
			["Fnrxz|spineshatter"] = { 7, 2, 27, 1080 },
			["Samwellx|spineshatter"] = { 6, 3, 37, 1119 },
			["Enhbeastx|spineshatter"] = { 4, 4, 20, 1229 },
			["Premier|spineshatter"] = { 4, 4, 14, 1228 },
			["Xnatry|spineshatter"] = { 4, 3, -7, 1045 },
			["Aethèl|spineshatter"] = { 4, 2, 5, 1153 },
			["Cræbxz|spineshatter"] = { 4, 2, -29, 1240 },
			["Gougerpala|spineshatter"] = { 2, 4, -23, 1079 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 1395 },
			["Matum|spineshatter"] = { 5, 1, 20, 1065 },
			["Mfkaxx|spineshatter"] = { 2, 4, -27, 1079 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 1395 },
			["Sauronorc|spineshatter"] = { 4, 2, 13, 1157 },
			["Soulfacter|spineshatter"] = { 5, 1, 22, 1065 },
			["Wyrmhide|spineshatter"] = { 3, 3, -16, 1046 },
			["Zulwi|thunderstrike"] = { 2, 3, -17, 1236 },
			["Brubru|spineshatter"] = { 1, 3, -29, 1421 },
			["Vidykravicka|thunderstrike"] = { 2, 2, -9, 525 },
			["Almeri|spineshatter"] = { 1, 2, -19, 1384 },
			["Energywyrm|spineshatter"] = { 1, 2, -19, 1387 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 165 },
			["Senikss|thunderstrike"] = { 1, 2, -16, 1169 },
			["Softpower|spineshatter"] = { 3, 0, 31, 1244 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 165 },
			["Fikozui|spineshatter"] = { 0, 2, -19, 1065 },
			["Naano|thunderstrike"] = { 0, 2, -17, 1245 },
			["Rothy|spineshatter"] = { 0, 2, -19, 1176 },
			["Swaggythree|thunderstrike"] = { 0, 2, -19, 1245 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 6, 525 },
		},
		[2] = {
			["Ironhound|spineshatter"] = { 16, 16, -12, 1113 },
			["Blessedlol|spineshatter"] = { 23, 2, 73, 1102 },
			["Gocowz|spineshatter"] = { 23, 2, 153, 1080 },
			["Veronelol|spineshatter"] = { 23, 2, 122, 1076 },
			["Crabzx|spineshatter"] = { 13, 9, -10, 1142 },
			["Diodexy|spineshatter"] = { 10, 12, -24, 1132 },
			["Missinpurge|spineshatter"] = { 9, 13, -40, 1167 },
			["Rastoulul|spineshatter"] = { 9, 13, -40, 1166 },
			["Teleios|spineshatter"] = { 9, 13, -40, 1166 },
			["Presteman|thunderstrike"] = { 7, 8, 14, 1065 },
			["Tbchypè|spineshatter"] = { 8, 4, -12, 1189 },
			["Hanunik|spineshatter"] = { 8, 3, 77, 1239 },
			["Mdmaxlockx|spineshatter"] = { 8, 3, 31, 1245 },
			["Nudl|spineshatter"] = { 6, 5, 42, 1132 },
			["Soulmoo|spineshatter"] = { 8, 3, 29, 1245 },
			["Forksache|spineshatter"] = { 6, 4, 17, 1278 },
			["Màlte|spineshatter"] = { 5, 5, -36, 1142 },
			["Nennx|spineshatter"] = { 6, 4, 21, 1278 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -25, 1198 },
			["Seniks|thunderstrike"] = { 4, 6, -30, 1202 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -26, 1152 },
			["Nurofen|spineshatter"] = { 3, 4, -44, 1202 },
			["Sposobniy|spineshatter"] = { 3, 4, -17, 1203 },
			["Whítewolf|spineshatter"] = { 3, 4, 9, 1090 },
			["Gêngar|thunderstrike"] = { 3, 3, -14, 1278 },
			["Johnrogers|thunderstrike"] = { 3, 3, -14, 1280 },
			["Reigned|thunderstrike"] = { 3, 3, -14, 1245 },
			["Panicspank|spineshatter"] = { 5, 0, 14, 1000 },
			["Ponttooni|spineshatter"] = { 5, 0, 21, 1061 },
			["Qijuu|spineshatter"] = { 5, 0, 22, 1061 },
		},
		[3] = {
			["Amecess|thunderstrike"] = { 17, 3, 61, 1160 },
			["Kynyttaja|thunderstrike"] = { 17, 3, 70, 1159 },
			["Íspøvéð|spineshatter"] = { 9, 4, -81, 1155 },
			["Moscuerta|spineshatter"] = { 9, 4, -72, 1155 },
			["Rogi|spineshatter"] = { 5, 6, -120, 1065 },
			["Bobthepirate|spineshatter"] = { 8, 2, 20, 1206 },
			["Hammasvako|thunderstrike"] = { 8, 2, 51, 1161 },
			["Mättömies|thunderstrike"] = { 9, 1, 37, 1239 },
			["Sposobniy|spineshatter"] = { 9, 1, -23, 1107 },
			["Thechonk|thunderstrike"] = { 9, 1, 37, 1239 },
			["Hadzi|spineshatter"] = { 0, 1, -15, 1163 },
		},
	},
}

