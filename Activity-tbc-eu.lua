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
	built = 1795010361,
	builtText = "2026-11-18 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rubyjunior|thunderstrike"] = { 1, 0, 6, 345 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 4, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rubyjunior|thunderstrike"] = { 1, 0, 6, 345 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 4, 345 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 24, 26, 47, 975 },
			["Shadøwsfall|thunderstrike"] = { 24, 26, 47, 980 },
			["Mblol|spineshatter"] = { 16, 13, 17, 885 },
			["Notagainqt|spineshatter"] = { 16, 13, 23, 885 },
			["Pinkwidow|spineshatter"] = { 17, 10, 97, 807 },
			["Meanetrik|thunderstrike"] = { 13, 10, 88, 955 },
			["Nutcracky|spineshatter"] = { 13, 9, 57, 835 },
			["Everlost|spineshatter"] = { 10, 11, -17, 966 },
			["Farsaroga|spineshatter"] = { 10, 11, -6, 964 },
			["Skillexe|thunderstrike"] = { 12, 6, 53, 875 },
			["Teslash|thunderstrike"] = { 12, 6, 26, 873 },
			["Daddyjoe|spineshatter"] = { 12, 5, 102, 928 },
			["Izabelyrg|spineshatter"] = { 11, 6, 46, 807 },
			["Nguaroth|spineshatter"] = { 12, 5, 102, 942 },
			["Sylex|spineshatter"] = { 9, 7, 32, 798 },
			["Drainèr|spineshatter"] = { 8, 7, -33, 863 },
			["Greåzy|spineshatter"] = { 4, 11, -29, 1120 },
			["Katlhuzad|spineshatter"] = { 6, 9, -54, 1032 },
			["Rotarepmi|thunderstrike"] = { 10, 5, 33, 958 },
			["Sharmama|spineshatter"] = { 6, 9, -54, 1030 },
			["ßéstcømp|spineshatter"] = { 10, 5, -33, 982 },
			["Vetó|thunderstrike"] = { 10, 5, 61, 976 },
			["Zizzap|spineshatter"] = { 4, 11, -130, 1120 },
			["Blasttortle|spineshatter"] = { 11, 3, 69, 1125 },
			["Feynmann|spineshatter"] = { 11, 3, 59, 1123 },
			["Soulmoo|spineshatter"] = { 8, 5, 24, 960 },
			["Warbunnyx|spineshatter"] = { 8, 5, 48, 960 },
			["Bananagram|spineshatter"] = { 5, 7, -7, 1028 },
			["Doko|spineshatter"] = { 6, 6, 18, 1065 },
			["Jaguár|spineshatter"] = { 5, 7, -11, 1034 },
			["Kamenskii|spineshatter"] = { 6, 6, -3, 1090 },
			["Walida|spineshatter"] = { 6, 6, 18, 1120 },
			["Eaxlow|thunderstrike"] = { 7, 4, 38, 1065 },
			["Esoteric|thunderstrike"] = { 5, 6, -34, 885 },
			["Folfirinox|thunderstrike"] = { 7, 4, 42, 1065 },
			["Jostix|spineshatter"] = { 4, 7, -101, 1174 },
			["Milevan|spineshatter"] = { 5, 6, -30, 1065 },
			["Mortallovex|spineshatter"] = { 4, 7, -68, 1182 },
			["Crankshãft|spineshatter"] = { 4, 6, -57, 885 },
			["Dängi|spineshatter"] = { 6, 4, 31, 1101 },
			["Fentastic|spineshatter"] = { 5, 5, 35, 1153 },
			["Firaa|spineshatter"] = { 3, 7, -118, 983 },
			["Jebx|spineshatter"] = { 4, 6, -26, 1019 },
			["Nelthari|spineshatter"] = { 6, 4, 30, 1142 },
			["Oktanius|spineshatter"] = { 7, 3, 9, 964 },
			["Rezenzadruid|spineshatter"] = { 5, 5, 36, 1065 },
			["Stréyf|spineshatter"] = { 5, 5, -64, 1065 },
			["Temuworldles|spineshatter"] = { 4, 6, -28, 911 },
			["Xeroxd|thunderstrike"] = { 5, 5, 20, 1116 },
			["Zuxilon|thunderstrike"] = { 5, 5, 0, 1116 },
			["Clozapine|spineshatter"] = { 7, 2, 27, 900 },
			["Ellectrons|spineshatter"] = { 6, 3, 45, 939 },
			["Fnrxz|spineshatter"] = { 7, 2, 27, 900 },
			["Samwellx|spineshatter"] = { 6, 3, 37, 939 },
			["Enhbeastx|spineshatter"] = { 4, 4, 20, 1049 },
			["Premier|spineshatter"] = { 4, 4, 14, 1048 },
			["Xnatry|spineshatter"] = { 4, 3, -7, 865 },
			["Aethèl|spineshatter"] = { 4, 2, 5, 973 },
			["Cræbxz|spineshatter"] = { 4, 2, -29, 1060 },
			["Gougerpala|spineshatter"] = { 2, 4, -23, 900 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 1215 },
			["Matum|spineshatter"] = { 5, 1, 20, 885 },
			["Mfkaxx|spineshatter"] = { 2, 4, -27, 899 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 1215 },
			["Sauronorc|spineshatter"] = { 4, 2, 13, 977 },
			["Soulfacter|spineshatter"] = { 5, 1, 22, 885 },
			["Wyrmhide|spineshatter"] = { 3, 3, -16, 866 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 1264 },
			["Icehell|spineshatter"] = { 5, 0, 33, 1265 },
			["Zulwi|thunderstrike"] = { 2, 3, -17, 1056 },
			["Brubru|spineshatter"] = { 1, 3, -29, 1241 },
			["Vidykravicka|thunderstrike"] = { 2, 2, -9, 345 },
			["Almeri|spineshatter"] = { 1, 2, -19, 1204 },
			["Energywyrm|spineshatter"] = { 1, 2, -19, 1207 },
			["Senikss|thunderstrike"] = { 1, 2, -16, 989 },
			["Softpower|spineshatter"] = { 3, 0, 31, 1064 },
			["Fikozui|spineshatter"] = { 0, 2, -19, 885 },
			["Naano|thunderstrike"] = { 0, 2, -17, 1065 },
			["Rothy|spineshatter"] = { 0, 2, -19, 996 },
			["Swaggythree|thunderstrike"] = { 0, 2, -19, 1065 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 6, 345 },
		},
		[2] = {
			["Ironhound|spineshatter"] = { 16, 16, -12, 933 },
			["Blessedlol|spineshatter"] = { 23, 2, 73, 922 },
			["Gocowz|spineshatter"] = { 23, 2, 153, 900 },
			["Veronelol|spineshatter"] = { 23, 2, 122, 896 },
			["Crabzx|spineshatter"] = { 13, 9, -10, 962 },
			["Diodexy|spineshatter"] = { 10, 12, -24, 952 },
			["Missinpurge|spineshatter"] = { 9, 13, -40, 987 },
			["Rastoulul|spineshatter"] = { 9, 13, -40, 986 },
			["Teleios|spineshatter"] = { 9, 13, -40, 986 },
			["Presteman|thunderstrike"] = { 7, 8, 14, 885 },
			["Tbchypè|spineshatter"] = { 8, 4, -12, 1009 },
			["Hanunik|spineshatter"] = { 8, 3, 77, 1059 },
			["Mdmaxlockx|spineshatter"] = { 8, 3, 31, 1065 },
			["Nudl|spineshatter"] = { 6, 5, 42, 952 },
			["Soulmoo|spineshatter"] = { 8, 3, 29, 1065 },
			["Forksache|spineshatter"] = { 6, 4, 17, 1098 },
			["Màlte|spineshatter"] = { 5, 5, -36, 962 },
			["Nennx|spineshatter"] = { 6, 4, 21, 1098 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -25, 1018 },
			["Seniks|thunderstrike"] = { 4, 6, -30, 1022 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -26, 972 },
			["Nurofen|spineshatter"] = { 3, 4, -44, 1022 },
			["Sposobniy|spineshatter"] = { 3, 4, -17, 1023 },
			["Whítewolf|spineshatter"] = { 3, 4, 9, 910 },
			["Gêngar|thunderstrike"] = { 3, 3, -14, 1098 },
			["Johnrogers|thunderstrike"] = { 3, 3, -14, 1100 },
			["Reigned|thunderstrike"] = { 3, 3, -14, 1065 },
			["Panicspank|spineshatter"] = { 5, 0, 14, 820 },
			["Ponttooni|spineshatter"] = { 5, 0, 21, 881 },
			["Qijuu|spineshatter"] = { 5, 0, 22, 881 },
		},
		[3] = {
			["Amecess|thunderstrike"] = { 17, 3, 61, 980 },
			["Kynyttaja|thunderstrike"] = { 17, 3, 70, 979 },
			["Íspøvéð|spineshatter"] = { 9, 4, -81, 975 },
			["Moscuerta|spineshatter"] = { 9, 4, -72, 975 },
			["Rogi|spineshatter"] = { 5, 6, -120, 885 },
			["Bobthepirate|spineshatter"] = { 8, 2, 20, 1026 },
			["Hammasvako|thunderstrike"] = { 8, 2, 51, 981 },
			["Mättömies|thunderstrike"] = { 9, 1, 37, 1059 },
			["Sposobniy|spineshatter"] = { 9, 1, -23, 927 },
			["Thechonk|thunderstrike"] = { 9, 1, 37, 1059 },
			["Hadzi|spineshatter"] = { 0, 1, -15, 983 },
		},
	},
}

