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
	built = 1795006762,
	builtText = "2026-11-18 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rubyjunior|thunderstrike"] = { 1, 0, 6, 285 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 4, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rubyjunior|thunderstrike"] = { 1, 0, 6, 285 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 4, 285 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 24, 26, 47, 915 },
			["Shadøwsfall|thunderstrike"] = { 24, 26, 47, 920 },
			["Mblol|spineshatter"] = { 16, 13, 17, 825 },
			["Notagainqt|spineshatter"] = { 16, 13, 23, 825 },
			["Pinkwidow|spineshatter"] = { 17, 10, 97, 747 },
			["Meanetrik|thunderstrike"] = { 13, 10, 88, 895 },
			["Nutcracky|spineshatter"] = { 13, 9, 57, 775 },
			["Everlost|spineshatter"] = { 10, 11, -17, 906 },
			["Farsaroga|spineshatter"] = { 10, 11, -6, 904 },
			["Skillexe|thunderstrike"] = { 12, 6, 53, 815 },
			["Teslash|thunderstrike"] = { 12, 6, 26, 813 },
			["Daddyjoe|spineshatter"] = { 12, 5, 102, 868 },
			["Izabelyrg|spineshatter"] = { 11, 6, 46, 747 },
			["Nguaroth|spineshatter"] = { 12, 5, 102, 882 },
			["Sylex|spineshatter"] = { 9, 7, 32, 738 },
			["Drainèr|spineshatter"] = { 8, 7, -33, 803 },
			["Greåzy|spineshatter"] = { 4, 11, -29, 1060 },
			["Katlhuzad|spineshatter"] = { 6, 9, -54, 972 },
			["Rotarepmi|thunderstrike"] = { 10, 5, 33, 898 },
			["Sharmama|spineshatter"] = { 6, 9, -54, 970 },
			["ßéstcømp|spineshatter"] = { 10, 5, -33, 922 },
			["Vetó|thunderstrike"] = { 10, 5, 61, 916 },
			["Zizzap|spineshatter"] = { 4, 11, -130, 1060 },
			["Blasttortle|spineshatter"] = { 11, 3, 69, 1065 },
			["Feynmann|spineshatter"] = { 11, 3, 59, 1063 },
			["Soulmoo|spineshatter"] = { 8, 5, 24, 900 },
			["Warbunnyx|spineshatter"] = { 8, 5, 48, 900 },
			["Bananagram|spineshatter"] = { 5, 7, -7, 968 },
			["Doko|spineshatter"] = { 6, 6, 18, 1005 },
			["Jaguár|spineshatter"] = { 5, 7, -11, 974 },
			["Kamenskii|spineshatter"] = { 6, 6, -3, 1030 },
			["Walida|spineshatter"] = { 6, 6, 18, 1060 },
			["Eaxlow|thunderstrike"] = { 7, 4, 38, 1005 },
			["Esoteric|thunderstrike"] = { 5, 6, -34, 825 },
			["Folfirinox|thunderstrike"] = { 7, 4, 42, 1005 },
			["Jostix|spineshatter"] = { 4, 7, -101, 1114 },
			["Milevan|spineshatter"] = { 5, 6, -30, 1005 },
			["Mortallovex|spineshatter"] = { 4, 7, -68, 1122 },
			["Crankshãft|spineshatter"] = { 4, 6, -57, 825 },
			["Dängi|spineshatter"] = { 6, 4, 31, 1041 },
			["Fentastic|spineshatter"] = { 5, 5, 35, 1093 },
			["Firaa|spineshatter"] = { 3, 7, -118, 923 },
			["Jebx|spineshatter"] = { 4, 6, -26, 959 },
			["Nelthari|spineshatter"] = { 6, 4, 30, 1082 },
			["Oktanius|spineshatter"] = { 7, 3, 9, 904 },
			["Rezenzadruid|spineshatter"] = { 5, 5, 36, 1005 },
			["Stréyf|spineshatter"] = { 5, 5, -64, 1005 },
			["Temuworldles|spineshatter"] = { 4, 6, -28, 851 },
			["Xeroxd|thunderstrike"] = { 5, 5, 20, 1056 },
			["Zuxilon|thunderstrike"] = { 5, 5, 0, 1056 },
			["Clozapine|spineshatter"] = { 7, 2, 27, 840 },
			["Ellectrons|spineshatter"] = { 6, 3, 45, 879 },
			["Fnrxz|spineshatter"] = { 7, 2, 27, 840 },
			["Samwellx|spineshatter"] = { 6, 3, 37, 879 },
			["Enhbeastx|spineshatter"] = { 4, 4, 20, 989 },
			["Premier|spineshatter"] = { 4, 4, 14, 988 },
			["Xnatry|spineshatter"] = { 4, 3, -7, 805 },
			["Aethèl|spineshatter"] = { 4, 2, 5, 913 },
			["Cræbxz|spineshatter"] = { 4, 2, -29, 1000 },
			["Gougerpala|spineshatter"] = { 2, 4, -23, 840 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 1155 },
			["Matum|spineshatter"] = { 5, 1, 20, 825 },
			["Mfkaxx|spineshatter"] = { 2, 4, -27, 839 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 1155 },
			["Sauronorc|spineshatter"] = { 4, 2, 13, 917 },
			["Soulfacter|spineshatter"] = { 5, 1, 22, 825 },
			["Wyrmhide|spineshatter"] = { 3, 3, -16, 806 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 1204 },
			["Icehell|spineshatter"] = { 5, 0, 33, 1205 },
			["Zulwi|thunderstrike"] = { 2, 3, -17, 996 },
			["Brubru|spineshatter"] = { 1, 3, -29, 1181 },
			["Vidykravicka|thunderstrike"] = { 2, 2, -9, 285 },
			["Almeri|spineshatter"] = { 1, 2, -19, 1144 },
			["Energywyrm|spineshatter"] = { 1, 2, -19, 1147 },
			["Senikss|thunderstrike"] = { 1, 2, -16, 929 },
			["Softpower|spineshatter"] = { 3, 0, 31, 1004 },
			["Fikozui|spineshatter"] = { 0, 2, -19, 825 },
			["Naano|thunderstrike"] = { 0, 2, -17, 1005 },
			["Rothy|spineshatter"] = { 0, 2, -19, 936 },
			["Swaggythree|thunderstrike"] = { 0, 2, -19, 1005 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 6, 285 },
		},
		[2] = {
			["Ironhound|spineshatter"] = { 16, 16, -12, 873 },
			["Blessedlol|spineshatter"] = { 23, 2, 73, 862 },
			["Gocowz|spineshatter"] = { 23, 2, 153, 840 },
			["Veronelol|spineshatter"] = { 23, 2, 122, 836 },
			["Crabzx|spineshatter"] = { 13, 9, -10, 902 },
			["Diodexy|spineshatter"] = { 10, 12, -24, 892 },
			["Missinpurge|spineshatter"] = { 9, 13, -40, 927 },
			["Rastoulul|spineshatter"] = { 9, 13, -40, 926 },
			["Teleios|spineshatter"] = { 9, 13, -40, 926 },
			["Presteman|thunderstrike"] = { 7, 8, 14, 825 },
			["Tbchypè|spineshatter"] = { 8, 4, -12, 949 },
			["Hanunik|spineshatter"] = { 8, 3, 77, 999 },
			["Mdmaxlockx|spineshatter"] = { 8, 3, 31, 1005 },
			["Nudl|spineshatter"] = { 6, 5, 42, 892 },
			["Soulmoo|spineshatter"] = { 8, 3, 29, 1005 },
			["Forksache|spineshatter"] = { 6, 4, 17, 1038 },
			["Màlte|spineshatter"] = { 5, 5, -36, 902 },
			["Nennx|spineshatter"] = { 6, 4, 21, 1038 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -25, 958 },
			["Seniks|thunderstrike"] = { 4, 6, -30, 962 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -26, 912 },
			["Nurofen|spineshatter"] = { 3, 4, -44, 962 },
			["Sposobniy|spineshatter"] = { 3, 4, -17, 963 },
			["Whítewolf|spineshatter"] = { 3, 4, 9, 850 },
			["Gêngar|thunderstrike"] = { 3, 3, -14, 1038 },
			["Johnrogers|thunderstrike"] = { 3, 3, -14, 1040 },
			["Reigned|thunderstrike"] = { 3, 3, -14, 1005 },
			["Panicspank|spineshatter"] = { 5, 0, 14, 760 },
			["Ponttooni|spineshatter"] = { 5, 0, 21, 821 },
			["Qijuu|spineshatter"] = { 5, 0, 22, 821 },
		},
		[3] = {
			["Amecess|thunderstrike"] = { 17, 3, 61, 920 },
			["Kynyttaja|thunderstrike"] = { 17, 3, 70, 919 },
			["Íspøvéð|spineshatter"] = { 9, 4, -81, 915 },
			["Moscuerta|spineshatter"] = { 9, 4, -72, 915 },
			["Rogi|spineshatter"] = { 5, 6, -120, 825 },
			["Bobthepirate|spineshatter"] = { 8, 2, 20, 966 },
			["Hammasvako|thunderstrike"] = { 8, 2, 51, 921 },
			["Mättömies|thunderstrike"] = { 9, 1, 37, 999 },
			["Sposobniy|spineshatter"] = { 9, 1, -23, 867 },
			["Thechonk|thunderstrike"] = { 9, 1, 37, 999 },
			["Hadzi|spineshatter"] = { 0, 1, -15, 923 },
		},
	},
}

