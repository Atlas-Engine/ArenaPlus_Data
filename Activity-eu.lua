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
	built = 1795075226,
	builtText = "2026-11-19 03:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 11, 12, 9, 552 },
			["Bobz|auberdine"] = { 10, 6, 58, 523 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 602 },
			["Orkidy|auberdine"] = { 10, 6, 58, 523 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 602 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 654 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 650 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 568 },
			["Ayvara|shekzeer"] = { 6, 3, 32, 658 },
			["Topshotta|everlook"] = { 2, 6, 3, 589 },
			["Zok|shekzeer"] = { 2, 6, 2, 577 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 673 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 654 },
			["Kospi|auberdine"] = { 3, 3, 24, 572 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 571 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 674 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 651 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 463 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 654 },
			["Xály|shekzeer"] = { 1, 3, 5, 408 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 610 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 615 },
			["Orestis|norushen"] = { 0, 3, -12, 562 },
			["Idontflinch|garalon"] = { 0, 2, 0, 513 },
			["Marlk|shekzeer"] = { 1, 1, -1, 701 },
			["ßonnießlue|shekzeer"] = { 2, 0, 2, 382 },
			["Taillung|shekzeer"] = { 2, 0, 4, 534 },
			["Xpu|everlook"] = { 2, 0, 4, 529 },
			["Domnox|auberdine"] = { 0, 1, -11, 528 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 513 },
			["Sapmere|auberdine"] = { 0, 1, -11, 528 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 8, 5, 136, 693 },
			["Missgrip|sulfuron"] = { 1, 8, 23, 693 },
			["Lazinka|norushen"] = { 5, 1, 50, 693 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 552 },
			["Bobz|auberdine"] = { 19, 11, 77, 523 },
			["Orkidy|auberdine"] = { 19, 11, 77, 523 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 602 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 602 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 822 },
			["Ineo|shekzeer"] = { 3, 10, -42, 873 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 654 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 658 },
			["Domnox|auberdine"] = { 7, 3, -5, 528 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 650 },
			["Sapmere|auberdine"] = { 7, 3, -4, 528 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 568 },
			["Kospi|auberdine"] = { 5, 4, 25, 572 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 804 },
			["Topshotta|everlook"] = { 2, 6, 3, 589 },
			["Zok|shekzeer"] = { 2, 6, 2, 577 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 756 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 673 },
			["Iratina|everlook"] = { 3, 4, 60, 1065 },
			["Scärlett|norushen"] = { 2, 5, -19, 896 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 821 },
			["Sparâdräp|auberdine"] = { 1, 6, -19, 1079 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 654 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 571 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 674 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 1131 },
			["Marlk|shekzeer"] = { 2, 3, 6, 701 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 651 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 463 },
			["Orestis|norushen"] = { 0, 4, -16, 562 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 654 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 382 },
			["Xály|shekzeer"] = { 1, 3, 5, 408 },
			["Zellëph|auberdine"] = { 0, 4, -19, 1124 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 610 },
			["Cavernicola|garalon"] = { 0, 3, -21, 873 },
			["Chirdè|auberdine"] = { 0, 3, -12, 1053 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 615 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 1117 },
			["Kasuny|everlook"] = { 1, 2, 1, 873 },
			["Paloun|auberdine"] = { 2, 1, -1, 1149 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 1003 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 1003 },
			["Durianlover|shekzeer"] = { 2, 0, 8, 1053 },
			["Filmar|shekzeer"] = { 2, 0, 43, 873 },
			["Hopedieslast|shekzeer"] = { 2, 0, 11, 1053 },
			["Idontflinch|garalon"] = { 0, 2, 0, 513 },
			["Kream|shekzeer"] = { 2, 0, 30, 1012 },
			["Lácana|everlook"] = { 0, 2, -16, 873 },
			["Taillung|shekzeer"] = { 2, 0, 4, 534 },
			["Trolly|shekzeer"] = { 2, 0, 35, 1053 },
			["Xpu|everlook"] = { 2, 0, 4, 529 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 731 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 513 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 1140 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 880 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 873 },
			["Mórdos|everlook"] = { 1, 0, 11, 896 },
			["Nossy|hoptallus"] = { 0, 1, -4, 794 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1141 },
			["Zonya|hoptallus"] = { 0, 1, -5, 794 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 916 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 782 },
			["Голмаш|flamegor"] = { 11, 8, 201, 693 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 693 },
			["Lazinka|norushen"] = { 5, 1, 50, 693 },
			["Batix|shekzeer"] = { 3, 0, 46, 801 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 801 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 800 },
		},
	},
}

