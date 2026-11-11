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
	built = 1794402039,
	builtText = "2026-11-11 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 7, 2, 50, 690 },
			["Katkota|shekzeer"] = { 1, 2, 11, 648 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Conservé|shekzeer"] = { 22, 23, 206, 828 },
			["Ineo|shekzeer"] = { 19, 15, 14, 690 },
			["Betix|shekzeer"] = { 15, 15, 40, 904 },
			["Филмарис|flamegor"] = { 13, 14, -94, 828 },
			["Click|shekzeer"] = { 15, 10, 37, 828 },
			["Selenagomezy|shekzeer"] = { 15, 10, 36, 928 },
			["Orestis|norushen"] = { 13, 11, 91, 781 },
			["Savexx|shekzeer"] = { 16, 8, 8, 867 },
			["Srtx|shekzeer"] = { 16, 8, 109, 925 },
			["Tastemydmg|shekzeer"] = { 9, 15, -67, 954 },
			["Tyralíon|shekzeer"] = { 9, 15, -67, 954 },
			["Vêrcêttîx|shekzeer"] = { 24, 0, 134, 890 },
			["Mythrugun|garalon"] = { 8, 11, -26, 914 },
			["Tsukuyommi|garalon"] = { 8, 11, -26, 924 },
			["Autoshotandy|shekzeer"] = { 9, 7, 60, 828 },
			["Burrny|shekzeer"] = { 7, 9, 82, 1018 },
			["Gordonslaya|shekzeer"] = { 9, 7, 60, 828 },
			["Greedypaws|shekzeer"] = { 7, 9, 109, 1018 },
			["Rodnichek|shekzeer"] = { 8, 8, 79, 822 },
			["Yente|hoptallus"] = { 12, 3, 128, 984 },
			["Cõmbustz|shekzeer"] = { 6, 8, -43, 947 },
			["Rainbowrïder|shekzeer"] = { 6, 8, -32, 947 },
			["Weaverok|shekzeer"] = { 9, 4, 45, 882 },
			["Drumåndbåss|shekzeer"] = { 7, 5, 31, 943 },
			["Hotzalotz|hoptallus"] = { 9, 3, 137, 985 },
			["Lilfeather|shekzeer"] = { 8, 4, 58, 1008 },
			["Zok|shekzeer"] = { 6, 6, 0, 857 },
			["Тнэш|flamegor"] = { 7, 5, 27, 942 },
			["Xály|shekzeer"] = { 8, 3, 39, 828 },
			["Zelyxgodx|firemaw"] = { 7, 4, 89, 981 },
			["Legìlímens|auberdine"] = { 5, 5, 23, 1113 },
			["Melba|shekzeer"] = { 2, 8, -92, 901 },
			["Retrivout|shekzeer"] = { 6, 4, -8, 1053 },
			["Voljix|shekzeer"] = { 5, 5, 0, 1096 },
			["Yezze|garalon"] = { 6, 4, 18, 1008 },
			["Derxibro|shekzeer"] = { 4, 5, -56, 857 },
			["Fyrk|garalon"] = { 1, 8, -62, 975 },
			["Josax|mirage-raceway"] = { 4, 5, 8, 1038 },
			["Makkezi|shekzeer"] = { 5, 4, 45, 957 },
			["Ziggemaster|shekzeer"] = { 5, 4, 34, 951 },
			["Maddiganxo|shekzeer"] = { 3, 5, 20, 1290 },
			["Parkettaszeg|shekzeer"] = { 2, 6, -38, 1008 },
			["ßlinkd|shekzeer"] = { 2, 6, -25, 1008 },
			["Jakamotô|shekzeer"] = { 5, 2, 28, 791 },
			["Thaixx|shekzeer"] = { 4, 3, -42, 1266 },
			["Anadosova|shekzeer"] = { 1, 5, -36, 1014 },
			["Angrywife|shekzeer"] = { 5, 1, 32, 1269 },
			["Commitment|shekzeer"] = { 3, 3, 14, 909 },
			["Drammatica|mirage-raceway"] = { 2, 4, -12, 819 },
			["Icantrap|shekzeer"] = { 2, 4, 6, 1037 },
			["Katkota|shekzeer"] = { 4, 2, 50, 648 },
			["Lastà|everlook"] = { 2, 4, -13, 1038 },
			["Liajin|shekzeer"] = { 1, 5, -41, 1019 },
			["Nefrmagusye|shekzeer"] = { 3, 3, 53, 908 },
			["Optiimus|shekzeer"] = { 2, 4, -13, 1031 },
			["Sangore|auberdine"] = { 1, 5, 23, 1008 },
			["Shlouh|shekzeer"] = { 4, 2, 31, 786 },
			["Smokerz|mirage-raceway"] = { 2, 4, -12, 817 },
			["Suenelos|shekzeer"] = { 2, 4, -14, 1008 },
			["Vycieð|shekzeer"] = { 2, 4, -10, 1096 },
			["Domnox|auberdine"] = { 3, 2, 39, 1286 },
			["Najouar|shekzeer"] = { 4, 1, 50, 823 },
			["Pðiððy|shekzeer"] = { 4, 1, 29, 835 },
			["Sapmere|auberdine"] = { 3, 2, 42, 1286 },
			["Jrabbit|shekzeer"] = { 2, 2, 23, 979 },
			["Kodeinlover|mirage-raceway"] = { 2, 2, 0, 851 },
			["Yezze|shekzeer"] = { 1, 3, -25, 1112 },
			["Khobkhunkrap|shekzeer"] = { 2, 1, 16, 828 },
			["Lethaltickle|norushen"] = { 0, 3, -14, 1008 },
			["Marlk|shekzeer"] = { 1, 2, -13, 1008 },
			["Muga|hoptallus"] = { 3, 0, 24, 1049 },
			["Rainbôwrider|shekzeer"] = { 2, 1, 14, 907 },
			["Satånaz|shekzeer"] = { 3, 0, 6, 840 },
			["Sumtinrother|shekzeer"] = { 2, 1, 14, 908 },
			["Vercettixx|shekzeer"] = { 3, 0, 15, 834 },
			["Locketqt|norushen"] = { 0, 2, 0, 1008 },
			["Bobz|auberdine"] = { 1, 0, 3, 1238 },
			["Cavernicola|garalon"] = { 0, 1, -6, 875 },
			["Paloun|auberdine"] = { 1, 0, 4, 1225 },
			["Tyrellqq|norushen"] = { 0, 1, -4, 1008 },
		},
		[2] = {
			["Aramorth|mirage-raceway"] = { 12, 13, 70, 1008 },
			["Exhale|hoptallus"] = { 12, 13, 709, 1008 },
			["Golmash|shekzeer"] = { 12, 13, 129, 1008 },
			["Holylax|garalon"] = { 12, 13, 258, 1004 },
			["Melatonin|everlook"] = { 12, 13, 709, 1008 },
			["Skorpiys|norushen"] = { 12, 13, 70, 1010 },
			["Gnomidge|hoptallus"] = { 12, 12, 414, 1008 },
			["Rbgme|norushen"] = { 12, 12, 340, 1008 },
			["Khobkhunkrap|shekzeer"] = { 10, 3, 960, 828 },
			["Numanuxna|shekzeer"] = { 10, 3, 744, 872 },
			["Plåýbót|shekzeer"] = { 10, 3, 90, 873 },
			["Jakamoto|shekzeer"] = { 3, 6, 69, 873 },
			["Savexx|shekzeer"] = { 3, 6, -27, 867 },
			["Srtwhippa|everlook"] = { 3, 6, 144, 868 },
			["Derxibro|shekzeer"] = { 3, 4, -36, 857 },
			["Yhwatch|shekzeer"] = { 3, 4, 54, 928 },
			["Therealfq|shekzeer"] = { 1, 1, -14, 948 },
			["Weaverok|shekzeer"] = { 1, 1, 5, 951 },
			["Фкю|flamegor"] = { 1, 0, 4, 1016 },
		},
	},
}

