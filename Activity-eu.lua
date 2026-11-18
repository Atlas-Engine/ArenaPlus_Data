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
	built = 1795010442,
	builtText = "2026-11-18 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jtenrùme|auberdine"] = { 1, 4, -17, 52 },
			["Zellëph|auberdine"] = { 0, 4, -19, 44 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 37 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 60 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 4, 2, 4, 100 },
			["Orkidy|auberdine"] = { 4, 2, 4, 100 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 52 },
			["Zellëph|auberdine"] = { 0, 4, -19, 44 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 37 },
			["Kospi|auberdine"] = { 2, 1, 1, 70 },
			["Paloun|auberdine"] = { 2, 1, -1, 70 },
			["Sparâdräp|auberdine"] = { 1, 2, -7, 64 },
			["Ineo|shekzeer"] = { 0, 2, -12, 154 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 60 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 61 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 4, 2, 4, 100 },
			["Orkidy|auberdine"] = { 4, 2, 4, 100 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 52 },
			["Zellëph|auberdine"] = { 0, 4, -19, 44 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 37 },
			["Kospi|auberdine"] = { 2, 1, 1, 70 },
			["Paloun|auberdine"] = { 2, 1, -1, 70 },
			["Sparâdräp|auberdine"] = { 1, 2, -7, 64 },
			["Ineo|shekzeer"] = { 0, 2, -12, 154 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 60 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 61 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Nightstream|hoptallus"] = { 0, 8, -63, 694 },
			["Bobz|auberdine"] = { 4, 2, 4, 100 },
			["Ithildrin|mirage-raceway"] = { 1, 5, 16, 694 },
			["Orkidy|auberdine"] = { 4, 2, 4, 100 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 694 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 52 },
			["Zellëph|auberdine"] = { 0, 4, -19, 44 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 37 },
			["Kospi|auberdine"] = { 2, 1, 1, 70 },
			["Paloun|auberdine"] = { 2, 1, -1, 70 },
			["Sparâdräp|auberdine"] = { 1, 2, -7, 64 },
			["Zhili|hoptallus"] = { 0, 3, -14, 694 },
			["Ineo|shekzeer"] = { 0, 2, -12, 154 },
			["Hopedieslast|shekzeer"] = { 1, 0, 9, 694 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 60 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 61 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 20, 26, 1, 154 },
			["Bobz|auberdine"] = { 23, 15, 21, 100 },
			["Orkidy|auberdine"] = { 23, 15, 21, 100 },
			["Kakalocko|shekzeer"] = { 6, 21, -60, 742 },
			["Tastemydmg|shekzeer"] = { 14, 13, -36, 1067 },
			["Tyralíon|shekzeer"] = { 14, 13, -36, 1068 },
			["Rbgme|norushen"] = { 9, 14, 104, 888 },
			["Domnox|auberdine"] = { 12, 7, 35, 991 },
			["Nightstream|hoptallus"] = { 4, 15, -82, 694 },
			["Sapmere|auberdine"] = { 12, 7, 35, 991 },
			["Screwedup|norushen"] = { 6, 12, 62, 1248 },
			["Healdbyme|shekzeer"] = { 7, 10, 53, 1040 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 694 },
			["Semiazas|shekzeer"] = { 6, 10, 77, 1085 },
			["Фоллсс|flamegor"] = { 13, 3, 146, 1125 },
			["Lazinka|norushen"] = { 6, 8, 83, 1248 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 945 },
			["Huanita|shekzeer"] = { 7, 6, -14, 893 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 888 },
			["Hayvanqt|shekzeer"] = { 6, 6, 95, 1040 },
			["Drumåndbåss|shekzeer"] = { 7, 3, 34, 1020 },
			["Orestis|norushen"] = { 2, 8, -26, 1127 },
			["Тнэш|flamegor"] = { 7, 3, 34, 1019 },
			["Guccidaggers|shekzeer"] = { 4, 5, 88, 1248 },
			["Nightlash|everlook"] = { 0, 9, -37, 1077 },
			["Weaverok|shekzeer"] = { 5, 4, -19, 1065 },
			["Kostez|shekzeer"] = { 2, 5, -16, 1121 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 888 },
			["Thaladra|shekzeer"] = { 2, 5, 32, 1121 },
			["Симбикс|flamegor"] = { 2, 5, -25, 957 },
			["Bloodmoney|shekzeer"] = { 3, 3, -7, 1248 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 1428 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 694 },
			["Crabzxtrapzx|shekzeer"] = { 4, 1, 76, 1240 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 52 },
			["ßlinkd|shekzeer"] = { 4, 1, 20, 963 },
			["ßonnießlue|shekzeer"] = { 4, 1, 2, 959 },
			["Tenex|norushen"] = { 1, 4, -10, 1083 },
			["Valla|shekzeer"] = { 3, 2, 8, 888 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 694 },
			["Jäckynkô|hoptallus"] = { 4, 0, 15, 60 },
			["Refresherr|hoptallus"] = { 4, 0, 15, 61 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 845 },
			["Voljix|shekzeer"] = { 2, 2, -14, 1428 },
			["Vrctx|shekzeer"] = { 4, 0, 56, 907 },
			["Zellëph|auberdine"] = { 0, 4, -19, 44 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 37 },
			["Kospi|auberdine"] = { 2, 1, 1, 70 },
			["Paloun|auberdine"] = { 2, 1, -1, 70 },
			["Sparâdräp|auberdine"] = { 1, 2, -7, 64 },
			["Zhili|hoptallus"] = { 0, 3, -14, 694 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 1375 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 1376 },
			["Iratina|everlook"] = { 0, 2, 0, 1061 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 867 },
			["Juicyverÿ|shekzeer"] = { 1, 1, -2, 1081 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 888 },
			["Mists|shekzeer"] = { 2, 0, 6, 1058 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 1061 },
			["Satåntrapbot|shekzeer"] = { 2, 0, 4, 1058 },
			["Savexx|shekzeer"] = { 0, 2, -8, 958 },
			["Xály|shekzeer"] = { 0, 2, -23, 761 },
			["Эрмантраутх|flamegor"] = { 1, 1, -2, 1106 },
			["Malte|shekzeer"] = { 0, 1, 0, 1262 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 875 },
			["Utogi|everlook"] = { 1, 0, 21, 971 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 878 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 1428 },
		},
		[2] = {
			["Ineo|shekzeer"] = { 2, 7, 192, 1068 },
			["Tropycal|mirage-raceway"] = { 3, 5, 58, 1171 },
			["Голмаш|flamegor"] = { 3, 5, 66, 1068 },
			["Missgrip|sulfuron"] = { 3, 4, 288, 1248 },
			["Павлорион|flamegor"] = { 7, 0, 100, 1192 },
			["Цианидвектор|flamegor"] = { 7, 0, 136, 1190 },
			["Orestis|norushen"] = { 2, 3, 192, 1230 },
			["Luckynova|garalon"] = { 2, 1, 4, 1281 },
			["Totemgodx|shekzeer"] = { 1, 2, -2, 1248 },
			["Рыкай|flamegor"] = { 1, 2, -14, 1248 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 1162 },
			["Weaverok|shekzeer"] = { 1, 0, 3, 1068 },
		},
	},
}

