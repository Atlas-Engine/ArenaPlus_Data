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
	built = 1794405649,
	builtText = "2026-11-11 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Paladîon|auberdine"] = { 0, 1, 0, 17 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Paladîon|auberdine"] = { 0, 1, 0, 17 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Paladîon|auberdine"] = { 0, 1, 0, 17 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Katkota|shekzeer"] = { 1, 2, 11, 708 },
			["Paladîon|auberdine"] = { 0, 1, 0, 17 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Conservé|shekzeer"] = { 22, 23, 206, 888 },
			["Ineo|shekzeer"] = { 19, 15, 14, 750 },
			["Betix|shekzeer"] = { 15, 15, 40, 964 },
			["Филмарис|flamegor"] = { 13, 14, -94, 888 },
			["Click|shekzeer"] = { 15, 10, 37, 888 },
			["Selenagomezy|shekzeer"] = { 15, 10, 36, 988 },
			["Orestis|norushen"] = { 13, 11, 91, 841 },
			["Savexx|shekzeer"] = { 16, 8, 8, 927 },
			["Srtx|shekzeer"] = { 16, 8, 109, 986 },
			["Tastemydmg|shekzeer"] = { 9, 15, -67, 1014 },
			["Tyralíon|shekzeer"] = { 9, 15, -67, 1014 },
			["Vêrcêttîx|shekzeer"] = { 24, 0, 134, 950 },
			["Mythrugun|garalon"] = { 8, 11, -26, 974 },
			["Tsukuyommi|garalon"] = { 8, 11, -26, 984 },
			["Autoshotandy|shekzeer"] = { 9, 7, 60, 888 },
			["Burrny|shekzeer"] = { 7, 9, 82, 1079 },
			["Gordonslaya|shekzeer"] = { 9, 7, 60, 888 },
			["Greedypaws|shekzeer"] = { 7, 9, 109, 1079 },
			["Rodnichek|shekzeer"] = { 8, 8, 79, 883 },
			["Yente|hoptallus"] = { 12, 3, 128, 1044 },
			["Cõmbustz|shekzeer"] = { 6, 8, -43, 1007 },
			["Rainbowrïder|shekzeer"] = { 6, 8, -32, 1007 },
			["Weaverok|shekzeer"] = { 9, 4, 45, 942 },
			["Drumåndbåss|shekzeer"] = { 7, 5, 31, 1003 },
			["Hotzalotz|hoptallus"] = { 9, 3, 137, 1045 },
			["Lilfeather|shekzeer"] = { 8, 4, 58, 1068 },
			["Zok|shekzeer"] = { 6, 6, 0, 917 },
			["Тнэш|flamegor"] = { 7, 5, 27, 1002 },
			["Xály|shekzeer"] = { 8, 3, 39, 888 },
			["Zelyxgodx|firemaw"] = { 7, 4, 89, 1041 },
			["Legìlímens|auberdine"] = { 5, 5, 23, 1173 },
			["Melba|shekzeer"] = { 2, 8, -92, 961 },
			["Retrivout|shekzeer"] = { 6, 4, -8, 1113 },
			["Voljix|shekzeer"] = { 5, 5, 0, 1156 },
			["Yezze|garalon"] = { 6, 4, 18, 1068 },
			["Derxibro|shekzeer"] = { 4, 5, -56, 917 },
			["Fyrk|garalon"] = { 1, 8, -62, 1035 },
			["Josax|mirage-raceway"] = { 4, 5, 8, 1098 },
			["Makkezi|shekzeer"] = { 5, 4, 45, 1017 },
			["Ziggemaster|shekzeer"] = { 5, 4, 34, 1011 },
			["Maddiganxo|shekzeer"] = { 3, 5, 20, 1350 },
			["Parkettaszeg|shekzeer"] = { 2, 6, -38, 1068 },
			["ßlinkd|shekzeer"] = { 2, 6, -25, 1068 },
			["Jakamotô|shekzeer"] = { 5, 2, 28, 851 },
			["Thaixx|shekzeer"] = { 4, 3, -42, 1326 },
			["Anadosova|shekzeer"] = { 1, 5, -36, 1074 },
			["Angrywife|shekzeer"] = { 5, 1, 32, 1329 },
			["Commitment|shekzeer"] = { 3, 3, 14, 969 },
			["Drammatica|mirage-raceway"] = { 2, 4, -12, 879 },
			["Icantrap|shekzeer"] = { 2, 4, 6, 1097 },
			["Katkota|shekzeer"] = { 4, 2, 50, 708 },
			["Lastà|everlook"] = { 2, 4, -13, 1098 },
			["Liajin|shekzeer"] = { 1, 5, -41, 1080 },
			["Nefrmagusye|shekzeer"] = { 3, 3, 53, 968 },
			["Optiimus|shekzeer"] = { 2, 4, -13, 1092 },
			["Sangore|auberdine"] = { 1, 5, 23, 1068 },
			["Shlouh|shekzeer"] = { 4, 2, 31, 846 },
			["Smokerz|mirage-raceway"] = { 2, 4, -12, 877 },
			["Suenelos|shekzeer"] = { 2, 4, -14, 1068 },
			["Vycieð|shekzeer"] = { 2, 4, -10, 1156 },
			["Domnox|auberdine"] = { 3, 2, 39, 1346 },
			["Najouar|shekzeer"] = { 4, 1, 50, 884 },
			["Pðiððy|shekzeer"] = { 4, 1, 29, 895 },
			["Sapmere|auberdine"] = { 3, 2, 42, 1346 },
			["Jrabbit|shekzeer"] = { 2, 2, 23, 1039 },
			["Kodeinlover|mirage-raceway"] = { 2, 2, 0, 911 },
			["Yezze|shekzeer"] = { 1, 3, -25, 1172 },
			["Khobkhunkrap|shekzeer"] = { 2, 1, 16, 888 },
			["Lethaltickle|norushen"] = { 0, 3, -14, 1068 },
			["Marlk|shekzeer"] = { 1, 2, -13, 1068 },
			["Muga|hoptallus"] = { 3, 0, 24, 1109 },
			["Rainbôwrider|shekzeer"] = { 2, 1, 14, 968 },
			["Satånaz|shekzeer"] = { 3, 0, 6, 900 },
			["Sumtinrother|shekzeer"] = { 2, 1, 14, 968 },
			["Vercettixx|shekzeer"] = { 3, 0, 15, 895 },
			["Locketqt|norushen"] = { 0, 2, 0, 1068 },
			["Bobz|auberdine"] = { 1, 0, 3, 1299 },
			["Cavernicola|garalon"] = { 0, 1, -6, 935 },
			["Paladîon|auberdine"] = { 0, 1, 0, 17 },
			["Paloun|auberdine"] = { 1, 0, 4, 1286 },
			["Tyrellqq|norushen"] = { 0, 1, -4, 1068 },
		},
		[2] = {
			["Aramorth|mirage-raceway"] = { 12, 13, 70, 1068 },
			["Exhale|hoptallus"] = { 12, 13, 709, 1068 },
			["Golmash|shekzeer"] = { 12, 13, 129, 1068 },
			["Holylax|garalon"] = { 12, 13, 258, 1064 },
			["Melatonin|everlook"] = { 12, 13, 709, 1068 },
			["Skorpiys|norushen"] = { 12, 13, 70, 1070 },
			["Gnomidge|hoptallus"] = { 12, 12, 414, 1068 },
			["Rbgme|norushen"] = { 12, 12, 340, 1068 },
			["Khobkhunkrap|shekzeer"] = { 10, 3, 960, 888 },
			["Numanuxna|shekzeer"] = { 10, 3, 744, 933 },
			["Plåýbót|shekzeer"] = { 10, 3, 90, 933 },
			["Jakamoto|shekzeer"] = { 3, 6, 69, 933 },
			["Savexx|shekzeer"] = { 3, 6, -27, 927 },
			["Srtwhippa|everlook"] = { 3, 6, 144, 928 },
			["Derxibro|shekzeer"] = { 3, 4, -36, 917 },
			["Yhwatch|shekzeer"] = { 3, 4, 54, 988 },
			["Therealfq|shekzeer"] = { 1, 1, -14, 1009 },
			["Weaverok|shekzeer"] = { 1, 1, 5, 1011 },
			["Фкю|flamegor"] = { 1, 0, 4, 1076 },
		},
	},
}

