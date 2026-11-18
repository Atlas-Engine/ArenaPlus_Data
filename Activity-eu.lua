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
	built = 1795006832,
	builtText = "2026-11-18 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 2, 2, -2, 40 },
			["Orkidy|auberdine"] = { 2, 2, -2, 40 },
			["Paloun|auberdine"] = { 2, 1, -1, 10 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 4, 2, 4, 40 },
			["Orkidy|auberdine"] = { 4, 2, 4, 40 },
			["Paloun|auberdine"] = { 2, 1, -1, 10 },
			["Ineo|shekzeer"] = { 0, 2, -12, 94 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 4, 2, 4, 40 },
			["Orkidy|auberdine"] = { 4, 2, 4, 40 },
			["Paloun|auberdine"] = { 2, 1, -1, 10 },
			["Ineo|shekzeer"] = { 0, 2, -12, 94 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 20, 5, 87, 40 },
			["Orkidy|auberdine"] = { 20, 5, 87, 40 },
			["Kakalocko|shekzeer"] = { 2, 14, -49, 682 },
			["Nightstream|hoptallus"] = { 0, 8, -63, 634 },
			["Ithildrin|mirage-raceway"] = { 1, 5, 16, 634 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 634 },
			["Paloun|auberdine"] = { 2, 1, -1, 10 },
			["Zhili|hoptallus"] = { 0, 3, -14, 634 },
			["Ineo|shekzeer"] = { 0, 2, -12, 94 },
			["Xály|shekzeer"] = { 0, 2, -23, 701 },
			["Hopedieslast|shekzeer"] = { 1, 0, 9, 634 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 20, 26, 1, 94 },
			["Bobz|auberdine"] = { 23, 15, 21, 40 },
			["Orkidy|auberdine"] = { 23, 15, 21, 40 },
			["Kakalocko|shekzeer"] = { 6, 21, -60, 682 },
			["Tastemydmg|shekzeer"] = { 14, 13, -36, 1007 },
			["Tyralíon|shekzeer"] = { 14, 13, -36, 1008 },
			["Rbgme|norushen"] = { 9, 14, 104, 828 },
			["Domnox|auberdine"] = { 12, 7, 35, 931 },
			["Nightstream|hoptallus"] = { 4, 15, -82, 634 },
			["Sapmere|auberdine"] = { 12, 7, 35, 931 },
			["Screwedup|norushen"] = { 6, 12, 62, 1188 },
			["Healdbyme|shekzeer"] = { 7, 10, 53, 980 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 634 },
			["Semiazas|shekzeer"] = { 6, 10, 77, 1025 },
			["Фоллсс|flamegor"] = { 13, 3, 146, 1065 },
			["Lazinka|norushen"] = { 6, 8, 83, 1188 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 884 },
			["Huanita|shekzeer"] = { 7, 6, -14, 833 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 828 },
			["Hayvanqt|shekzeer"] = { 6, 6, 95, 980 },
			["Drumåndbåss|shekzeer"] = { 7, 3, 34, 960 },
			["Orestis|norushen"] = { 2, 8, -26, 1067 },
			["Тнэш|flamegor"] = { 7, 3, 34, 959 },
			["Guccidaggers|shekzeer"] = { 4, 5, 88, 1188 },
			["Nightlash|everlook"] = { 0, 9, -37, 1017 },
			["Weaverok|shekzeer"] = { 5, 4, -19, 1005 },
			["Kostez|shekzeer"] = { 2, 5, -16, 1061 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 828 },
			["Thaladra|shekzeer"] = { 2, 5, 32, 1061 },
			["Симбикс|flamegor"] = { 2, 5, -25, 897 },
			["Bloodmoney|shekzeer"] = { 3, 3, -7, 1188 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 1368 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 634 },
			["Crabzxtrapzx|shekzeer"] = { 4, 1, 76, 1179 },
			["ßlinkd|shekzeer"] = { 4, 1, 20, 903 },
			["ßonnießlue|shekzeer"] = { 4, 1, 2, 899 },
			["Tenex|norushen"] = { 1, 4, -10, 1023 },
			["Valla|shekzeer"] = { 3, 2, 8, 828 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 634 },
			["Refresherr|hoptallus"] = { 4, 0, 15, 1 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 784 },
			["Voljix|shekzeer"] = { 2, 2, -14, 1368 },
			["Vrctx|shekzeer"] = { 4, 0, 56, 847 },
			["Jäckynkô|hoptallus"] = { 3, 0, 12, 1041 },
			["Paloun|auberdine"] = { 2, 1, -1, 10 },
			["Zhili|hoptallus"] = { 0, 3, -14, 634 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 1315 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 1315 },
			["Iratina|everlook"] = { 0, 2, 0, 1001 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 807 },
			["Juicyverÿ|shekzeer"] = { 1, 1, -2, 1021 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 828 },
			["Mists|shekzeer"] = { 2, 0, 6, 998 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 1000 },
			["Satåntrapbot|shekzeer"] = { 2, 0, 4, 998 },
			["Savexx|shekzeer"] = { 0, 2, -8, 898 },
			["Xály|shekzeer"] = { 0, 2, -23, 701 },
			["Эрмантраутх|flamegor"] = { 1, 1, -2, 1046 },
			["Malte|shekzeer"] = { 0, 1, 0, 1201 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 814 },
			["Utogi|everlook"] = { 1, 0, 21, 910 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 818 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 1368 },
		},
		[2] = {
			["Ineo|shekzeer"] = { 2, 7, 192, 1008 },
			["Tropycal|mirage-raceway"] = { 3, 5, 58, 1111 },
			["Голмаш|flamegor"] = { 3, 5, 66, 1008 },
			["Missgrip|sulfuron"] = { 3, 4, 288, 1188 },
			["Павлорион|flamegor"] = { 7, 0, 100, 1132 },
			["Цианидвектор|flamegor"] = { 7, 0, 136, 1130 },
			["Orestis|norushen"] = { 2, 3, 192, 1170 },
			["Luckynova|garalon"] = { 2, 1, 4, 1221 },
			["Totemgodx|shekzeer"] = { 1, 2, -2, 1188 },
			["Рыкай|flamegor"] = { 1, 2, -14, 1188 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 1102 },
			["Weaverok|shekzeer"] = { 1, 0, 3, 1008 },
		},
	},
}

