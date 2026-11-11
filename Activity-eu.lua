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
	built = 1794409234,
	builtText = "2026-11-11 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Crazyskill|shekzeer"] = { 1, 0, 2, 48 },
			["Metabis|shekzeer"] = { 1, 0, 2, 48 },
			["Soulburnerx|auberdine"] = { 0, 1, 0, 48 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Crazyskill|shekzeer"] = { 1, 0, 2, 48 },
			["Metabis|shekzeer"] = { 1, 0, 2, 48 },
			["Paladîon|auberdine"] = { 0, 1, 0, 77 },
			["Soulburnerx|auberdine"] = { 0, 1, 0, 48 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Crazyskill|shekzeer"] = { 1, 0, 2, 48 },
			["Metabis|shekzeer"] = { 1, 0, 2, 48 },
			["Paladîon|auberdine"] = { 0, 1, 0, 77 },
			["Soulburnerx|auberdine"] = { 0, 1, 0, 48 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Crazyskill|shekzeer"] = { 1, 0, 2, 48 },
			["Metabis|shekzeer"] = { 1, 0, 2, 48 },
			["Paladîon|auberdine"] = { 0, 1, 0, 77 },
			["Soulburnerx|auberdine"] = { 0, 1, 0, 48 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Conservé|shekzeer"] = { 22, 23, 206, 948 },
			["Ineo|shekzeer"] = { 19, 15, 14, 810 },
			["Betix|shekzeer"] = { 15, 15, 40, 1023 },
			["Филмарис|flamegor"] = { 13, 14, -94, 948 },
			["Click|shekzeer"] = { 15, 10, 37, 948 },
			["Selenagomezy|shekzeer"] = { 15, 10, 36, 1048 },
			["Orestis|norushen"] = { 13, 11, 91, 901 },
			["Savexx|shekzeer"] = { 16, 8, 8, 987 },
			["Srtx|shekzeer"] = { 16, 8, 109, 1045 },
			["Tastemydmg|shekzeer"] = { 9, 15, -67, 1074 },
			["Tyralíon|shekzeer"] = { 9, 15, -67, 1074 },
			["Vêrcêttîx|shekzeer"] = { 24, 0, 134, 1010 },
			["Mythrugun|garalon"] = { 8, 11, -26, 1034 },
			["Tsukuyommi|garalon"] = { 8, 11, -26, 1043 },
			["Autoshotandy|shekzeer"] = { 9, 7, 60, 948 },
			["Burrny|shekzeer"] = { 7, 9, 82, 1138 },
			["Gordonslaya|shekzeer"] = { 9, 7, 60, 948 },
			["Greedypaws|shekzeer"] = { 7, 9, 109, 1138 },
			["Rodnichek|shekzeer"] = { 8, 8, 79, 942 },
			["Yente|hoptallus"] = { 12, 3, 128, 1104 },
			["Cõmbustz|shekzeer"] = { 6, 8, -43, 1067 },
			["Rainbowrïder|shekzeer"] = { 6, 8, -32, 1067 },
			["Weaverok|shekzeer"] = { 9, 4, 45, 1002 },
			["Drumåndbåss|shekzeer"] = { 7, 5, 31, 1063 },
			["Hotzalotz|hoptallus"] = { 9, 3, 137, 1105 },
			["Lilfeather|shekzeer"] = { 8, 4, 58, 1128 },
			["Zok|shekzeer"] = { 6, 6, 0, 977 },
			["Тнэш|flamegor"] = { 7, 5, 27, 1062 },
			["Xály|shekzeer"] = { 8, 3, 39, 948 },
			["Zelyxgodx|firemaw"] = { 7, 4, 89, 1100 },
			["Legìlímens|auberdine"] = { 5, 5, 23, 1233 },
			["Melba|shekzeer"] = { 2, 8, -92, 1021 },
			["Retrivout|shekzeer"] = { 6, 4, -8, 1173 },
			["Voljix|shekzeer"] = { 5, 5, 0, 1216 },
			["Yezze|garalon"] = { 6, 4, 18, 1128 },
			["Derxibro|shekzeer"] = { 4, 5, -56, 977 },
			["Fyrk|garalon"] = { 1, 8, -62, 1094 },
			["Josax|mirage-raceway"] = { 4, 5, 8, 1158 },
			["Makkezi|shekzeer"] = { 5, 4, 45, 1077 },
			["Ziggemaster|shekzeer"] = { 5, 4, 34, 1071 },
			["Maddiganxo|shekzeer"] = { 3, 5, 20, 1410 },
			["Parkettaszeg|shekzeer"] = { 2, 6, -38, 1128 },
			["ßlinkd|shekzeer"] = { 2, 6, -25, 1128 },
			["Jakamotô|shekzeer"] = { 5, 2, 28, 911 },
			["Thaixx|shekzeer"] = { 4, 3, -42, 1386 },
			["Anadosova|shekzeer"] = { 1, 5, -36, 1134 },
			["Angrywife|shekzeer"] = { 5, 1, 32, 1389 },
			["Commitment|shekzeer"] = { 3, 3, 14, 1029 },
			["Drammatica|mirage-raceway"] = { 2, 4, -12, 939 },
			["Icantrap|shekzeer"] = { 2, 4, 6, 1157 },
			["Katkota|shekzeer"] = { 4, 2, 50, 768 },
			["Lastà|everlook"] = { 2, 4, -13, 1158 },
			["Liajin|shekzeer"] = { 1, 5, -41, 1139 },
			["Nefrmagusye|shekzeer"] = { 3, 3, 53, 1028 },
			["Optiimus|shekzeer"] = { 2, 4, -13, 1151 },
			["Shlouh|shekzeer"] = { 4, 2, 31, 906 },
			["Smokerz|mirage-raceway"] = { 2, 4, -12, 937 },
			["Suenelos|shekzeer"] = { 2, 4, -14, 1128 },
			["Vycieð|shekzeer"] = { 2, 4, -10, 1216 },
			["Domnox|auberdine"] = { 3, 2, 39, 1405 },
			["Najouar|shekzeer"] = { 4, 1, 50, 943 },
			["Pðiððy|shekzeer"] = { 4, 1, 29, 955 },
			["Sapmere|auberdine"] = { 3, 2, 42, 1406 },
			["Jrabbit|shekzeer"] = { 2, 2, 23, 1099 },
			["Kodeinlover|mirage-raceway"] = { 2, 2, 0, 971 },
			["Sangore|auberdine"] = { 1, 3, 23, 1128 },
			["Yezze|shekzeer"] = { 1, 3, -25, 1232 },
			["Khobkhunkrap|shekzeer"] = { 2, 1, 16, 948 },
			["Lethaltickle|norushen"] = { 0, 3, -14, 1128 },
			["Marlk|shekzeer"] = { 1, 2, -13, 1128 },
			["Muga|hoptallus"] = { 3, 0, 24, 1169 },
			["Rainbôwrider|shekzeer"] = { 2, 1, 14, 1027 },
			["Satånaz|shekzeer"] = { 3, 0, 6, 960 },
			["Sumtinrother|shekzeer"] = { 2, 1, 14, 1028 },
			["Vercettixx|shekzeer"] = { 3, 0, 15, 954 },
			["Locketqt|norushen"] = { 0, 2, 0, 1128 },
			["Bobz|auberdine"] = { 1, 0, 3, 1358 },
			["Cavernicola|garalon"] = { 0, 1, -6, 995 },
			["Crazyskill|shekzeer"] = { 1, 0, 2, 48 },
			["Metabis|shekzeer"] = { 1, 0, 2, 48 },
			["Paladîon|auberdine"] = { 0, 1, 0, 77 },
			["Paloun|auberdine"] = { 1, 0, 4, 1345 },
			["Soulburnerx|auberdine"] = { 0, 1, 0, 48 },
			["Tyrellqq|norushen"] = { 0, 1, -4, 1128 },
		},
		[2] = {
			["Aramorth|mirage-raceway"] = { 12, 13, 70, 1128 },
			["Exhale|hoptallus"] = { 12, 13, 709, 1128 },
			["Golmash|shekzeer"] = { 12, 13, 129, 1128 },
			["Holylax|garalon"] = { 12, 13, 258, 1124 },
			["Melatonin|everlook"] = { 12, 13, 709, 1128 },
			["Skorpiys|norushen"] = { 12, 13, 70, 1130 },
			["Gnomidge|hoptallus"] = { 12, 12, 414, 1128 },
			["Rbgme|norushen"] = { 12, 12, 340, 1128 },
			["Khobkhunkrap|shekzeer"] = { 10, 3, 960, 948 },
			["Numanuxna|shekzeer"] = { 10, 3, 744, 992 },
			["Plåýbót|shekzeer"] = { 10, 3, 90, 993 },
			["Jakamoto|shekzeer"] = { 3, 6, 69, 993 },
			["Savexx|shekzeer"] = { 3, 6, -27, 987 },
			["Srtwhippa|everlook"] = { 3, 6, 144, 988 },
			["Derxibro|shekzeer"] = { 3, 4, -36, 977 },
			["Yhwatch|shekzeer"] = { 3, 4, 54, 1048 },
			["Therealfq|shekzeer"] = { 1, 1, -14, 1068 },
			["Weaverok|shekzeer"] = { 1, 1, 5, 1071 },
			["Фкю|flamegor"] = { 1, 0, 4, 1136 },
		},
	},
}

