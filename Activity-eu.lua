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
	built = 1794837659,
	builtText = "2026-11-16 09:01 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jakamotô|shekzeer"] = { 2, 0, 17, 17 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jakamotô|shekzeer"] = { 2, 0, 17, 17 },
			["Yhwatch|shekzeer"] = { 1, 1, -17, 73 },
			["Marlk|shekzeer"] = { 0, 1, -4, 95 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jakamotô|shekzeer"] = { 2, 0, 17, 17 },
			["Yhwatch|shekzeer"] = { 1, 1, -17, 73 },
			["Marlk|shekzeer"] = { 0, 1, -4, 95 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jakamotô|shekzeer"] = { 2, 0, 17, 17 },
			["Nightstream|hoptallus"] = { 0, 2, -12, 708 },
			["Yhwatch|shekzeer"] = { 1, 1, -17, 73 },
			["Marlk|shekzeer"] = { 0, 1, -4, 95 },
			["ßonnießlue|shekzeer"] = { 0, 1, -6, 708 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Jampperi|shekzeer"] = { 13, 27, -159, 877 },
			["Maîja|shekzeer"] = { 13, 27, -159, 876 },
			["Savexx|shekzeer"] = { 16, 16, 43, 838 },
			["ßonnießlue|shekzeer"] = { 17, 14, -69, 708 },
			["Ineo|shekzeer"] = { 6, 23, -96, 1248 },
			["Bernadeta|shekzeer"] = { 15, 12, 75, 1304 },
			["Satåna|shekzeer"] = { 26, 0, 85, 809 },
			["Vêrcêttîx|shekzeer"] = { 26, 0, 101, 809 },
			["ßlinkd|shekzeer"] = { 13, 12, 42, 809 },
			["Challedge|garalon"] = { 9, 15, -34, 820 },
			["Elimia|garalon"] = { 9, 15, -35, 819 },
			["Jakamotô|shekzeer"] = { 20, 3, 114, 17 },
			["Fntastic|mirage-raceway"] = { 9, 13, 2, 1017 },
			["Taylôrswiftx|mirage-raceway"] = { 9, 13, -11, 1017 },
			["Talbyfirst|shekzeer"] = { 10, 9, 169, 795 },
			["Brazqr|shekzeer"] = { 9, 7, 30, 987 },
			["Rainbowrïder|shekzeer"] = { 8, 8, 6, 984 },
			["Retrivout|shekzeer"] = { 9, 7, 31, 894 },
			["Симбикс|flamegor"] = { 9, 7, -5, 888 },
			["Aironsxx|shekzeer"] = { 7, 7, 11, 1251 },
			["Chandlerbing|shekzeer"] = { 7, 7, 11, 1250 },
			["Domnox|auberdine"] = { 9, 5, 75, 1157 },
			["Idontflinch|garalon"] = { 9, 5, 195, 888 },
			["Orestis|norushen"] = { 4, 10, -3, 980 },
			["Sapmere|auberdine"] = { 9, 5, 78, 1159 },
			["Semiazas|shekzeer"] = { 3, 11, 62, 1088 },
			["Bobz|auberdine"] = { 9, 4, 69, 995 },
			["Capcarapkin|shekzeer"] = { 7, 6, 19, 1149 },
			["Orkidy|auberdine"] = { 9, 4, 69, 996 },
			["Цианидвектор|flamegor"] = { 7, 6, 48, 1148 },
			["Madaurmada|shekzeer"] = { 9, 3, -1, 888 },
			["Seera|shekzeer"] = { 6, 6, 9, 966 },
			["Taopaípaí|auberdine"] = { 7, 5, 57, 888 },
			["Burrny|shekzeer"] = { 3, 8, 0, 1020 },
			["Cõmbustz|shekzeer"] = { 6, 5, 27, 984 },
			["Josax|mirage-raceway"] = { 5, 6, 15, 1068 },
			["Keyoo|shekzeer"] = { 7, 4, 83, 948 },
			["Yhwatch|shekzeer"] = { 9, 2, -21, 73 },
			["Борисзверь|flamegor"] = { 3, 8, 26, 1020 },
			["Dokiúr|mirage-raceway"] = { 6, 4, 67, 1124 },
			["Mizthx|shekzeer"] = { 5, 5, 15, 1388 },
			["Sixbullet|hoptallus"] = { 3, 7, -15, 948 },
			["Drumåndbåss|shekzeer"] = { 2, 7, -54, 1093 },
			["Тнэш|flamegor"] = { 2, 7, -54, 1094 },
			["Ayvara|shekzeer"] = { 5, 3, 15, 1004 },
			["Azrin|shekzeer"] = { 5, 3, 87, 1284 },
			["Crazyskill|shekzeer"] = { 5, 3, 43, 1284 },
			["Mythrugun|shekzeer"] = { 5, 3, 15, 992 },
			["Фазерихх|flamegor"] = { 2, 6, -27, 1149 },
			["Derxibro|shekzeer"] = { 3, 4, -23, 1340 },
			["Jäckynkô|hoptallus"] = { 4, 3, -8, 1095 },
			["Meilev|hoptallus"] = { 3, 4, 50, 1234 },
			["Refresherr|hoptallus"] = { 4, 3, -8, 1095 },
			["Zok|shekzeer"] = { 3, 4, -8, 1338 },
			["Gladiatorz|garalon"] = { 2, 4, -11, 1150 },
			["Tackiella|shekzeer"] = { 4, 2, 7, 925 },
			["Набрудершафт|flamegor"] = { 2, 4, 43, 1419 },
			["Biggestegoeu|shekzeer"] = { 4, 1, -14, 1357 },
			["Brazqrx|shekzeer"] = { 3, 2, -2, 966 },
			["Drammatica|mirage-raceway"] = { 3, 2, 21, 975 },
			["Durianlover|shekzeer"] = { 1, 4, -14, 1068 },
			["Gitrdone|shekzeer"] = { 2, 3, -15, 1022 },
			["Hishiryo|shekzeer"] = { 2, 3, -10, 1026 },
			["Imbakbka|shekzeer"] = { 1, 4, 24, 1200 },
			["Jackynkoo|hoptallus"] = { 1, 4, -8, 1025 },
			["Jakamaestro|shekzeer"] = { 4, 1, 39, 1095 },
			["Jakamoto|shekzeer"] = { 3, 2, 12, 801 },
			["Menesueas|shekzeer"] = { 2, 3, -5, 1017 },
			["Smokerz|mirage-raceway"] = { 3, 2, 21, 970 },
			["Hotzalotz|hoptallus"] = { 3, 1, 22, 1092 },
			["Katkota|shekzeer"] = { 1, 3, 5, 1068 },
			["Nossy|hoptallus"] = { 0, 4, -32, 1053 },
			["Sírpressheal|auberdine"] = { 1, 3, -12, 1088 },
			["Yente|hoptallus"] = { 3, 1, 16, 1092 },
			["Zonnmonk|hoptallus"] = { 0, 4, -26, 1051 },
			["Arabicano|shekzeer"] = { 1, 2, -2, 1068 },
			["Huanita|shekzeer"] = { 2, 1, 2, 926 },
			["Vrctx|shekzeer"] = { 3, 0, 54, 901 },
			["Ceendare|auberdine"] = { 0, 2, 0, 1428 },
			["Fyrk|garalon"] = { 0, 2, -10, 1311 },
			["Jackynko|hoptallus"] = { 0, 2, 0, 1428 },
			["Kakalocko|shekzeer"] = { 0, 2, -10, 732 },
			["Karnex|shekzeer"] = { 2, 0, 24, 888 },
			["Matadora|shekzeer"] = { 0, 2, -13, 1248 },
			["Neyvîl|everlook"] = { 0, 2, 0, 1284 },
			["Nightstream|hoptallus"] = { 0, 2, -12, 708 },
			["Plåýbøt|shekzeer"] = { 0, 2, -12, 960 },
			["Repuls|mirage-raceway"] = { 0, 2, 0, 1180 },
			["Ruzha|shekzeer"] = { 0, 2, -12, 960 },
			["Sangore|auberdine"] = { 0, 2, -6, 1428 },
			["Siqu|shekzeer"] = { 2, 0, 17, 1237 },
			["ßenimãru|shekzeer"] = { 2, 0, 25, 993 },
			["Киднеймастер|flamegor"] = { 0, 2, 0, 1408 },
			["Cavernicola|garalon"] = { 0, 1, -5, 888 },
			["Ginftw|shekzeer"] = { 1, 0, 21, 1068 },
			["Marlk|shekzeer"] = { 0, 1, -4, 95 },
			["Munkskunk|shekzeer"] = { 1, 0, 21, 1091 },
			["Nameitdrood|shekzeer"] = { 1, 0, 21, 1092 },
			["Supai|shekzeer"] = { 1, 0, 12, 1080 },
		},
		[2] = {
			["Lazinka|norushen"] = { 4, 6, 79, 1248 },
			["Screwedup|norushen"] = { 5, 3, 28, 1428 },
			["Dukhdan|garalon"] = { 4, 1, 37, 1428 },
			["Exhale|hoptallus"] = { 3, 2, 20, 1269 },
			["Рыкай|flamegor"] = { 0, 5, -46, 1428 },
			["Ceendare|auberdine"] = { 1, 3, 96, 1316 },
			["Totemgodx|shekzeer"] = { 1, 3, 18, 1248 },
			["Choupss|auberdine"] = { 0, 3, 0, 1428 },
			["Holylax|garalon"] = { 1, 2, -1, 1248 },
			["Sangore|auberdine"] = { 0, 3, 0, 1428 },
			["Tropycal|mirage-raceway"] = { 1, 2, 21, 1229 },
			["Aramorth|mirage-raceway"] = { 1, 1, 8, 1248 },
			["Atamal|shekzeer"] = { 1, 1, 4, 1274 },
			["Gnomidge|hoptallus"] = { 1, 1, 5, 1285 },
			["Therealfq|shekzeer"] = { 2, 0, 4, 1285 },
			["Batix|shekzeer"] = { 1, 0, 17, 1299 },
			["Twarlx|shekzeer"] = { 1, 0, 2, 1428 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 1275 },
		},
	},
}

