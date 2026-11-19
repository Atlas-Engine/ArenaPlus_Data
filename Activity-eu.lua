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
	built = 1795068030,
	builtText = "2026-11-19 01:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Numanuxna|shekzeer"] = { 0, 2, -8, 343 },
			["ßonnießlue|shekzeer"] = { 2, 0, 2, 263 },
			["Xály|shekzeer"] = { 0, 2, -2, 288 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 11, 12, 9, 432 },
			["Bobz|auberdine"] = { 10, 6, 58, 403 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 482 },
			["Orkidy|auberdine"] = { 10, 6, 58, 403 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 482 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 534 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 538 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 530 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 449 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 684 },
			["Topshotta|everlook"] = { 2, 6, 3, 469 },
			["Zok|shekzeer"] = { 2, 6, 2, 457 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 636 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 553 },
			["Skyráw|shekzeer"] = { 4, 3, -22, 702 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 534 },
			["Kospi|auberdine"] = { 3, 3, 24, 452 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 451 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 554 },
			["Marlk|shekzeer"] = { 2, 3, 6, 581 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 531 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 343 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 534 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 263 },
			["Xály|shekzeer"] = { 1, 3, 5, 288 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 490 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 495 },
			["Orestis|norushen"] = { 0, 3, -12, 442 },
			["Idontflinch|garalon"] = { 0, 2, 0, 394 },
			["Semiazas|shekzeer"] = { 0, 2, 0, 701 },
			["Taillung|shekzeer"] = { 2, 0, 4, 414 },
			["Xpu|everlook"] = { 2, 0, 4, 409 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 611 },
			["Domnox|auberdine"] = { 0, 1, -11, 408 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 394 },
			["Nossy|hoptallus"] = { 0, 1, -4, 675 },
			["Sapmere|auberdine"] = { 0, 1, -11, 408 },
			["Zonya|hoptallus"] = { 0, 1, -5, 674 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 8, 5, 104, 663 },
			["Голмаш|flamegor"] = { 8, 5, 136, 574 },
			["Missgrip|sulfuron"] = { 1, 8, 23, 574 },
			["Lazinka|norushen"] = { 5, 1, 50, 574 },
			["Batix|shekzeer"] = { 1, 0, 16, 681 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 681 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 680 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 432 },
			["Bobz|auberdine"] = { 19, 11, 77, 403 },
			["Orkidy|auberdine"] = { 19, 11, 77, 403 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 482 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 482 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 702 },
			["Ineo|shekzeer"] = { 3, 10, -42, 754 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 534 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 538 },
			["Domnox|auberdine"] = { 7, 3, -5, 408 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 530 },
			["Sapmere|auberdine"] = { 7, 3, -4, 408 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 449 },
			["Kospi|auberdine"] = { 5, 4, 25, 452 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 684 },
			["Topshotta|everlook"] = { 2, 6, 3, 469 },
			["Zok|shekzeer"] = { 2, 6, 2, 457 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 636 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 553 },
			["Iratina|everlook"] = { 3, 4, 60, 945 },
			["Scärlett|norushen"] = { 2, 5, -19, 776 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 701 },
			["Sparâdräp|auberdine"] = { 1, 6, -19, 959 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 534 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 451 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 554 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 1011 },
			["Marlk|shekzeer"] = { 2, 3, 6, 581 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 531 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 343 },
			["Orestis|norushen"] = { 0, 4, -16, 442 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 534 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 263 },
			["Xály|shekzeer"] = { 1, 3, 5, 288 },
			["Zellëph|auberdine"] = { 0, 4, -19, 1004 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 490 },
			["Cavernicola|garalon"] = { 0, 3, -21, 754 },
			["Chirdè|auberdine"] = { 0, 3, -12, 934 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 495 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 997 },
			["Kasuny|everlook"] = { 1, 2, 1, 754 },
			["Paloun|auberdine"] = { 2, 1, -1, 1030 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 883 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 883 },
			["Durianlover|shekzeer"] = { 2, 0, 8, 934 },
			["Filmar|shekzeer"] = { 2, 0, 43, 754 },
			["Hopedieslast|shekzeer"] = { 2, 0, 11, 934 },
			["Idontflinch|garalon"] = { 0, 2, 0, 394 },
			["Kream|shekzeer"] = { 2, 0, 30, 892 },
			["Lácana|everlook"] = { 0, 2, -16, 754 },
			["Taillung|shekzeer"] = { 2, 0, 4, 414 },
			["Trolly|shekzeer"] = { 2, 0, 35, 934 },
			["Xpu|everlook"] = { 2, 0, 4, 409 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 611 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 394 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 1020 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 760 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 754 },
			["Mórdos|everlook"] = { 1, 0, 11, 776 },
			["Nossy|hoptallus"] = { 0, 1, -4, 675 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1021 },
			["Zonya|hoptallus"] = { 0, 1, -5, 674 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 796 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 663 },
			["Голмаш|flamegor"] = { 11, 8, 201, 574 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 574 },
			["Lazinka|norushen"] = { 5, 1, 50, 574 },
			["Batix|shekzeer"] = { 3, 0, 46, 681 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 681 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 680 },
		},
	},
}

