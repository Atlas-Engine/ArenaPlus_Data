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
	built = 1795003233,
	builtText = "2026-11-18 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 2, 0, 6, 34 },
			["Ineo|shekzeer"] = { 0, 2, -12, 34 },
			["Orkidy|auberdine"] = { 2, 0, 6, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 2, 0, 6, 34 },
			["Ineo|shekzeer"] = { 0, 2, -12, 34 },
			["Orkidy|auberdine"] = { 2, 0, 6, 34 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 2, 0, 6, 34 },
			["Ineo|shekzeer"] = { 0, 2, -12, 34 },
			["Orkidy|auberdine"] = { 2, 0, 6, 34 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 18, 3, 89, 34 },
			["Orkidy|auberdine"] = { 18, 3, 89, 34 },
			["Kakalocko|shekzeer"] = { 2, 14, -49, 622 },
			["Nightstream|hoptallus"] = { 0, 8, -63, 574 },
			["Ithildrin|mirage-raceway"] = { 1, 5, 16, 574 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 574 },
			["Ineo|shekzeer"] = { 0, 4, -27, 34 },
			["Zhili|hoptallus"] = { 0, 3, -14, 574 },
			["Xály|shekzeer"] = { 0, 2, -23, 641 },
			["Hopedieslast|shekzeer"] = { 1, 0, 9, 574 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 20, 26, 1, 34 },
			["Bobz|auberdine"] = { 21, 13, 23, 34 },
			["Orkidy|auberdine"] = { 21, 13, 23, 34 },
			["Kakalocko|shekzeer"] = { 6, 21, -60, 622 },
			["Tastemydmg|shekzeer"] = { 14, 13, -36, 947 },
			["Tyralíon|shekzeer"] = { 14, 13, -36, 948 },
			["Rbgme|norushen"] = { 9, 14, 104, 768 },
			["Domnox|auberdine"] = { 12, 7, 35, 871 },
			["Nightstream|hoptallus"] = { 4, 15, -82, 574 },
			["Sapmere|auberdine"] = { 12, 7, 35, 871 },
			["Screwedup|norushen"] = { 6, 12, 62, 1128 },
			["Healdbyme|shekzeer"] = { 7, 10, 53, 920 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 574 },
			["Semiazas|shekzeer"] = { 6, 10, 77, 965 },
			["Фоллсс|flamegor"] = { 13, 3, 146, 1005 },
			["Lazinka|norushen"] = { 6, 8, 83, 1128 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 825 },
			["Huanita|shekzeer"] = { 7, 6, -14, 773 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 768 },
			["Hayvanqt|shekzeer"] = { 6, 6, 95, 920 },
			["Drumåndbåss|shekzeer"] = { 7, 3, 34, 900 },
			["Orestis|norushen"] = { 2, 8, -26, 1007 },
			["Тнэш|flamegor"] = { 7, 3, 34, 899 },
			["Guccidaggers|shekzeer"] = { 4, 5, 88, 1128 },
			["Nightlash|everlook"] = { 0, 9, -37, 957 },
			["Weaverok|shekzeer"] = { 5, 4, -19, 945 },
			["Kostez|shekzeer"] = { 2, 5, -16, 1001 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 768 },
			["Thaladra|shekzeer"] = { 2, 5, 32, 1001 },
			["Симбикс|flamegor"] = { 2, 5, -25, 837 },
			["Bloodmoney|shekzeer"] = { 3, 3, -7, 1128 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 1308 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 574 },
			["Crabzxtrapzx|shekzeer"] = { 4, 1, 76, 1119 },
			["ßlinkd|shekzeer"] = { 4, 1, 20, 843 },
			["ßonnießlue|shekzeer"] = { 4, 1, 2, 839 },
			["Tenex|norushen"] = { 1, 4, -10, 963 },
			["Valla|shekzeer"] = { 3, 2, 8, 768 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 574 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 724 },
			["Voljix|shekzeer"] = { 2, 2, -14, 1308 },
			["Vrctx|shekzeer"] = { 4, 0, 56, 787 },
			["Jäckynkô|hoptallus"] = { 3, 0, 12, 981 },
			["Refresherr|hoptallus"] = { 3, 0, 12, 981 },
			["Zhili|hoptallus"] = { 0, 3, -14, 574 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 1255 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 1255 },
			["Iratina|everlook"] = { 0, 2, 0, 941 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 747 },
			["Juicyverÿ|shekzeer"] = { 1, 1, -2, 961 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 768 },
			["Mists|shekzeer"] = { 2, 0, 6, 938 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 940 },
			["Satåntrapbot|shekzeer"] = { 2, 0, 4, 938 },
			["Savexx|shekzeer"] = { 0, 2, -8, 838 },
			["Xály|shekzeer"] = { 0, 2, -23, 641 },
			["Эрмантраутх|flamegor"] = { 1, 1, -2, 986 },
			["Malte|shekzeer"] = { 0, 1, 0, 1141 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 754 },
			["Utogi|everlook"] = { 1, 0, 21, 850 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 758 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 1308 },
		},
		[2] = {
			["Ineo|shekzeer"] = { 2, 7, 192, 948 },
			["Tropycal|mirage-raceway"] = { 3, 5, 58, 1051 },
			["Голмаш|flamegor"] = { 3, 5, 66, 948 },
			["Missgrip|sulfuron"] = { 3, 4, 288, 1128 },
			["Павлорион|flamegor"] = { 7, 0, 100, 1072 },
			["Цианидвектор|flamegor"] = { 7, 0, 136, 1070 },
			["Orestis|norushen"] = { 2, 3, 192, 1110 },
			["Luckynova|garalon"] = { 2, 1, 4, 1161 },
			["Totemgodx|shekzeer"] = { 1, 2, -2, 1128 },
			["Рыкай|flamegor"] = { 1, 2, -14, 1128 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 1042 },
			["Weaverok|shekzeer"] = { 1, 0, 3, 948 },
		},
	},
}

