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

ns.ACTIVITY_BY_REGION["eu"] = {
	built = 1794578451,
	builtText = "2026-11-13 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Semloh|mirage-raceway"] = { 3, 0, 24, 2 },
			["Sangore|auberdine"] = { 0, 2, 0, 5 },
			["Anadosova|shekzeer"] = { 0, 1, -6, 10 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Semloh|mirage-raceway"] = { 3, 0, 24, 2 },
			["Sangore|auberdine"] = { 0, 2, 0, 5 },
			["Anadosova|shekzeer"] = { 0, 1, -6, 10 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Semloh|mirage-raceway"] = { 3, 0, 24, 2 },
			["Sangore|auberdine"] = { 0, 2, 0, 5 },
			["Anadosova|shekzeer"] = { 0, 1, -6, 10 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Semloh|mirage-raceway"] = { 3, 0, 24, 2 },
			["Cavernicola|garalon"] = { 1, 1, 10, 708 },
			["Sangore|auberdine"] = { 0, 2, 0, 5 },
			["Taopaípaí|auberdine"] = { 1, 1, 2, 708 },
			["Anadosova|shekzeer"] = { 0, 1, -6, 10 },
		},
		[2] = {
			["Totemgodx|shekzeer"] = { 0, 2, 0, 708 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 15, 20, -40, 795 },
			["Holmesx|mirage-raceway"] = { 17, 9, 251, 1029 },
			["Ivonsa|garalon"] = { 18, 6, 69, 1021 },
			["Plåýßøt|shekzeer"] = { 9, 14, -93, 843 },
			["Tastemydmg|shekzeer"] = { 14, 9, 12, 1068 },
			["Tyralíon|shekzeer"] = { 14, 9, 12, 1068 },
			["Andysgone|shekzeer"] = { 9, 13, -73, 929 },
			["Kobra|shekzeer"] = { 9, 13, -73, 917 },
			["Brazqr|shekzeer"] = { 9, 12, -29, 943 },
			["Listerine|shekzeer"] = { 10, 10, 2, 824 },
			["Toxicelitist|shekzeer"] = { 10, 10, 2, 824 },
			["Jakamotô|shekzeer"] = { 10, 7, 48, 888 },
			["Zonnmonk|hoptallus"] = { 10, 7, 47, 983 },
			["Weaverok|shekzeer"] = { 10, 6, 50, 966 },
			["Zabir|everlook"] = { 10, 6, 57, 925 },
			["Heliocentric|garalon"] = { 3, 12, -46, 1019 },
			["Nossy|hoptallus"] = { 10, 5, 46, 999 },
			["Srtx|shekzeer"] = { 10, 5, 66, 1021 },
			["Bernadeta|shekzeer"] = { 7, 7, 117, 1012 },
			["Cõmbustz|shekzeer"] = { 8, 6, 43, 1010 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 42, 1010 },
			["Mortabotgodx|shekzeer"] = { 8, 5, 40, 816 },
			["Seera|shekzeer"] = { 2, 11, -85, 907 },
			["Draiks|garalon"] = { 3, 9, -14, 1169 },
			["Premanchan|everlook"] = { 8, 4, 61, 955 },
			["Saigon|shekzeer"] = { 3, 9, -42, 991 },
			["Savexx|shekzeer"] = { 5, 7, -3, 888 },
			["Wheelkick|shekzeer"] = { 8, 4, -16, 860 },
			["Commitment|shekzeer"] = { 7, 4, 44, 948 },
			["Edgelocked|shekzeer"] = { 4, 7, -4, 982 },
			["Fxlibfrjhdsx|shekzeer"] = { 10, 1, 74, 994 },
			["Rodnichekx|shekzeer"] = { 7, 4, 85, 949 },
			["Tube|shekzeer"] = { 4, 7, -4, 982 },
			["Srtwhippa|everlook"] = { 4, 6, -4, 888 },
			["Betix|shekzeer"] = { 3, 6, -17, 1194 },
			["Conservé|shekzeer"] = { 4, 5, -5, 870 },
			["Dokiúr|mirage-raceway"] = { 8, 1, 69, 1177 },
			["Hopedieslast|shekzeer"] = { 8, 1, 95, 1248 },
			["Hotzalotz|hoptallus"] = { 0, 9, -36, 1101 },
			["Jäckynkôô|hoptallus"] = { 2, 7, -7, 1076 },
			["Réfréshér|hoptallus"] = { 2, 7, 39, 1076 },
			["ßlinkd|shekzeer"] = { 4, 5, -10, 1075 },
			["Cavernicola|garalon"] = { 4, 4, 41, 708 },
			["Deepfull|shekzeer"] = { 4, 4, 9, 947 },
			["Gavno|shekzeer"] = { 7, 1, 23, 895 },
			["Iste|hoptallus"] = { 1, 7, 17, 1115 },
			["Orestis|norushen"] = { 3, 5, 9, 1054 },
			["ßonnießlue|shekzeer"] = { 7, 1, 18, 895 },
			["Tackiella|shekzeer"] = { 2, 6, -55, 992 },
			["Вялыйпаладин|flamegor"] = { 4, 4, 3, 807 },
			["Plåýbøt|shekzeer"] = { 6, 1, 32, 994 },
			["Taopaípaí|auberdine"] = { 4, 3, 16, 708 },
			["Bizo|shekzeer"] = { 4, 2, 75, 1011 },
			["Bonefire|garalon"] = { 0, 6, -42, 1054 },
			["Fofii|shekzeer"] = { 1, 5, -18, 1063 },
			["Vuckezija|norushen"] = { 3, 3, -17, 1017 },
			["Drumåndbåss|shekzeer"] = { 4, 1, 34, 1031 },
			["Healdbyme|shekzeer"] = { 2, 3, 15, 1248 },
			["Ludiwig|shekzeer"] = { 1, 4, -9, 1195 },
			["Тнэш|flamegor"] = { 4, 1, 34, 1031 },
			["Muga|hoptallus"] = { 1, 3, -21, 1136 },
			["Plåýbót|shekzeer"] = { 4, 0, 30, 1041 },
			["Xály|shekzeer"] = { 1, 3, -11, 770 },
			["Yente|hoptallus"] = { 0, 4, -28, 1156 },
			["Burrny|shekzeer"] = { 0, 3, -17, 1132 },
			["Fyrk|garalon"] = { 0, 3, -19, 1054 },
			["Phsydon|everlook"] = { 2, 1, -10, 1248 },
			["Rodnichek|shekzeer"] = { 3, 0, 19, 1312 },
			["Semloh|mirage-raceway"] = { 3, 0, 24, 2 },
			["Sírpressheal|auberdine"] = { 0, 3, -29, 1103 },
			["Yezze|shekzeer"] = { 2, 1, -13, 1285 },
			["Борисзверь|flamegor"] = { 0, 3, -12, 1132 },
			["Affix|shekzeer"] = { 2, 0, 41, 1038 },
			["Bakomba|shekzeer"] = { 1, 1, -5, 1139 },
			["Bobz|auberdine"] = { 0, 2, -15, 930 },
			["Jäckynkô|hoptallus"] = { 2, 0, 26, 1137 },
			["Jackynoo|hoptallus"] = { 1, 1, 13, 1044 },
			["Karamelado|everlook"] = { 1, 1, 1, 1141 },
			["Lastà|everlook"] = { 0, 2, -19, 1245 },
			["Paloun|auberdine"] = { 0, 2, -14, 931 },
			["Refresherr|hoptallus"] = { 2, 0, 26, 1137 },
			["Sangore|auberdine"] = { 0, 2, 0, 5 },
			["Voodomann|mirage-raceway"] = { 1, 1, 1, 766 },
			["Xddðð|shekzeer"] = { 2, 0, 23, 1281 },
			["Вялыйхантер|flamegor"] = { 1, 1, -8, 765 },
			["Adrianmandos|garalon"] = { 0, 1, -6, 888 },
			["Anadosova|shekzeer"] = { 0, 1, -6, 10 },
			["Åøêkrótx|shekzeer"] = { 1, 0, 3, 1185 },
			["Dotzalotz|hoptallus"] = { 0, 1, -8, 1151 },
			["Jâckywhâcky|shekzeer"] = { 1, 0, 7, 888 },
			["Skyráw|shekzeer"] = { 1, 0, 13, 935 },
			["Vishnyágødx|shekzeer"] = { 1, 0, 3, 1177 },
		},
		[2] = {
			["Luckynova|garalon"] = { 38, 35, 99, 914 },
			["Voljix|shekzeer"] = { 24, 20, 164, 1248 },
			["Atamal|shekzeer"] = { 21, 20, 214, 1253 },
			["Gnomidge|hoptallus"] = { 21, 20, 194, 1248 },
			["Rbgme|norushen"] = { 21, 20, 178, 1248 },
			["Рыкай|flamegor"] = { 21, 16, 60, 1248 },
			["Melatonin|everlook"] = { 14, 14, 280, 933 },
			["Screwedup|norushen"] = { 14, 14, 306, 888 },
			["Golmash|shekzeer"] = { 11, 16, 31, 888 },
			["Skorpiys|norushen"] = { 7, 8, 1, 909 },
			["Dukhdan|garalon"] = { 3, 4, 15, 1248 },
			["Exhale|hoptallus"] = { 3, 3, 66, 888 },
			["Sangore|auberdine"] = { 0, 6, 0, 1292 },
			["Therealfq|shekzeer"] = { 6, 0, 25, 1138 },
			["Batix|shekzeer"] = { 5, 0, 109, 1130 },
			["Restorok|shekzeer"] = { 0, 5, 0, 1140 },
			["Shockpowerjk|shekzeer"] = { 2, 0, 25, 1152 },
			["Shockpowerr|shekzeer"] = { 2, 0, 10, 1174 },
			["Totemgodx|shekzeer"] = { 0, 2, 0, 708 },
			["Srtdrippa|everlook"] = { 1, 0, 96, 1138 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1248 },
			["Wheyxw|shekzeer"] = { 1, 0, 21, 888 },
		},
	},
}

