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
	built = 1794996029,
	builtText = "2026-11-18 05:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 19, 13, 17, 501 },
			["Orkidy|auberdine"] = { 19, 13, 17, 502 },
			["Kakalocko|shekzeer"] = { 5, 19, -54, 502 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 453 },
			["Nightstream|hoptallus"] = { 3, 13, -73, 453 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 704 },
			["Huanita|shekzeer"] = { 7, 6, -14, 653 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 647 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 647 },
			["Симбикс|flamegor"] = { 2, 5, -25, 717 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 453 },
			["Rbgme|norushen"] = { 3, 2, 42, 647 },
			["Valla|shekzeer"] = { 3, 2, 8, 647 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 453 },
			["ßonnießlue|shekzeer"] = { 4, 0, 11, 719 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 604 },
			["Zhili|hoptallus"] = { 0, 3, -14, 453 },
			["Ineo|shekzeer"] = { 0, 2, -15, 564 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 627 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 647 },
			["Savexx|shekzeer"] = { 0, 2, -8, 718 },
			["Xály|shekzeer"] = { 0, 2, -23, 521 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 634 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 638 },
			["Vrctx|shekzeer"] = { 1, 0, 13, 667 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 20, 24, 13, 564 },
			["Bobz|auberdine"] = { 19, 13, 17, 501 },
			["Orkidy|auberdine"] = { 19, 13, 17, 502 },
			["Kakalocko|shekzeer"] = { 6, 21, -60, 502 },
			["Tastemydmg|shekzeer"] = { 14, 13, -36, 827 },
			["Tyralíon|shekzeer"] = { 14, 13, -36, 827 },
			["Rbgme|norushen"] = { 9, 14, 104, 647 },
			["Domnox|auberdine"] = { 12, 7, 35, 751 },
			["Nightstream|hoptallus"] = { 4, 15, -82, 453 },
			["Sapmere|auberdine"] = { 12, 7, 35, 751 },
			["Screwedup|norushen"] = { 6, 12, 62, 1007 },
			["Healdbyme|shekzeer"] = { 7, 10, 53, 800 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 453 },
			["Semiazas|shekzeer"] = { 6, 10, 77, 845 },
			["Фоллсс|flamegor"] = { 13, 3, 146, 885 },
			["Lazinka|norushen"] = { 6, 8, 83, 1007 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 704 },
			["Huanita|shekzeer"] = { 7, 6, -14, 653 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 647 },
			["Hayvanqt|shekzeer"] = { 6, 6, 95, 800 },
			["Drumåndbåss|shekzeer"] = { 7, 3, 34, 780 },
			["Orestis|norushen"] = { 2, 8, -26, 887 },
			["Тнэш|flamegor"] = { 7, 3, 34, 779 },
			["Guccidaggers|shekzeer"] = { 4, 5, 88, 1007 },
			["Nightlash|everlook"] = { 0, 9, -37, 837 },
			["Weaverok|shekzeer"] = { 5, 4, -19, 825 },
			["Kostez|shekzeer"] = { 2, 5, -16, 880 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 647 },
			["Thaladra|shekzeer"] = { 2, 5, 32, 880 },
			["Симбикс|flamegor"] = { 2, 5, -25, 717 },
			["Bloodmoney|shekzeer"] = { 3, 3, -7, 1007 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 1187 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 453 },
			["Crabzxtrapzx|shekzeer"] = { 4, 1, 76, 999 },
			["ßlinkd|shekzeer"] = { 4, 1, 20, 723 },
			["ßonnießlue|shekzeer"] = { 4, 1, 2, 719 },
			["Tenex|norushen"] = { 1, 4, -10, 843 },
			["Valla|shekzeer"] = { 3, 2, 8, 647 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 453 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 604 },
			["Voljix|shekzeer"] = { 2, 2, -14, 1187 },
			["Vrctx|shekzeer"] = { 4, 0, 56, 667 },
			["Jäckynkô|hoptallus"] = { 3, 0, 12, 861 },
			["Refresherr|hoptallus"] = { 3, 0, 12, 861 },
			["Zhili|hoptallus"] = { 0, 3, -14, 453 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 1135 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 1135 },
			["Iratina|everlook"] = { 0, 2, 0, 821 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 627 },
			["Juicyverÿ|shekzeer"] = { 1, 1, -2, 841 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 647 },
			["Mists|shekzeer"] = { 2, 0, 6, 818 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 820 },
			["Satåntrapbot|shekzeer"] = { 2, 0, 4, 818 },
			["Savexx|shekzeer"] = { 0, 2, -8, 718 },
			["Xály|shekzeer"] = { 0, 2, -23, 521 },
			["Эрмантраутх|flamegor"] = { 1, 1, -2, 866 },
			["Malte|shekzeer"] = { 0, 1, 0, 1021 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 634 },
			["Utogi|everlook"] = { 1, 0, 21, 730 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 638 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 1187 },
		},
		[2] = {
			["Ineo|shekzeer"] = { 2, 7, 192, 827 },
			["Tropycal|mirage-raceway"] = { 3, 5, 58, 931 },
			["Голмаш|flamegor"] = { 3, 5, 66, 827 },
			["Missgrip|sulfuron"] = { 3, 4, 288, 1007 },
			["Павлорион|flamegor"] = { 7, 0, 100, 952 },
			["Цианидвектор|flamegor"] = { 7, 0, 136, 950 },
			["Orestis|norushen"] = { 2, 3, 192, 990 },
			["Luckynova|garalon"] = { 2, 1, 4, 1041 },
			["Totemgodx|shekzeer"] = { 1, 2, -2, 1007 },
			["Рыкай|flamegor"] = { 1, 2, -14, 1007 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 922 },
			["Weaverok|shekzeer"] = { 1, 0, 3, 827 },
		},
	},
}

