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
	built = 1794582061,
	builtText = "2026-11-13 10:01 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gódx|shekzeer"] = { 0, 1, -13, 48 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Semloh|mirage-raceway"] = { 3, 0, 24, 62 },
			["Sangore|auberdine"] = { 0, 2, 0, 65 },
			["Anadosova|shekzeer"] = { 0, 1, -6, 71 },
			["Gódx|shekzeer"] = { 0, 1, -13, 48 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Semloh|mirage-raceway"] = { 3, 0, 24, 62 },
			["Sangore|auberdine"] = { 0, 2, 0, 65 },
			["Anadosova|shekzeer"] = { 0, 1, -6, 71 },
			["Gódx|shekzeer"] = { 0, 1, -13, 48 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Semloh|mirage-raceway"] = { 3, 0, 24, 62 },
			["Sangore|auberdine"] = { 0, 2, 0, 65 },
			["Anadosova|shekzeer"] = { 0, 1, -6, 71 },
			["Gódx|shekzeer"] = { 0, 1, -13, 48 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 15, 20, -40, 855 },
			["Holmesx|mirage-raceway"] = { 17, 9, 251, 1090 },
			["Ivonsa|garalon"] = { 18, 6, 69, 1081 },
			["Plåýßøt|shekzeer"] = { 9, 14, -93, 904 },
			["Tastemydmg|shekzeer"] = { 14, 9, 12, 1128 },
			["Tyralíon|shekzeer"] = { 14, 9, 12, 1128 },
			["Andysgone|shekzeer"] = { 9, 13, -73, 989 },
			["Kobra|shekzeer"] = { 9, 13, -73, 978 },
			["Brazqr|shekzeer"] = { 9, 12, -29, 1004 },
			["Listerine|shekzeer"] = { 10, 10, 2, 884 },
			["Toxicelitist|shekzeer"] = { 10, 10, 2, 884 },
			["Jakamotô|shekzeer"] = { 10, 7, 48, 948 },
			["Zonnmonk|hoptallus"] = { 10, 7, 47, 1043 },
			["Weaverok|shekzeer"] = { 10, 6, 50, 1026 },
			["Zabir|everlook"] = { 10, 6, 57, 986 },
			["Heliocentric|garalon"] = { 3, 12, -46, 1079 },
			["Nossy|hoptallus"] = { 10, 5, 46, 1059 },
			["Srtx|shekzeer"] = { 10, 5, 66, 1081 },
			["Bernadeta|shekzeer"] = { 7, 7, 117, 1072 },
			["Cõmbustz|shekzeer"] = { 8, 6, 43, 1070 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 42, 1071 },
			["Mortabotgodx|shekzeer"] = { 8, 5, 40, 876 },
			["Seera|shekzeer"] = { 2, 11, -85, 968 },
			["Draiks|garalon"] = { 3, 9, -14, 1229 },
			["Premanchan|everlook"] = { 8, 4, 61, 1015 },
			["Saigon|shekzeer"] = { 3, 9, -42, 1051 },
			["Savexx|shekzeer"] = { 5, 7, -3, 948 },
			["Wheelkick|shekzeer"] = { 8, 4, -16, 920 },
			["Commitment|shekzeer"] = { 7, 4, 44, 1008 },
			["Edgelocked|shekzeer"] = { 4, 7, -4, 1042 },
			["Fxlibfrjhdsx|shekzeer"] = { 10, 1, 74, 1054 },
			["Rodnichekx|shekzeer"] = { 7, 4, 85, 1009 },
			["Tube|shekzeer"] = { 4, 7, -4, 1042 },
			["Srtwhippa|everlook"] = { 4, 6, -4, 948 },
			["Betix|shekzeer"] = { 3, 6, -17, 1254 },
			["Conservé|shekzeer"] = { 4, 5, -5, 930 },
			["Dokiúr|mirage-raceway"] = { 8, 1, 69, 1237 },
			["Hotzalotz|hoptallus"] = { 0, 9, -36, 1162 },
			["Jäckynkôô|hoptallus"] = { 2, 7, -7, 1136 },
			["Réfréshér|hoptallus"] = { 2, 7, 39, 1136 },
			["ßlinkd|shekzeer"] = { 4, 5, -10, 1135 },
			["Cavernicola|garalon"] = { 4, 4, 41, 768 },
			["Deepfull|shekzeer"] = { 4, 4, 9, 1007 },
			["Gavno|shekzeer"] = { 7, 1, 23, 955 },
			["Iste|hoptallus"] = { 1, 7, 17, 1175 },
			["Orestis|norushen"] = { 3, 5, 9, 1114 },
			["ßonnießlue|shekzeer"] = { 7, 1, 18, 955 },
			["Tackiella|shekzeer"] = { 2, 6, -55, 1052 },
			["Вялыйпаладин|flamegor"] = { 4, 4, 3, 867 },
			["Plåýbøt|shekzeer"] = { 6, 1, 32, 1054 },
			["Taopaípaí|auberdine"] = { 4, 3, 16, 768 },
			["Bizo|shekzeer"] = { 4, 2, 75, 1071 },
			["Bonefire|garalon"] = { 0, 6, -42, 1114 },
			["Fofii|shekzeer"] = { 1, 5, -18, 1123 },
			["Vuckezija|norushen"] = { 3, 3, -17, 1077 },
			["Drumåndbåss|shekzeer"] = { 4, 1, 34, 1091 },
			["Healdbyme|shekzeer"] = { 2, 3, 15, 1308 },
			["Ludiwig|shekzeer"] = { 1, 4, -9, 1255 },
			["Тнэш|flamegor"] = { 4, 1, 34, 1091 },
			["Muga|hoptallus"] = { 1, 3, -21, 1196 },
			["Plåýbót|shekzeer"] = { 4, 0, 30, 1101 },
			["Xály|shekzeer"] = { 1, 3, -11, 830 },
			["Yente|hoptallus"] = { 0, 4, -28, 1216 },
			["Burrny|shekzeer"] = { 0, 3, -17, 1192 },
			["Fyrk|garalon"] = { 0, 3, -19, 1114 },
			["Hopedieslast|shekzeer"] = { 3, 0, 41, 1308 },
			["Phsydon|everlook"] = { 2, 1, -10, 1308 },
			["Rodnichek|shekzeer"] = { 3, 0, 19, 1372 },
			["Semloh|mirage-raceway"] = { 3, 0, 24, 62 },
			["Sírpressheal|auberdine"] = { 0, 3, -29, 1164 },
			["Yezze|shekzeer"] = { 2, 1, -13, 1346 },
			["Борисзверь|flamegor"] = { 0, 3, -12, 1192 },
			["Affix|shekzeer"] = { 2, 0, 41, 1098 },
			["Bakomba|shekzeer"] = { 1, 1, -5, 1199 },
			["Bobz|auberdine"] = { 0, 2, -15, 990 },
			["Jäckynkô|hoptallus"] = { 2, 0, 26, 1197 },
			["Jackynoo|hoptallus"] = { 1, 1, 13, 1104 },
			["Karamelado|everlook"] = { 1, 1, 1, 1201 },
			["Lastà|everlook"] = { 0, 2, -19, 1305 },
			["Paloun|auberdine"] = { 0, 2, -14, 991 },
			["Refresherr|hoptallus"] = { 2, 0, 26, 1197 },
			["Sangore|auberdine"] = { 0, 2, 0, 65 },
			["Voodomann|mirage-raceway"] = { 1, 1, 1, 826 },
			["Xddðð|shekzeer"] = { 2, 0, 23, 1341 },
			["Вялыйхантер|flamegor"] = { 1, 1, -8, 825 },
			["Adrianmandos|garalon"] = { 0, 1, -6, 948 },
			["Anadosova|shekzeer"] = { 0, 1, -6, 71 },
			["Åøêkrótx|shekzeer"] = { 1, 0, 3, 1245 },
			["Dotzalotz|hoptallus"] = { 0, 1, -8, 1211 },
			["Gódx|shekzeer"] = { 0, 1, -13, 48 },
			["Jâckywhâcky|shekzeer"] = { 1, 0, 7, 948 },
			["Skyráw|shekzeer"] = { 1, 0, 13, 995 },
			["Vishnyágødx|shekzeer"] = { 1, 0, 3, 1237 },
		},
		[2] = {
			["Luckynova|garalon"] = { 38, 35, 99, 974 },
			["Voljix|shekzeer"] = { 24, 20, 164, 1308 },
			["Atamal|shekzeer"] = { 21, 20, 214, 1313 },
			["Gnomidge|hoptallus"] = { 21, 20, 194, 1308 },
			["Rbgme|norushen"] = { 21, 20, 178, 1308 },
			["Рыкай|flamegor"] = { 21, 16, 60, 1308 },
			["Melatonin|everlook"] = { 14, 14, 280, 993 },
			["Screwedup|norushen"] = { 14, 14, 306, 948 },
			["Golmash|shekzeer"] = { 11, 16, 31, 948 },
			["Skorpiys|norushen"] = { 7, 8, 1, 969 },
			["Dukhdan|garalon"] = { 3, 4, 15, 1308 },
			["Exhale|hoptallus"] = { 3, 3, 66, 948 },
			["Sangore|auberdine"] = { 0, 6, 0, 1352 },
			["Therealfq|shekzeer"] = { 6, 0, 25, 1198 },
			["Batix|shekzeer"] = { 5, 0, 109, 1190 },
			["Restorok|shekzeer"] = { 0, 5, 0, 1201 },
			["Shockpowerjk|shekzeer"] = { 2, 0, 25, 1212 },
			["Shockpowerr|shekzeer"] = { 2, 0, 10, 1234 },
			["Totemgodx|shekzeer"] = { 0, 2, 0, 768 },
			["Srtdrippa|everlook"] = { 1, 0, 96, 1198 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1308 },
			["Wheyxw|shekzeer"] = { 1, 0, 21, 948 },
		},
	},
}

