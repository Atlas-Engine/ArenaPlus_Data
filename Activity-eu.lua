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
	built = 1794999624,
	builtText = "2026-11-18 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orkidy|auberdine"] = { 19, 13, 17, 562 },
			["Bobz|auberdine"] = { 18, 8, 64, 561 },
			["Kakalocko|shekzeer"] = { 5, 19, -54, 562 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 513 },
			["Nightstream|hoptallus"] = { 3, 13, -73, 513 },
			["Huanita|shekzeer"] = { 7, 6, -14, 713 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 707 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 707 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 513 },
			["Rbgme|norushen"] = { 3, 2, 42, 707 },
			["Valla|shekzeer"] = { 3, 2, 8, 707 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 513 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 664 },
			["Zhili|hoptallus"] = { 0, 3, -14, 513 },
			["Ineo|shekzeer"] = { 0, 2, -15, 624 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 687 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 707 },
			["Xály|shekzeer"] = { 0, 2, -23, 581 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 694 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 698 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 20, 24, 13, 624 },
			["Bobz|auberdine"] = { 19, 13, 17, 561 },
			["Orkidy|auberdine"] = { 19, 13, 17, 562 },
			["Kakalocko|shekzeer"] = { 6, 21, -60, 562 },
			["Tastemydmg|shekzeer"] = { 14, 13, -36, 887 },
			["Tyralíon|shekzeer"] = { 14, 13, -36, 887 },
			["Rbgme|norushen"] = { 9, 14, 104, 707 },
			["Domnox|auberdine"] = { 12, 7, 35, 810 },
			["Nightstream|hoptallus"] = { 4, 15, -82, 513 },
			["Sapmere|auberdine"] = { 12, 7, 35, 811 },
			["Screwedup|norushen"] = { 6, 12, 62, 1067 },
			["Healdbyme|shekzeer"] = { 7, 10, 53, 860 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 513 },
			["Semiazas|shekzeer"] = { 6, 10, 77, 905 },
			["Фоллсс|flamegor"] = { 13, 3, 146, 945 },
			["Lazinka|norushen"] = { 6, 8, 83, 1067 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 764 },
			["Huanita|shekzeer"] = { 7, 6, -14, 713 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 707 },
			["Hayvanqt|shekzeer"] = { 6, 6, 95, 860 },
			["Drumåndbåss|shekzeer"] = { 7, 3, 34, 840 },
			["Orestis|norushen"] = { 2, 8, -26, 947 },
			["Тнэш|flamegor"] = { 7, 3, 34, 839 },
			["Guccidaggers|shekzeer"] = { 4, 5, 88, 1067 },
			["Nightlash|everlook"] = { 0, 9, -37, 897 },
			["Weaverok|shekzeer"] = { 5, 4, -19, 884 },
			["Kostez|shekzeer"] = { 2, 5, -16, 940 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 707 },
			["Thaladra|shekzeer"] = { 2, 5, 32, 940 },
			["Симбикс|flamegor"] = { 2, 5, -25, 777 },
			["Bloodmoney|shekzeer"] = { 3, 3, -7, 1067 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 1247 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 513 },
			["Crabzxtrapzx|shekzeer"] = { 4, 1, 76, 1059 },
			["ßlinkd|shekzeer"] = { 4, 1, 20, 783 },
			["ßonnießlue|shekzeer"] = { 4, 1, 2, 779 },
			["Tenex|norushen"] = { 1, 4, -10, 903 },
			["Valla|shekzeer"] = { 3, 2, 8, 707 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 513 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 664 },
			["Voljix|shekzeer"] = { 2, 2, -14, 1247 },
			["Vrctx|shekzeer"] = { 4, 0, 56, 727 },
			["Jäckynkô|hoptallus"] = { 3, 0, 12, 921 },
			["Refresherr|hoptallus"] = { 3, 0, 12, 921 },
			["Zhili|hoptallus"] = { 0, 3, -14, 513 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 1195 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 1195 },
			["Iratina|everlook"] = { 0, 2, 0, 881 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 687 },
			["Juicyverÿ|shekzeer"] = { 1, 1, -2, 901 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 707 },
			["Mists|shekzeer"] = { 2, 0, 6, 878 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 880 },
			["Satåntrapbot|shekzeer"] = { 2, 0, 4, 878 },
			["Savexx|shekzeer"] = { 0, 2, -8, 778 },
			["Xály|shekzeer"] = { 0, 2, -23, 581 },
			["Эрмантраутх|flamegor"] = { 1, 1, -2, 926 },
			["Malte|shekzeer"] = { 0, 1, 0, 1081 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 694 },
			["Utogi|everlook"] = { 1, 0, 21, 790 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 698 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 1247 },
		},
		[2] = {
			["Ineo|shekzeer"] = { 2, 7, 192, 887 },
			["Tropycal|mirage-raceway"] = { 3, 5, 58, 990 },
			["Голмаш|flamegor"] = { 3, 5, 66, 887 },
			["Missgrip|sulfuron"] = { 3, 4, 288, 1067 },
			["Павлорион|flamegor"] = { 7, 0, 100, 1012 },
			["Цианидвектор|flamegor"] = { 7, 0, 136, 1010 },
			["Orestis|norushen"] = { 2, 3, 192, 1050 },
			["Luckynova|garalon"] = { 2, 1, 4, 1101 },
			["Totemgodx|shekzeer"] = { 1, 2, -2, 1067 },
			["Рыкай|flamegor"] = { 1, 2, -14, 1067 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 982 },
			["Weaverok|shekzeer"] = { 1, 0, 3, 887 },
		},
	},
}

