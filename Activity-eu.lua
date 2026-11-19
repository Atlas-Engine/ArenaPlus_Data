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
	built = 1795078823,
	builtText = "2026-11-19 04:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 11, 12, 9, 612 },
			["Bobz|auberdine"] = { 10, 6, 58, 583 },
			["Orkidy|auberdine"] = { 10, 6, 58, 583 },
			["Cõmbustz|shekzeer"] = { 6, 8, -36, 662 },
			["Rainbowrïder|shekzeer"] = { 6, 8, -36, 662 },
			["Vrctx|shekzeer"] = { 9, 0, 87, 628 },
			["Topshotta|everlook"] = { 2, 6, 3, 649 },
			["Zok|shekzeer"] = { 2, 6, 2, 637 },
			["Kospi|auberdine"] = { 3, 3, 24, 632 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 631 },
			["Deepfull|shekzeer"] = { 2, 2, 12, 714 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 711 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 523 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 714 },
			["Srtwhippa|everlook"] = { 2, 2, 15, 714 },
			["Xály|shekzeer"] = { 1, 3, 5, 468 },
			["Ayvara|shekzeer"] = { 2, 1, 12, 718 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 669 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 675 },
			["Mythrugun|shekzeer"] = { 2, 1, 12, 710 },
			["Orestis|norushen"] = { 0, 3, -12, 622 },
			["Idontflinch|garalon"] = { 0, 2, 0, 573 },
			["ßonnießlue|shekzeer"] = { 2, 0, 2, 442 },
			["Taillung|shekzeer"] = { 2, 0, 4, 594 },
			["Xpu|everlook"] = { 2, 0, 4, 589 },
			["Domnox|auberdine"] = { 0, 1, -11, 588 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 573 },
			["Sapmere|auberdine"] = { 0, 1, -11, 588 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 612 },
			["Bobz|auberdine"] = { 19, 11, 77, 583 },
			["Orkidy|auberdine"] = { 19, 11, 77, 583 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 662 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 662 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 882 },
			["Ineo|shekzeer"] = { 3, 10, -42, 933 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 714 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 718 },
			["Domnox|auberdine"] = { 7, 3, -5, 588 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 710 },
			["Sapmere|auberdine"] = { 7, 3, -4, 588 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 628 },
			["Kospi|auberdine"] = { 5, 4, 25, 632 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 864 },
			["Topshotta|everlook"] = { 2, 6, 3, 649 },
			["Zok|shekzeer"] = { 2, 6, 2, 637 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 816 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 733 },
			["Iratina|everlook"] = { 3, 4, 60, 1125 },
			["Scärlett|norushen"] = { 2, 5, -19, 956 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 881 },
			["Sparâdräp|auberdine"] = { 1, 6, -19, 1139 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 714 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 631 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 734 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 1191 },
			["Marlk|shekzeer"] = { 2, 3, 6, 761 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 711 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 523 },
			["Orestis|norushen"] = { 0, 4, -16, 622 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 714 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 442 },
			["Xály|shekzeer"] = { 1, 3, 5, 468 },
			["Zellëph|auberdine"] = { 0, 4, -19, 1184 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 669 },
			["Cavernicola|garalon"] = { 0, 3, -21, 933 },
			["Chirdè|auberdine"] = { 0, 3, -12, 1113 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 675 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 1177 },
			["Kasuny|everlook"] = { 1, 2, 1, 933 },
			["Paloun|auberdine"] = { 2, 1, -1, 1209 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 1063 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 1063 },
			["Durianlover|shekzeer"] = { 2, 0, 8, 1113 },
			["Filmar|shekzeer"] = { 2, 0, 43, 933 },
			["Hopedieslast|shekzeer"] = { 2, 0, 11, 1113 },
			["Idontflinch|garalon"] = { 0, 2, 0, 573 },
			["Kream|shekzeer"] = { 2, 0, 30, 1072 },
			["Lácana|everlook"] = { 0, 2, -16, 933 },
			["Taillung|shekzeer"] = { 2, 0, 4, 594 },
			["Trolly|shekzeer"] = { 2, 0, 35, 1113 },
			["Xpu|everlook"] = { 2, 0, 4, 589 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 791 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 573 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 1200 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 940 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 933 },
			["Mórdos|everlook"] = { 1, 0, 11, 956 },
			["Nossy|hoptallus"] = { 0, 1, -4, 854 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1201 },
			["Zonya|hoptallus"] = { 0, 1, -5, 854 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 976 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 842 },
			["Голмаш|flamegor"] = { 11, 8, 201, 753 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 753 },
			["Lazinka|norushen"] = { 5, 1, 50, 753 },
			["Batix|shekzeer"] = { 3, 0, 46, 861 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 861 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 860 },
		},
	},
}

