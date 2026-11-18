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
	built = 1794988831,
	builtText = "2026-11-18 03:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Nightstream|hoptallus"] = { 0, 8, -63, 334 },
			["Ithildrin|mirage-raceway"] = { 1, 5, 16, 334 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 334 },
			["Zhili|hoptallus"] = { 0, 3, -14, 334 },
			["Hopedieslast|shekzeer"] = { 1, 0, 9, 334 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 19, 13, 17, 381 },
			["Ineo|shekzeer"] = { 14, 18, -24, 444 },
			["Orkidy|auberdine"] = { 19, 13, 17, 382 },
			["Kakalocko|shekzeer"] = { 6, 21, -60, 382 },
			["Tastemydmg|shekzeer"] = { 14, 13, -36, 707 },
			["Tyralíon|shekzeer"] = { 14, 13, -36, 708 },
			["Domnox|auberdine"] = { 12, 7, 35, 631 },
			["Nightstream|hoptallus"] = { 4, 15, -82, 334 },
			["Sapmere|auberdine"] = { 12, 7, 35, 631 },
			["Healdbyme|shekzeer"] = { 7, 10, 53, 680 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 334 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 584 },
			["Huanita|shekzeer"] = { 7, 6, -14, 533 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 528 },
			["Hayvanqt|shekzeer"] = { 6, 6, 95, 680 },
			["Drumåndbåss|shekzeer"] = { 7, 3, 34, 660 },
			["Тнэш|flamegor"] = { 7, 3, 34, 659 },
			["Nightlash|everlook"] = { 0, 9, -37, 717 },
			["Weaverok|shekzeer"] = { 5, 4, -19, 705 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 528 },
			["Симбикс|flamegor"] = { 2, 5, -25, 597 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 334 },
			["Rbgme|norushen"] = { 3, 2, 42, 528 },
			["ßlinkd|shekzeer"] = { 4, 1, 20, 603 },
			["ßonnießlue|shekzeer"] = { 4, 1, 2, 599 },
			["Valla|shekzeer"] = { 3, 2, 8, 528 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 334 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 484 },
			["Vrctx|shekzeer"] = { 3, 0, 36, 547 },
			["Zhili|hoptallus"] = { 0, 3, -14, 334 },
			["Iratina|everlook"] = { 0, 2, 0, 701 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 507 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 528 },
			["Mists|shekzeer"] = { 2, 0, 6, 698 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 700 },
			["Satåntrapbot|shekzeer"] = { 2, 0, 4, 698 },
			["Savexx|shekzeer"] = { 0, 2, -8, 598 },
			["Xály|shekzeer"] = { 0, 2, -23, 401 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 514 },
			["Utogi|everlook"] = { 1, 0, 21, 610 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 518 },
		},
		[2] = {
			["Ineo|shekzeer"] = { 0, 7, 0, 708 },
			["Голмаш|flamegor"] = { 0, 3, 0, 708 },
			["Weaverok|shekzeer"] = { 1, 0, 3, 708 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ineo|shekzeer"] = { 20, 24, 13, 444 },
			["Bobz|auberdine"] = { 19, 13, 17, 381 },
			["Orkidy|auberdine"] = { 19, 13, 17, 382 },
			["Kakalocko|shekzeer"] = { 6, 21, -60, 382 },
			["Tastemydmg|shekzeer"] = { 14, 13, -36, 707 },
			["Tyralíon|shekzeer"] = { 14, 13, -36, 708 },
			["Rbgme|norushen"] = { 9, 14, 104, 528 },
			["Domnox|auberdine"] = { 12, 7, 35, 631 },
			["Nightstream|hoptallus"] = { 4, 15, -82, 334 },
			["Sapmere|auberdine"] = { 12, 7, 35, 631 },
			["Screwedup|norushen"] = { 6, 12, 62, 888 },
			["Healdbyme|shekzeer"] = { 7, 10, 53, 680 },
			["Ithildrin|mirage-raceway"] = { 10, 7, 185, 334 },
			["Semiazas|shekzeer"] = { 6, 10, 77, 725 },
			["Фоллсс|flamegor"] = { 13, 3, 146, 765 },
			["Lazinka|norushen"] = { 6, 8, 83, 888 },
			["Вялыйхантер|flamegor"] = { 10, 4, 92, 584 },
			["Huanita|shekzeer"] = { 7, 6, -14, 533 },
			["Tackiella|shekzeer"] = { 7, 6, -1, 528 },
			["Hayvanqt|shekzeer"] = { 6, 6, 95, 680 },
			["Drumåndbåss|shekzeer"] = { 7, 3, 34, 660 },
			["Orestis|norushen"] = { 2, 8, -26, 767 },
			["Тнэш|flamegor"] = { 7, 3, 34, 659 },
			["Guccidaggers|shekzeer"] = { 4, 5, 88, 888 },
			["Nightlash|everlook"] = { 0, 9, -37, 717 },
			["Weaverok|shekzeer"] = { 5, 4, -19, 705 },
			["Kostez|shekzeer"] = { 2, 5, -16, 761 },
			["Retrivout|shekzeer"] = { 2, 5, -16, 528 },
			["Thaladra|shekzeer"] = { 2, 5, 32, 760 },
			["Симбикс|flamegor"] = { 2, 5, -25, 597 },
			["Bloodmoney|shekzeer"] = { 3, 3, -7, 888 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 1068 },
			["Coldcofeesux|shekzeer"] = { 2, 3, -6, 334 },
			["Crabzxtrapzx|shekzeer"] = { 4, 1, 76, 879 },
			["ßlinkd|shekzeer"] = { 4, 1, 20, 603 },
			["ßonnießlue|shekzeer"] = { 4, 1, 2, 599 },
			["Tenex|norushen"] = { 1, 4, -10, 723 },
			["Valla|shekzeer"] = { 3, 2, 8, 528 },
			["Hopedieslast|shekzeer"] = { 3, 1, 17, 334 },
			["Talbyfirst|shekzeer"] = { 3, 1, 16, 484 },
			["Voljix|shekzeer"] = { 2, 2, -14, 1068 },
			["Vrctx|shekzeer"] = { 4, 0, 56, 547 },
			["Jäckynkô|hoptallus"] = { 3, 0, 12, 741 },
			["Refresherr|hoptallus"] = { 3, 0, 12, 741 },
			["Zhili|hoptallus"] = { 0, 3, -14, 334 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 1015 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 1015 },
			["Iratina|everlook"] = { 0, 2, 0, 701 },
			["Jâckywhâcky|shekzeer"] = { 1, 1, -4, 507 },
			["Juicyverÿ|shekzeer"] = { 1, 1, -2, 721 },
			["Keyoo|shekzeer"] = { 0, 2, -8, 528 },
			["Mists|shekzeer"] = { 2, 0, 6, 698 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 700 },
			["Satåntrapbot|shekzeer"] = { 2, 0, 4, 698 },
			["Savexx|shekzeer"] = { 0, 2, -8, 598 },
			["Xály|shekzeer"] = { 0, 2, -23, 401 },
			["Эрмантраутх|flamegor"] = { 1, 1, -2, 746 },
			["Malte|shekzeer"] = { 0, 1, 0, 901 },
			["Satånaz|shekzeer"] = { 1, 0, 4, 514 },
			["Utogi|everlook"] = { 1, 0, 21, 610 },
			["Vercettixx|shekzeer"] = { 1, 0, 8, 518 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 1068 },
		},
		[2] = {
			["Ineo|shekzeer"] = { 2, 7, 192, 708 },
			["Tropycal|mirage-raceway"] = { 3, 5, 58, 811 },
			["Голмаш|flamegor"] = { 3, 5, 66, 708 },
			["Missgrip|sulfuron"] = { 3, 4, 288, 888 },
			["Павлорион|flamegor"] = { 7, 0, 100, 832 },
			["Цианидвектор|flamegor"] = { 7, 0, 136, 830 },
			["Orestis|norushen"] = { 2, 3, 192, 870 },
			["Luckynova|garalon"] = { 2, 1, 4, 921 },
			["Totemgodx|shekzeer"] = { 1, 2, -2, 888 },
			["Рыкай|flamegor"] = { 1, 2, -14, 888 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 802 },
			["Weaverok|shekzeer"] = { 1, 0, 3, 708 },
		},
	},
}

