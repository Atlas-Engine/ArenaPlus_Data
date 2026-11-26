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
	built = 1795690824,
	builtText = "2026-11-26 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Commitment|shekzeer"] = { 1, 0, 12, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Commitment|shekzeer"] = { 1, 0, 12, 46 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Commitment|shekzeer"] = { 1, 0, 12, 46 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ngmi|shekzeer"] = { 20, 17, 23, 699 },
			["Plåýßøt|shekzeer"] = { 20, 17, 23, 698 },
			["Zok|shekzeer"] = { 10, 11, 15, 700 },
			["Xály|shekzeer"] = { 5, 9, -81, 527 },
			["Andyskhan|mirage-raceway"] = { 6, 7, 34, 647 },
			["Suspriest|shekzeer"] = { 6, 7, 77, 646 },
			["Guccidaggers|shekzeer"] = { 9, 3, 102, 707 },
			["Srtwhippa|everlook"] = { 3, 7, -23, 700 },
			["Dogfight|shekzeer"] = { 4, 4, 41, 707 },
			["Mwaniel|auberdine"] = { 2, 4, 1, 712 },
			["Wasabî|auberdine"] = { 2, 4, -3, 712 },
			["Ivonsa|garalon"] = { 0, 5, -56, 701 },
			["Biggestegoeu|shekzeer"] = { 4, 0, 8, 623 },
			["Yhwatch|shekzeer"] = { 4, 0, 8, 622 },
			["Djburst|shekzeer"] = { 1, 2, -20, 623 },
			["Gódx|shekzeer"] = { 1, 2, -14, 684 },
			["Cherryontop|shekzeer"] = { 1, 1, 18, 707 },
			["Madaurmada|shekzeer"] = { 0, 2, -31, 707 },
			["Mists|shekzeer"] = { 2, 0, 4, 716 },
			["Vercettixx|shekzeer"] = { 2, 0, 7, 685 },
			["Commitment|shekzeer"] = { 1, 0, 12, 46 },
			["Kalreth|shekzeer"] = { 0, 1, -18, 600 },
			["Taopaípaí|auberdine"] = { 0, 1, -6, 707 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ngmi|shekzeer"] = { 22, 20, 13, 699 },
			["Plåýßøt|shekzeer"] = { 22, 20, 13, 698 },
			["Srtwhippa|everlook"] = { 10, 11, 18, 700 },
			["Zok|shekzeer"] = { 10, 11, 15, 700 },
			["Commitment|shekzeer"] = { 13, 6, 52, 46 },
			["Tchaktchac|auberdine"] = { 6, 11, 0, 769 },
			["Brazqrx|shekzeer"] = { 7, 9, 1, 748 },
			["Lîllyputaner|everlook"] = { 9, 7, 27, 756 },
			["Prayzthebozz|everlook"] = { 8, 7, 173, 742 },
			["Xály|shekzeer"] = { 5, 10, -92, 527 },
			["Yezze|garalon"] = { 8, 7, 17, 742 },
			["Domnox|auberdine"] = { 5, 9, 10, 769 },
			["Jakamaestro|shekzeer"] = { 7, 7, -19, 758 },
			["Marlkx|shekzeer"] = { 5, 9, -14, 826 },
			["Mwaniel|auberdine"] = { 6, 8, 16, 712 },
			["Wasabî|auberdine"] = { 6, 8, 5, 712 },
			["Andyskhan|mirage-raceway"] = { 6, 7, 34, 647 },
			["Madaurmada|shekzeer"] = { 7, 6, -37, 707 },
			["Noneedground|shekzeer"] = { 12, 1, 239, 1110 },
			["Rodnichek|shekzeer"] = { 6, 7, -36, 760 },
			["Suspriest|shekzeer"] = { 6, 7, 77, 646 },
			["Guccidaggers|shekzeer"] = { 9, 3, 102, 707 },
			["Фазерихх|flamegor"] = { 5, 7, 2, 862 },
			["Satånaz|shekzeer"] = { 11, 0, 25, 738 },
			["Topshotta|everlook"] = { 4, 7, -29, 946 },
			["Cuckmycoocon|shekzeer"] = { 6, 4, 106, 855 },
			["Deepfull|shekzeer"] = { 4, 6, -19, 968 },
			["Triplepizza|shekzeer"] = { 6, 4, 34, 854 },
			["Angrycubanx|shekzeer"] = { 5, 4, 20, 772 },
			["Jakamoto|shekzeer"] = { 5, 4, -9, 854 },
			["Mists|shekzeer"] = { 9, 0, 19, 716 },
			["Tastemydmg|shekzeer"] = { 5, 4, 42, 893 },
			["Tyralíon|shekzeer"] = { 5, 4, 42, 896 },
			["Derxibro|shekzeer"] = { 7, 1, 21, 1006 },
			["Dogfight|shekzeer"] = { 4, 4, 41, 707 },
			["Glamourmw|mirage-raceway"] = { 4, 4, 56, 822 },
			["Idontflinch|garalon"] = { 7, 1, 30, 887 },
			["Vercettixx|shekzeer"] = { 8, 0, 37, 685 },
			["Bakomba|shekzeer"] = { 3, 4, -26, 993 },
			["Blèsséd|shekzeer"] = { 0, 7, -19, 1027 },
			["Durianlover|shekzeer"] = { 3, 4, -10, 887 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 1148 },
			["Kospi|auberdine"] = { 3, 4, 7, 1091 },
			["Makkezi|shekzeer"] = { 0, 7, -24, 1036 },
			["Srtdrippa|everlook"] = { 3, 4, 3, 826 },
			["Hopedieslast|shekzeer"] = { 3, 3, 5, 887 },
			["Qwanya|shekzeer"] = { 4, 2, 78, 880 },
			["Biggestegoeu|shekzeer"] = { 4, 1, -1, 623 },
			["Cõmbustz|shekzeer"] = { 2, 3, -10, 815 },
			["Drumåndbåss|shekzeer"] = { 5, 0, 58, 835 },
			["Ivonsa|garalon"] = { 0, 5, -56, 701 },
			["Rainbowrider|shekzeer"] = { 2, 3, -15, 815 },
			["Rainbôwrider|shekzeer"] = { 4, 1, 33, 763 },
			["Sumtinrother|shekzeer"] = { 4, 1, 34, 767 },
			["Yhwatch|shekzeer"] = { 4, 1, -1, 622 },
			["Лилрой|flamegor"] = { 0, 5, -21, 1130 },
			["Тнэш|flamegor"] = { 5, 0, 58, 834 },
			["Jakamstar|shekzeer"] = { 2, 2, 12, 904 },
			["Juicyverÿ|shekzeer"] = { 3, 1, 20, 813 },
			["Pippilotta|shekzeer"] = { 2, 2, 6, 940 },
			["Sapmere|auberdine"] = { 2, 2, 8, 1143 },
			["Sugarbear|shekzeer"] = { 1, 3, 24, 766 },
			["Taopaípaí|auberdine"] = { 0, 4, -30, 707 },
			["Zhili|hoptallus"] = { 1, 3, -1, 1067 },
			["Элементовик|flamegor"] = { 3, 1, 21, 850 },
			["Bozzclqwnx|shekzeer"] = { 0, 3, -26, 721 },
			["Cavernicola|garalon"] = { 0, 3, -32, 766 },
			["Coldcofeesux|shekzeer"] = { 0, 3, -28, 1067 },
			["Djburst|shekzeer"] = { 1, 2, -20, 623 },
			["Gódx|shekzeer"] = { 1, 2, -14, 684 },
			["Mîlkaa|everlook"] = { 1, 2, 0, 956 },
			["Semloh|mirage-raceway"] = { 1, 2, -4, 922 },
			["ßlinkd|shekzeer"] = { 0, 3, -38, 946 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 1107 },
			["Cherryontop|shekzeer"] = { 1, 1, 18, 707 },
			["Crazyskill|shekzeer"] = { 2, 0, 23, 1073 },
			["Holmesx|mirage-raceway"] = { 0, 2, -11, 858 },
			["Orestis|norushen"] = { 0, 2, -21, 784 },
			["Parkettaszeg|shekzeer"] = { 0, 2, -27, 1028 },
			["Straviouse|hoptallus"] = { 0, 2, -19, 884 },
			["Brazqr|shekzeer"] = { 0, 1, -11, 945 },
			["Èlcapitan|mirage-raceway"] = { 0, 1, -16, 766 },
			["Froheostern|shekzeer"] = { 0, 1, -12, 822 },
			["Jakam|shekzeer"] = { 0, 1, -2, 746 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 1229 },
			["Kalreth|shekzeer"] = { 0, 1, -18, 600 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 1230 },
			["Vrctx|shekzeer"] = { 1, 0, 14, 949 },
		},
		[2] = {
			["Missgrip|sulfuron"] = { 0, 5, 0, 1067 },
			["Голмаш|flamegor"] = { 0, 5, -11, 1067 },
			["Рыкай|flamegor"] = { 0, 5, -20, 1067 },
			["Luckynova|garalon"] = { 4, 0, 16, 1102 },
			["Skorpiys|norushen"] = { 4, 0, 30, 1120 },
			["Voljix|shekzeer"] = { 4, 0, 16, 1067 },
			["Crazyskill|shekzeer"] = { 1, 0, 96, 1073 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 1118 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 1118 },
		},
	},
}

