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
	built = 1795071630,
	builtText = "2026-11-19 02:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["ßonnießlue|shekzeer"] = { 2, 0, 2, 323 },
			["Xály|shekzeer"] = { 0, 2, -2, 348 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 11, 12, 9, 492 },
			["Bobz|auberdine"] = { 10, 6, 58, 463 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 542 },
			["Orkidy|auberdine"] = { 10, 6, 58, 463 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 542 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 594 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 598 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 590 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 509 },
			["Topshotta|everlook"] = { 2, 6, 3, 529 },
			["Zok|shekzeer"] = { 2, 6, 2, 517 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 696 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 613 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 594 },
			["Kospi|auberdine"] = { 3, 3, 24, 512 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 511 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 614 },
			["Marlk|shekzeer"] = { 2, 3, 6, 641 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 591 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 403 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 594 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 323 },
			["Xály|shekzeer"] = { 1, 3, 5, 348 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 550 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 555 },
			["Orestis|norushen"] = { 0, 3, -12, 502 },
			["Idontflinch|garalon"] = { 0, 2, 0, 454 },
			["Taillung|shekzeer"] = { 2, 0, 4, 474 },
			["Xpu|everlook"] = { 2, 0, 4, 469 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 671 },
			["Domnox|auberdine"] = { 0, 1, -11, 468 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 454 },
			["Sapmere|auberdine"] = { 0, 1, -11, 468 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 8, 5, 136, 634 },
			["Missgrip|sulfuron"] = { 1, 8, 23, 634 },
			["Lazinka|norushen"] = { 5, 1, 50, 634 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 492 },
			["Bobz|auberdine"] = { 19, 11, 77, 463 },
			["Orkidy|auberdine"] = { 19, 11, 77, 463 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 542 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 542 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 762 },
			["Ineo|shekzeer"] = { 3, 10, -42, 814 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 594 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 598 },
			["Domnox|auberdine"] = { 7, 3, -5, 468 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 590 },
			["Sapmere|auberdine"] = { 7, 3, -4, 468 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 509 },
			["Kospi|auberdine"] = { 5, 4, 25, 512 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 744 },
			["Topshotta|everlook"] = { 2, 6, 3, 529 },
			["Zok|shekzeer"] = { 2, 6, 2, 517 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 696 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 613 },
			["Iratina|everlook"] = { 3, 4, 60, 1005 },
			["Scärlett|norushen"] = { 2, 5, -19, 836 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 761 },
			["Sparâdräp|auberdine"] = { 1, 6, -19, 1019 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 594 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 511 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 614 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 1071 },
			["Marlk|shekzeer"] = { 2, 3, 6, 641 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 591 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 403 },
			["Orestis|norushen"] = { 0, 4, -16, 502 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 594 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 323 },
			["Xály|shekzeer"] = { 1, 3, 5, 348 },
			["Zellëph|auberdine"] = { 0, 4, -19, 1064 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 550 },
			["Cavernicola|garalon"] = { 0, 3, -21, 814 },
			["Chirdè|auberdine"] = { 0, 3, -12, 994 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 555 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 1057 },
			["Kasuny|everlook"] = { 1, 2, 1, 814 },
			["Paloun|auberdine"] = { 2, 1, -1, 1090 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 943 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 943 },
			["Durianlover|shekzeer"] = { 2, 0, 8, 994 },
			["Filmar|shekzeer"] = { 2, 0, 43, 814 },
			["Hopedieslast|shekzeer"] = { 2, 0, 11, 994 },
			["Idontflinch|garalon"] = { 0, 2, 0, 454 },
			["Kream|shekzeer"] = { 2, 0, 30, 952 },
			["Lácana|everlook"] = { 0, 2, -16, 814 },
			["Taillung|shekzeer"] = { 2, 0, 4, 474 },
			["Trolly|shekzeer"] = { 2, 0, 35, 994 },
			["Xpu|everlook"] = { 2, 0, 4, 469 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 671 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 454 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 1080 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 820 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 814 },
			["Mórdos|everlook"] = { 1, 0, 11, 836 },
			["Nossy|hoptallus"] = { 0, 1, -4, 735 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1081 },
			["Zonya|hoptallus"] = { 0, 1, -5, 734 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 856 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 723 },
			["Голмаш|flamegor"] = { 11, 8, 201, 634 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 634 },
			["Lazinka|norushen"] = { 5, 1, 50, 634 },
			["Batix|shekzeer"] = { 3, 0, 46, 741 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 741 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 740 },
		},
	},
}

