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
	built = 1794992431,
	builtText = "2026-11-18 04:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 19, 13, 17, 441 },
			["Orkidy|auberdine"] = { 19, 13, 17, 442 },
			["Kakalocko|shekzeer"] = { 5, 19, -54, 442 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 394 },
			["Nightstream|hoptallus"] = { 3, 13, -73, 394 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 644 },
			["Huanita|shekzeer"] = { 7, 6, -14, 593 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 588 },
			["Domnox|auberdine"] = { 6, 6, -6, 691 },
			["Sapmere|auberdine"] = { 3, 6, -40, 691 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 588 },
			["Симбикс|flamegor"] = { 2, 5, -25, 657 },
			["Тнэш|flamegor"] = { 4, 3, 11, 719 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 394 },
			["Rbgme|norushen"] = { 3, 2, 42, 588 },
			["Valla|shekzeer"] = { 3, 2, 8, 588 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 394 },
			["ßlinkd|shekzeer"] = { 4, 0, 24, 663 },
			["ßonnießlue|shekzeer"] = { 4, 0, 11, 659 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 544 },
			["Zhili|hoptallus"] = { 0, 3, -14, 394 },
			["Ineo|shekzeer"] = { 0, 2, -15, 504 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 567 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 588 },
			["Savexx|shekzeer"] = { 0, 2, -8, 658 },
			["Xály|shekzeer"] = { 0, 2, -23, 461 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 574 },
			["Utogi|everlook"] = { 1, 0, 21, 670 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 578 },
			["Vrctx|shekzeer"] = { 1, 0, 13, 607 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 20, 24, 13, 504 },
			["Bobz|auberdine"] = { 19, 13, 17, 441 },
			["Orkidy|auberdine"] = { 19, 13, 17, 442 },
			["Kakalocko|shekzeer"] = { 6, 21, -60, 442 },
			["Tastemydmg|shekzeer"] = { 14, 13, -36, 767 },
			["Tyralíon|shekzeer"] = { 14, 13, -36, 768 },
			["Rbgme|norushen"] = { 9, 14, 104, 588 },
			["Domnox|auberdine"] = { 12, 7, 35, 691 },
			["Nightstream|hoptallus"] = { 4, 15, -82, 394 },
			["Sapmere|auberdine"] = { 12, 7, 35, 691 },
			["Screwedup|norushen"] = { 6, 12, 62, 948 },
			["Healdbyme|shekzeer"] = { 7, 10, 53, 740 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 394 },
			["Semiazas|shekzeer"] = { 6, 10, 77, 785 },
			["Фоллсс|flamegor"] = { 13, 3, 146, 825 },
			["Lazinka|norushen"] = { 6, 8, 83, 948 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 644 },
			["Huanita|shekzeer"] = { 7, 6, -14, 593 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 588 },
			["Hayvanqt|shekzeer"] = { 6, 6, 95, 740 },
			["Drumåndbåss|shekzeer"] = { 7, 3, 34, 720 },
			["Orestis|norushen"] = { 2, 8, -26, 827 },
			["Тнэш|flamegor"] = { 7, 3, 34, 719 },
			["Guccidaggers|shekzeer"] = { 4, 5, 88, 948 },
			["Nightlash|everlook"] = { 0, 9, -37, 777 },
			["Weaverok|shekzeer"] = { 5, 4, -19, 765 },
			["Kostez|shekzeer"] = { 2, 5, -16, 821 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 588 },
			["Thaladra|shekzeer"] = { 2, 5, 32, 820 },
			["Симбикс|flamegor"] = { 2, 5, -25, 657 },
			["Bloodmoney|shekzeer"] = { 3, 3, -7, 948 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 1128 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 394 },
			["Crabzxtrapzx|shekzeer"] = { 4, 1, 76, 939 },
			["ßlinkd|shekzeer"] = { 4, 1, 20, 663 },
			["ßonnießlue|shekzeer"] = { 4, 1, 2, 659 },
			["Tenex|norushen"] = { 1, 4, -10, 783 },
			["Valla|shekzeer"] = { 3, 2, 8, 588 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 394 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 544 },
			["Voljix|shekzeer"] = { 2, 2, -14, 1128 },
			["Vrctx|shekzeer"] = { 4, 0, 56, 607 },
			["Jäckynkô|hoptallus"] = { 3, 0, 12, 801 },
			["Refresherr|hoptallus"] = { 3, 0, 12, 801 },
			["Zhili|hoptallus"] = { 0, 3, -14, 394 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 1075 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 1075 },
			["Iratina|everlook"] = { 0, 2, 0, 761 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 567 },
			["Juicyverÿ|shekzeer"] = { 1, 1, -2, 781 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 588 },
			["Mists|shekzeer"] = { 2, 0, 6, 758 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 760 },
			["Satåntrapbot|shekzeer"] = { 2, 0, 4, 758 },
			["Savexx|shekzeer"] = { 0, 2, -8, 658 },
			["Xály|shekzeer"] = { 0, 2, -23, 461 },
			["Эрмантраутх|flamegor"] = { 1, 1, -2, 806 },
			["Malte|shekzeer"] = { 0, 1, 0, 961 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 574 },
			["Utogi|everlook"] = { 1, 0, 21, 670 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 578 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 1128 },
		},
		[2] = {
			["Ineo|shekzeer"] = { 2, 7, 192, 768 },
			["Tropycal|mirage-raceway"] = { 3, 5, 58, 871 },
			["Голмаш|flamegor"] = { 3, 5, 66, 768 },
			["Missgrip|sulfuron"] = { 3, 4, 288, 948 },
			["Павлорион|flamegor"] = { 7, 0, 100, 892 },
			["Цианидвектор|flamegor"] = { 7, 0, 136, 890 },
			["Orestis|norushen"] = { 2, 3, 192, 930 },
			["Luckynova|garalon"] = { 2, 1, 4, 981 },
			["Totemgodx|shekzeer"] = { 1, 2, -2, 948 },
			["Рыкай|flamegor"] = { 1, 2, -14, 948 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 862 },
			["Weaverok|shekzeer"] = { 1, 0, 3, 768 },
		},
	},
}

