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
	built = 1794398433,
	builtText = "2026-11-11 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 7, 2, 50, 630 },
			["Katkota|shekzeer"] = { 1, 2, 11, 588 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Conservé|shekzeer"] = { 22, 23, 206, 768 },
			["Ineo|shekzeer"] = { 19, 15, 14, 630 },
			["Betix|shekzeer"] = { 15, 15, 40, 843 },
			["Филмарис|flamegor"] = { 13, 14, -94, 768 },
			["Click|shekzeer"] = { 15, 10, 37, 768 },
			["Selenagomezy|shekzeer"] = { 15, 10, 36, 868 },
			["Orestis|norushen"] = { 13, 11, 91, 721 },
			["Savexx|shekzeer"] = { 16, 8, 8, 807 },
			["Srtx|shekzeer"] = { 16, 8, 109, 865 },
			["Tastemydmg|shekzeer"] = { 9, 15, -67, 894 },
			["Tyralíon|shekzeer"] = { 9, 15, -67, 894 },
			["Vêrcêttîx|shekzeer"] = { 24, 0, 134, 830 },
			["Mythrugun|garalon"] = { 8, 11, -26, 853 },
			["Tsukuyommi|garalon"] = { 8, 11, -26, 863 },
			["Autoshotandy|shekzeer"] = { 9, 7, 60, 768 },
			["Burrny|shekzeer"] = { 7, 9, 82, 958 },
			["Gordonslaya|shekzeer"] = { 9, 7, 60, 768 },
			["Greedypaws|shekzeer"] = { 7, 9, 109, 958 },
			["Rodnichek|shekzeer"] = { 8, 8, 79, 762 },
			["Yente|hoptallus"] = { 12, 3, 128, 924 },
			["Cõmbustz|shekzeer"] = { 6, 8, -43, 887 },
			["Rainbowrïder|shekzeer"] = { 6, 8, -32, 887 },
			["Weaverok|shekzeer"] = { 9, 4, 45, 822 },
			["Drumåndbåss|shekzeer"] = { 7, 5, 31, 883 },
			["Hotzalotz|hoptallus"] = { 9, 3, 137, 924 },
			["Lilfeather|shekzeer"] = { 8, 4, 58, 948 },
			["Zok|shekzeer"] = { 6, 6, 0, 797 },
			["Тнэш|flamegor"] = { 7, 5, 27, 882 },
			["Xály|shekzeer"] = { 8, 3, 39, 768 },
			["Zelyxgodx|firemaw"] = { 7, 4, 89, 920 },
			["Legìlímens|auberdine"] = { 5, 5, 23, 1053 },
			["Melba|shekzeer"] = { 2, 8, -92, 841 },
			["Retrivout|shekzeer"] = { 6, 4, -8, 993 },
			["Voljix|shekzeer"] = { 5, 5, 0, 1036 },
			["Yezze|garalon"] = { 6, 4, 18, 948 },
			["Derxibro|shekzeer"] = { 4, 5, -56, 797 },
			["Fyrk|garalon"] = { 1, 8, -62, 914 },
			["Josax|mirage-raceway"] = { 4, 5, 8, 978 },
			["Makkezi|shekzeer"] = { 5, 4, 45, 897 },
			["Ziggemaster|shekzeer"] = { 5, 4, 34, 891 },
			["Maddiganxo|shekzeer"] = { 3, 5, 20, 1230 },
			["Parkettaszeg|shekzeer"] = { 2, 6, -38, 948 },
			["ßlinkd|shekzeer"] = { 2, 6, -25, 948 },
			["Jakamotô|shekzeer"] = { 5, 2, 28, 731 },
			["Thaixx|shekzeer"] = { 4, 3, -42, 1206 },
			["Anadosova|shekzeer"] = { 1, 5, -36, 954 },
			["Angrywife|shekzeer"] = { 5, 1, 32, 1209 },
			["Commitment|shekzeer"] = { 3, 3, 14, 849 },
			["Drammatica|mirage-raceway"] = { 2, 4, -12, 759 },
			["Icantrap|shekzeer"] = { 2, 4, 6, 977 },
			["Katkota|shekzeer"] = { 4, 2, 50, 588 },
			["Lastà|everlook"] = { 2, 4, -13, 978 },
			["Liajin|shekzeer"] = { 1, 5, -41, 959 },
			["Nefrmagusye|shekzeer"] = { 3, 3, 53, 848 },
			["Optiimus|shekzeer"] = { 2, 4, -13, 971 },
			["Sangore|auberdine"] = { 1, 5, 23, 948 },
			["Shlouh|shekzeer"] = { 4, 2, 31, 726 },
			["Smokerz|mirage-raceway"] = { 2, 4, -12, 757 },
			["Suenelos|shekzeer"] = { 2, 4, -14, 948 },
			["Vycieð|shekzeer"] = { 2, 4, -10, 1036 },
			["Domnox|auberdine"] = { 3, 2, 39, 1225 },
			["Najouar|shekzeer"] = { 4, 1, 50, 763 },
			["Pðiððy|shekzeer"] = { 4, 1, 29, 775 },
			["Sapmere|auberdine"] = { 3, 2, 42, 1226 },
			["Jrabbit|shekzeer"] = { 2, 2, 23, 919 },
			["Kodeinlover|mirage-raceway"] = { 2, 2, 0, 791 },
			["Yezze|shekzeer"] = { 1, 3, -25, 1052 },
			["Khobkhunkrap|shekzeer"] = { 2, 1, 16, 768 },
			["Lethaltickle|norushen"] = { 0, 3, -14, 948 },
			["Marlk|shekzeer"] = { 1, 2, -13, 948 },
			["Muga|hoptallus"] = { 3, 0, 24, 989 },
			["Rainbôwrider|shekzeer"] = { 2, 1, 14, 847 },
			["Satånaz|shekzeer"] = { 3, 0, 6, 780 },
			["Sumtinrother|shekzeer"] = { 2, 1, 14, 848 },
			["Vercettixx|shekzeer"] = { 3, 0, 15, 774 },
			["Locketqt|norushen"] = { 0, 2, 0, 948 },
			["Bobz|auberdine"] = { 1, 0, 3, 1178 },
			["Cavernicola|garalon"] = { 0, 1, -6, 815 },
			["Paloun|auberdine"] = { 1, 0, 4, 1165 },
			["Tyrellqq|norushen"] = { 0, 1, -4, 948 },
		},
		[2] = {
			["Aramorth|mirage-raceway"] = { 12, 13, 70, 948 },
			["Exhale|hoptallus"] = { 12, 13, 709, 948 },
			["Golmash|shekzeer"] = { 12, 13, 129, 948 },
			["Holylax|garalon"] = { 12, 13, 258, 944 },
			["Melatonin|everlook"] = { 12, 13, 709, 948 },
			["Skorpiys|norushen"] = { 12, 13, 70, 950 },
			["Gnomidge|hoptallus"] = { 12, 12, 414, 948 },
			["Rbgme|norushen"] = { 12, 12, 340, 948 },
			["Khobkhunkrap|shekzeer"] = { 10, 3, 960, 768 },
			["Numanuxna|shekzeer"] = { 10, 3, 744, 812 },
			["Plåýbót|shekzeer"] = { 10, 3, 90, 813 },
			["Jakamoto|shekzeer"] = { 3, 6, 69, 813 },
			["Savexx|shekzeer"] = { 3, 6, -27, 807 },
			["Srtwhippa|everlook"] = { 3, 6, 144, 808 },
			["Derxibro|shekzeer"] = { 3, 4, -36, 797 },
			["Yhwatch|shekzeer"] = { 3, 4, 54, 868 },
			["Therealfq|shekzeer"] = { 1, 1, -14, 888 },
			["Weaverok|shekzeer"] = { 1, 1, 5, 891 },
			["Фкю|flamegor"] = { 1, 0, 4, 956 },
		},
	},
}

