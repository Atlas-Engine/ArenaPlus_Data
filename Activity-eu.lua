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
	built = 1794570950,
	builtText = "2026-11-13 06:55 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mortabotgodx|shekzeer"] = { 8, 5, 40, 691 },
			["Plåýßøt|shekzeer"] = { 5, 6, -38, 718 },
			["Listerine|shekzeer"] = { 4, 4, -3, 699 },
			["Toxicelitist|shekzeer"] = { 4, 4, -3, 699 },
			["Вялыйпаладин|flamegor"] = { 1, 3, -9, 682 },
			["Xály|shekzeer"] = { 1, 2, -6, 645 },
			["Cavernicola|garalon"] = { 1, 1, 10, 583 },
			["Taopaípaí|auberdine"] = { 1, 1, 2, 583 },
			["Voodomann|mirage-raceway"] = { 1, 1, 1, 641 },
			["Вялыйхантер|flamegor"] = { 1, 1, -8, 640 },
			["Ineo|shekzeer"] = { 0, 1, -13, 670 },
		},
		[2] = {
			["Totemgodx|shekzeer"] = { 0, 2, 0, 583 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 15, 20, -40, 670 },
			["Holmesx|mirage-raceway"] = { 17, 9, 251, 904 },
			["Ivonsa|garalon"] = { 18, 6, 69, 896 },
			["Plåýßøt|shekzeer"] = { 9, 14, -93, 718 },
			["Tastemydmg|shekzeer"] = { 14, 9, 12, 943 },
			["Tyralíon|shekzeer"] = { 14, 9, 12, 943 },
			["Andysgone|shekzeer"] = { 9, 13, -73, 804 },
			["Kobra|shekzeer"] = { 9, 13, -73, 792 },
			["Brazqr|shekzeer"] = { 9, 12, -29, 818 },
			["Listerine|shekzeer"] = { 10, 10, 2, 699 },
			["Toxicelitist|shekzeer"] = { 10, 10, 2, 699 },
			["Jakamotô|shekzeer"] = { 10, 7, 48, 763 },
			["Zonnmonk|hoptallus"] = { 10, 7, 47, 858 },
			["Weaverok|shekzeer"] = { 10, 6, 50, 840 },
			["Zabir|everlook"] = { 10, 6, 57, 800 },
			["Heliocentric|garalon"] = { 3, 12, -46, 894 },
			["Nossy|hoptallus"] = { 10, 5, 46, 874 },
			["Srtx|shekzeer"] = { 10, 5, 66, 896 },
			["Bernadeta|shekzeer"] = { 7, 7, 117, 887 },
			["Cõmbustz|shekzeer"] = { 8, 6, 43, 885 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 42, 885 },
			["Mortabotgodx|shekzeer"] = { 8, 5, 40, 691 },
			["Seera|shekzeer"] = { 2, 11, -85, 782 },
			["Вялыйпаладин|flamegor"] = { 4, 9, -27, 682 },
			["Draiks|garalon"] = { 3, 9, -14, 1044 },
			["Premanchan|everlook"] = { 8, 4, 61, 830 },
			["Saigon|shekzeer"] = { 3, 9, -42, 866 },
			["Savexx|shekzeer"] = { 5, 7, -3, 763 },
			["Wheelkick|shekzeer"] = { 8, 4, -16, 734 },
			["Commitment|shekzeer"] = { 7, 4, 44, 823 },
			["Edgelocked|shekzeer"] = { 4, 7, -4, 857 },
			["Fxlibfrjhdsx|shekzeer"] = { 10, 1, 74, 869 },
			["Rodnichekx|shekzeer"] = { 7, 4, 85, 824 },
			["Tube|shekzeer"] = { 4, 7, -4, 857 },
			["Srtwhippa|everlook"] = { 4, 6, -4, 763 },
			["Betix|shekzeer"] = { 3, 6, -17, 1069 },
			["Conservé|shekzeer"] = { 4, 5, -5, 745 },
			["Dokiúr|mirage-raceway"] = { 8, 1, 69, 1052 },
			["Hopedieslast|shekzeer"] = { 8, 1, 95, 1123 },
			["Hotzalotz|hoptallus"] = { 0, 9, -36, 976 },
			["Jäckynkôô|hoptallus"] = { 2, 7, -7, 951 },
			["Réfréshér|hoptallus"] = { 2, 7, 39, 951 },
			["Rodnichek|shekzeer"] = { 8, 1, 37, 1187 },
			["ßlinkd|shekzeer"] = { 4, 5, -10, 950 },
			["Cavernicola|garalon"] = { 4, 4, 41, 583 },
			["Deepfull|shekzeer"] = { 4, 4, 9, 822 },
			["Gavno|shekzeer"] = { 7, 1, 23, 770 },
			["Iste|hoptallus"] = { 1, 7, 17, 990 },
			["Orestis|norushen"] = { 3, 5, 9, 929 },
			["ßonnießlue|shekzeer"] = { 7, 1, 18, 770 },
			["Tackiella|shekzeer"] = { 2, 6, -55, 867 },
			["Plåýbøt|shekzeer"] = { 6, 1, 32, 869 },
			["Taopaípaí|auberdine"] = { 4, 3, 16, 583 },
			["Bizo|shekzeer"] = { 4, 2, 75, 886 },
			["Bonefire|garalon"] = { 0, 6, -42, 929 },
			["Fofii|shekzeer"] = { 1, 5, -18, 938 },
			["Vuckezija|norushen"] = { 3, 3, -17, 892 },
			["Drumåndbåss|shekzeer"] = { 4, 1, 34, 906 },
			["Healdbyme|shekzeer"] = { 2, 3, 15, 1123 },
			["Ludiwig|shekzeer"] = { 1, 4, -9, 1070 },
			["Тнэш|flamegor"] = { 4, 1, 34, 906 },
			["Muga|hoptallus"] = { 1, 3, -21, 1011 },
			["Plåýbót|shekzeer"] = { 4, 0, 30, 916 },
			["Xály|shekzeer"] = { 1, 3, -11, 645 },
			["Yente|hoptallus"] = { 0, 4, -28, 1031 },
			["Bakomba|shekzeer"] = { 2, 1, -3, 1014 },
			["Burrny|shekzeer"] = { 0, 3, -17, 1007 },
			["Fyrk|garalon"] = { 0, 3, -19, 929 },
			["Karamelado|everlook"] = { 2, 1, 4, 1016 },
			["Phsydon|everlook"] = { 2, 1, -10, 1123 },
			["Sírpressheal|auberdine"] = { 0, 3, -29, 978 },
			["Yezze|shekzeer"] = { 2, 1, -13, 1160 },
			["Борисзверь|flamegor"] = { 0, 3, -12, 1007 },
			["Affix|shekzeer"] = { 2, 0, 41, 913 },
			["Bobz|auberdine"] = { 0, 2, -15, 805 },
			["Jäckynkô|hoptallus"] = { 2, 0, 26, 1012 },
			["Jackynoo|hoptallus"] = { 1, 1, 13, 919 },
			["Lastà|everlook"] = { 0, 2, -19, 1120 },
			["Paloun|auberdine"] = { 0, 2, -14, 806 },
			["Refresherr|hoptallus"] = { 2, 0, 26, 1012 },
			["Voodomann|mirage-raceway"] = { 1, 1, 1, 641 },
			["Xddðð|shekzeer"] = { 2, 0, 23, 1156 },
			["Вялыйхантер|flamegor"] = { 1, 1, -8, 640 },
			["Adrianmandos|garalon"] = { 0, 1, -6, 763 },
			["Åøêkrótx|shekzeer"] = { 1, 0, 3, 1060 },
			["Dotzalotz|hoptallus"] = { 0, 1, -8, 1026 },
			["Jâckywhâcky|shekzeer"] = { 1, 0, 7, 763 },
			["Skyráw|shekzeer"] = { 1, 0, 13, 810 },
			["Vishnyágødx|shekzeer"] = { 1, 0, 3, 1052 },
		},
		[2] = {
			["Luckynova|garalon"] = { 38, 35, 99, 789 },
			["Voljix|shekzeer"] = { 24, 20, 164, 1123 },
			["Atamal|shekzeer"] = { 21, 20, 214, 1128 },
			["Gnomidge|hoptallus"] = { 21, 20, 194, 1123 },
			["Rbgme|norushen"] = { 21, 20, 178, 1123 },
			["Рыкай|flamegor"] = { 21, 16, 60, 1123 },
			["Melatonin|everlook"] = { 14, 14, 280, 808 },
			["Screwedup|norushen"] = { 14, 14, 306, 763 },
			["Golmash|shekzeer"] = { 11, 16, 31, 763 },
			["Skorpiys|norushen"] = { 7, 8, 1, 784 },
			["Dukhdan|garalon"] = { 3, 4, 15, 1123 },
			["Exhale|hoptallus"] = { 3, 3, 66, 763 },
			["Sangore|auberdine"] = { 0, 6, 0, 1167 },
			["Therealfq|shekzeer"] = { 6, 0, 25, 1013 },
			["Batix|shekzeer"] = { 5, 0, 109, 1005 },
			["Restorok|shekzeer"] = { 0, 5, 0, 1015 },
			["Shockpowerjk|shekzeer"] = { 2, 0, 25, 1027 },
			["Shockpowerr|shekzeer"] = { 2, 0, 10, 1049 },
			["Totemgodx|shekzeer"] = { 0, 2, 0, 583 },
			["Srtdrippa|everlook"] = { 1, 0, 96, 1013 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1123 },
			["Wheyxw|shekzeer"] = { 1, 0, 21, 763 },
		},
	},
}

