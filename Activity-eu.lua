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
	built = 1794394843,
	builtText = "2026-11-11 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Conservé|shekzeer"] = { 15, 15, 111, 708 },
			["Ineo|shekzeer"] = { 11, 10, 10, 570 },
			["Филмарис|flamegor"] = { 9, 12, -78, 708 },
			["Orestis|norushen"] = { 11, 9, 85, 661 },
			["Autoshotandy|shekzeer"] = { 9, 7, 60, 708 },
			["Gordonslaya|shekzeer"] = { 9, 7, 60, 708 },
			["Rodnichek|shekzeer"] = { 8, 8, 79, 703 },
			["Xály|shekzeer"] = { 8, 3, 39, 708 },
			["Click|shekzeer"] = { 3, 5, -14, 708 },
			["Drammatica|mirage-raceway"] = { 2, 4, -12, 699 },
			["Katkota|shekzeer"] = { 4, 2, 50, 528 },
			["Shlouh|shekzeer"] = { 4, 2, 31, 666 },
			["Najouar|shekzeer"] = { 4, 1, 50, 704 },
			["Smokerz|mirage-raceway"] = { 1, 3, -14, 697 },
			["Khobkhunkrap|shekzeer"] = { 2, 1, 16, 708 },
			["Satånaz|shekzeer"] = { 3, 0, 6, 720 },
			["Vercettixx|shekzeer"] = { 3, 0, 15, 715 },
			["Jakamotô|shekzeer"] = { 2, 0, 12, 671 },
			["Pðiððy|shekzeer"] = { 0, 1, -3, 715 },
		},
		[2] = {
			["Khobkhunkrap|shekzeer"] = { 10, 3, 960, 708 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Conservé|shekzeer"] = { 22, 23, 206, 708 },
			["Ineo|shekzeer"] = { 19, 15, 14, 570 },
			["Betix|shekzeer"] = { 15, 15, 40, 784 },
			["Филмарис|flamegor"] = { 13, 14, -94, 708 },
			["Click|shekzeer"] = { 15, 10, 37, 708 },
			["Selenagomezy|shekzeer"] = { 15, 10, 36, 808 },
			["Orestis|norushen"] = { 13, 11, 91, 661 },
			["Savexx|shekzeer"] = { 16, 8, 8, 747 },
			["Srtx|shekzeer"] = { 16, 8, 109, 805 },
			["Tastemydmg|shekzeer"] = { 9, 15, -67, 834 },
			["Tyralíon|shekzeer"] = { 9, 15, -67, 834 },
			["Vêrcêttîx|shekzeer"] = { 24, 0, 134, 770 },
			["Mythrugun|garalon"] = { 8, 11, -26, 794 },
			["Tsukuyommi|garalon"] = { 8, 11, -26, 804 },
			["Autoshotandy|shekzeer"] = { 9, 7, 60, 708 },
			["Burrny|shekzeer"] = { 7, 9, 82, 898 },
			["Gordonslaya|shekzeer"] = { 9, 7, 60, 708 },
			["Greedypaws|shekzeer"] = { 7, 9, 109, 899 },
			["Rodnichek|shekzeer"] = { 8, 8, 79, 703 },
			["Yente|hoptallus"] = { 12, 3, 128, 864 },
			["Cõmbustz|shekzeer"] = { 6, 8, -43, 827 },
			["Rainbowrïder|shekzeer"] = { 6, 8, -32, 827 },
			["Weaverok|shekzeer"] = { 9, 4, 45, 762 },
			["Drumåndbåss|shekzeer"] = { 7, 5, 31, 823 },
			["Hotzalotz|hoptallus"] = { 9, 3, 137, 865 },
			["Lilfeather|shekzeer"] = { 8, 4, 58, 888 },
			["Zok|shekzeer"] = { 6, 6, 0, 737 },
			["Тнэш|flamegor"] = { 7, 5, 27, 822 },
			["Xály|shekzeer"] = { 8, 3, 39, 708 },
			["Zelyxgodx|firemaw"] = { 7, 4, 89, 861 },
			["Legìlímens|auberdine"] = { 5, 5, 23, 993 },
			["Melba|shekzeer"] = { 2, 8, -92, 781 },
			["Retrivout|shekzeer"] = { 6, 4, -8, 933 },
			["Voljix|shekzeer"] = { 5, 5, 0, 976 },
			["Yezze|garalon"] = { 6, 4, 18, 888 },
			["Derxibro|shekzeer"] = { 4, 5, -56, 737 },
			["Fyrk|garalon"] = { 1, 8, -62, 855 },
			["Josax|mirage-raceway"] = { 4, 5, 8, 918 },
			["Makkezi|shekzeer"] = { 5, 4, 45, 837 },
			["Ziggemaster|shekzeer"] = { 5, 4, 34, 831 },
			["Maddiganxo|shekzeer"] = { 3, 5, 20, 1170 },
			["Parkettaszeg|shekzeer"] = { 2, 6, -38, 888 },
			["ßlinkd|shekzeer"] = { 2, 6, -25, 888 },
			["Jakamotô|shekzeer"] = { 5, 2, 28, 671 },
			["Thaixx|shekzeer"] = { 4, 3, -42, 1146 },
			["Anadosova|shekzeer"] = { 1, 5, -36, 894 },
			["Angrywife|shekzeer"] = { 5, 1, 32, 1149 },
			["Commitment|shekzeer"] = { 3, 3, 14, 789 },
			["Drammatica|mirage-raceway"] = { 2, 4, -12, 699 },
			["Icantrap|shekzeer"] = { 2, 4, 6, 917 },
			["Katkota|shekzeer"] = { 4, 2, 50, 528 },
			["Lastà|everlook"] = { 2, 4, -13, 918 },
			["Liajin|shekzeer"] = { 1, 5, -41, 900 },
			["Nefrmagusye|shekzeer"] = { 3, 3, 53, 788 },
			["Optiimus|shekzeer"] = { 2, 4, -13, 911 },
			["Sangore|auberdine"] = { 1, 5, 23, 888 },
			["Shlouh|shekzeer"] = { 4, 2, 31, 666 },
			["Smokerz|mirage-raceway"] = { 2, 4, -12, 697 },
			["Suenelos|shekzeer"] = { 2, 4, -14, 888 },
			["Vycieð|shekzeer"] = { 2, 4, -10, 976 },
			["Domnox|auberdine"] = { 3, 2, 39, 1166 },
			["Najouar|shekzeer"] = { 4, 1, 50, 704 },
			["Pðiððy|shekzeer"] = { 4, 1, 29, 715 },
			["Sapmere|auberdine"] = { 3, 2, 42, 1166 },
			["Jrabbit|shekzeer"] = { 2, 2, 23, 859 },
			["Kodeinlover|mirage-raceway"] = { 2, 2, 0, 731 },
			["Yezze|shekzeer"] = { 1, 3, -25, 992 },
			["Khobkhunkrap|shekzeer"] = { 2, 1, 16, 708 },
			["Lethaltickle|norushen"] = { 0, 3, -14, 888 },
			["Marlk|shekzeer"] = { 1, 2, -13, 888 },
			["Muga|hoptallus"] = { 3, 0, 24, 929 },
			["Rainbôwrider|shekzeer"] = { 2, 1, 14, 788 },
			["Satånaz|shekzeer"] = { 3, 0, 6, 720 },
			["Sumtinrother|shekzeer"] = { 2, 1, 14, 788 },
			["Vercettixx|shekzeer"] = { 3, 0, 15, 715 },
			["Locketqt|norushen"] = { 0, 2, 0, 888 },
			["Bobz|auberdine"] = { 1, 0, 3, 1119 },
			["Cavernicola|garalon"] = { 0, 1, -6, 755 },
			["Paloun|auberdine"] = { 1, 0, 4, 1105 },
			["Tyrellqq|norushen"] = { 0, 1, -4, 888 },
		},
		[2] = {
			["Aramorth|mirage-raceway"] = { 12, 13, 70, 888 },
			["Exhale|hoptallus"] = { 12, 13, 709, 888 },
			["Golmash|shekzeer"] = { 12, 13, 129, 888 },
			["Holylax|garalon"] = { 12, 13, 258, 884 },
			["Melatonin|everlook"] = { 12, 13, 709, 888 },
			["Skorpiys|norushen"] = { 12, 13, 70, 890 },
			["Gnomidge|hoptallus"] = { 12, 12, 414, 888 },
			["Rbgme|norushen"] = { 12, 12, 340, 888 },
			["Khobkhunkrap|shekzeer"] = { 10, 3, 960, 708 },
			["Numanuxna|shekzeer"] = { 10, 3, 744, 752 },
			["Plåýbót|shekzeer"] = { 10, 3, 90, 753 },
			["Jakamoto|shekzeer"] = { 3, 6, 69, 753 },
			["Savexx|shekzeer"] = { 3, 6, -27, 747 },
			["Srtwhippa|everlook"] = { 3, 6, 144, 748 },
			["Derxibro|shekzeer"] = { 3, 4, -36, 737 },
			["Yhwatch|shekzeer"] = { 3, 4, 54, 808 },
			["Therealfq|shekzeer"] = { 1, 1, -14, 828 },
			["Weaverok|shekzeer"] = { 1, 1, 5, 831 },
			["Фкю|flamegor"] = { 1, 0, 4, 896 },
		},
	},
}

