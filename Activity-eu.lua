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
	built = 1794574842,
	builtText = "2026-11-13 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 1, 2, -6, 710 },
			["Cavernicola|garalon"] = { 1, 1, 10, 648 },
			["Taopaípaí|auberdine"] = { 1, 1, 2, 648 },
			["Voodomann|mirage-raceway"] = { 1, 1, 1, 706 },
			["Вялыйхантер|flamegor"] = { 1, 1, -8, 705 },
		},
		[2] = {
			["Totemgodx|shekzeer"] = { 0, 2, 0, 648 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 15, 20, -40, 735 },
			["Holmesx|mirage-raceway"] = { 17, 9, 251, 969 },
			["Ivonsa|garalon"] = { 18, 6, 69, 960 },
			["Plåýßøt|shekzeer"] = { 9, 14, -93, 783 },
			["Tastemydmg|shekzeer"] = { 14, 9, 12, 1008 },
			["Tyralíon|shekzeer"] = { 14, 9, 12, 1008 },
			["Andysgone|shekzeer"] = { 9, 13, -73, 869 },
			["Kobra|shekzeer"] = { 9, 13, -73, 857 },
			["Brazqr|shekzeer"] = { 9, 12, -29, 883 },
			["Listerine|shekzeer"] = { 10, 10, 2, 764 },
			["Toxicelitist|shekzeer"] = { 10, 10, 2, 764 },
			["Jakamotô|shekzeer"] = { 10, 7, 48, 828 },
			["Zonnmonk|hoptallus"] = { 10, 7, 47, 923 },
			["Weaverok|shekzeer"] = { 10, 6, 50, 905 },
			["Zabir|everlook"] = { 10, 6, 57, 865 },
			["Heliocentric|garalon"] = { 3, 12, -46, 959 },
			["Nossy|hoptallus"] = { 10, 5, 46, 939 },
			["Srtx|shekzeer"] = { 10, 5, 66, 960 },
			["Bernadeta|shekzeer"] = { 7, 7, 117, 952 },
			["Cõmbustz|shekzeer"] = { 8, 6, 43, 950 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 42, 950 },
			["Mortabotgodx|shekzeer"] = { 8, 5, 40, 756 },
			["Seera|shekzeer"] = { 2, 11, -85, 847 },
			["Draiks|garalon"] = { 3, 9, -14, 1108 },
			["Premanchan|everlook"] = { 8, 4, 61, 895 },
			["Saigon|shekzeer"] = { 3, 9, -42, 931 },
			["Savexx|shekzeer"] = { 5, 7, -3, 828 },
			["Wheelkick|shekzeer"] = { 8, 4, -16, 799 },
			["Commitment|shekzeer"] = { 7, 4, 44, 888 },
			["Edgelocked|shekzeer"] = { 4, 7, -4, 922 },
			["Fxlibfrjhdsx|shekzeer"] = { 10, 1, 74, 934 },
			["Rodnichekx|shekzeer"] = { 7, 4, 85, 889 },
			["Tube|shekzeer"] = { 4, 7, -4, 922 },
			["Srtwhippa|everlook"] = { 4, 6, -4, 828 },
			["Betix|shekzeer"] = { 3, 6, -17, 1134 },
			["Conservé|shekzeer"] = { 4, 5, -5, 809 },
			["Dokiúr|mirage-raceway"] = { 8, 1, 69, 1116 },
			["Hopedieslast|shekzeer"] = { 8, 1, 95, 1188 },
			["Hotzalotz|hoptallus"] = { 0, 9, -36, 1041 },
			["Jäckynkôô|hoptallus"] = { 2, 7, -7, 1016 },
			["Réfréshér|hoptallus"] = { 2, 7, 39, 1016 },
			["Rodnichek|shekzeer"] = { 8, 1, 37, 1251 },
			["ßlinkd|shekzeer"] = { 4, 5, -10, 1015 },
			["Cavernicola|garalon"] = { 4, 4, 41, 648 },
			["Deepfull|shekzeer"] = { 4, 4, 9, 887 },
			["Gavno|shekzeer"] = { 7, 1, 23, 834 },
			["Iste|hoptallus"] = { 1, 7, 17, 1055 },
			["Orestis|norushen"] = { 3, 5, 9, 994 },
			["ßonnießlue|shekzeer"] = { 7, 1, 18, 834 },
			["Tackiella|shekzeer"] = { 2, 6, -55, 931 },
			["Вялыйпаладин|flamegor"] = { 4, 4, 3, 747 },
			["Plåýbøt|shekzeer"] = { 6, 1, 32, 934 },
			["Taopaípaí|auberdine"] = { 4, 3, 16, 648 },
			["Bizo|shekzeer"] = { 4, 2, 75, 951 },
			["Bonefire|garalon"] = { 0, 6, -42, 994 },
			["Fofii|shekzeer"] = { 1, 5, -18, 1003 },
			["Vuckezija|norushen"] = { 3, 3, -17, 957 },
			["Drumåndbåss|shekzeer"] = { 4, 1, 34, 971 },
			["Healdbyme|shekzeer"] = { 2, 3, 15, 1188 },
			["Ludiwig|shekzeer"] = { 1, 4, -9, 1134 },
			["Тнэш|flamegor"] = { 4, 1, 34, 971 },
			["Muga|hoptallus"] = { 1, 3, -21, 1076 },
			["Plåýbót|shekzeer"] = { 4, 0, 30, 981 },
			["Xály|shekzeer"] = { 1, 3, -11, 710 },
			["Yente|hoptallus"] = { 0, 4, -28, 1095 },
			["Bakomba|shekzeer"] = { 2, 1, -3, 1079 },
			["Burrny|shekzeer"] = { 0, 3, -17, 1072 },
			["Fyrk|garalon"] = { 0, 3, -19, 994 },
			["Karamelado|everlook"] = { 2, 1, 4, 1080 },
			["Phsydon|everlook"] = { 2, 1, -10, 1188 },
			["Sírpressheal|auberdine"] = { 0, 3, -29, 1043 },
			["Yezze|shekzeer"] = { 2, 1, -13, 1225 },
			["Борисзверь|flamegor"] = { 0, 3, -12, 1072 },
			["Affix|shekzeer"] = { 2, 0, 41, 978 },
			["Bobz|auberdine"] = { 0, 2, -15, 869 },
			["Jäckynkô|hoptallus"] = { 2, 0, 26, 1076 },
			["Jackynoo|hoptallus"] = { 1, 1, 13, 983 },
			["Lastà|everlook"] = { 0, 2, -19, 1184 },
			["Paloun|auberdine"] = { 0, 2, -14, 871 },
			["Refresherr|hoptallus"] = { 2, 0, 26, 1077 },
			["Voodomann|mirage-raceway"] = { 1, 1, 1, 706 },
			["Xddðð|shekzeer"] = { 2, 0, 23, 1221 },
			["Вялыйхантер|flamegor"] = { 1, 1, -8, 705 },
			["Adrianmandos|garalon"] = { 0, 1, -6, 828 },
			["Åøêkrótx|shekzeer"] = { 1, 0, 3, 1125 },
			["Dotzalotz|hoptallus"] = { 0, 1, -8, 1090 },
			["Jâckywhâcky|shekzeer"] = { 1, 0, 7, 828 },
			["Skyráw|shekzeer"] = { 1, 0, 13, 875 },
			["Vishnyágødx|shekzeer"] = { 1, 0, 3, 1117 },
		},
		[2] = {
			["Luckynova|garalon"] = { 38, 35, 99, 854 },
			["Voljix|shekzeer"] = { 24, 20, 164, 1188 },
			["Atamal|shekzeer"] = { 21, 20, 214, 1193 },
			["Gnomidge|hoptallus"] = { 21, 20, 194, 1188 },
			["Rbgme|norushen"] = { 21, 20, 178, 1188 },
			["Рыкай|flamegor"] = { 21, 16, 60, 1188 },
			["Melatonin|everlook"] = { 14, 14, 280, 873 },
			["Screwedup|norushen"] = { 14, 14, 306, 828 },
			["Golmash|shekzeer"] = { 11, 16, 31, 828 },
			["Skorpiys|norushen"] = { 7, 8, 1, 849 },
			["Dukhdan|garalon"] = { 3, 4, 15, 1188 },
			["Exhale|hoptallus"] = { 3, 3, 66, 828 },
			["Sangore|auberdine"] = { 0, 6, 0, 1232 },
			["Therealfq|shekzeer"] = { 6, 0, 25, 1078 },
			["Batix|shekzeer"] = { 5, 0, 109, 1070 },
			["Restorok|shekzeer"] = { 0, 5, 0, 1080 },
			["Shockpowerjk|shekzeer"] = { 2, 0, 25, 1092 },
			["Shockpowerr|shekzeer"] = { 2, 0, 10, 1113 },
			["Totemgodx|shekzeer"] = { 0, 2, 0, 648 },
			["Srtdrippa|everlook"] = { 1, 0, 96, 1077 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1188 },
			["Wheyxw|shekzeer"] = { 1, 0, 21, 828 },
		},
	},
}

