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
	built = 1795086026,
	builtText = "2026-11-19 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 4, 2, 37, 703 },
			["Orkidy|auberdine"] = { 4, 2, 37, 703 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 643 },
			["Xály|shekzeer"] = { 1, 3, 5, 588 },
			["Idontflinch|garalon"] = { 0, 2, 0, 693 },
			["ßonnießlue|shekzeer"] = { 2, 0, 2, 562 },
			["Taillung|shekzeer"] = { 2, 0, 4, 714 },
			["Xpu|everlook"] = { 2, 0, 4, 709 },
			["Domnox|auberdine"] = { 0, 1, -11, 708 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 693 },
			["Sapmere|auberdine"] = { 0, 1, -11, 708 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 732 },
			["Bobz|auberdine"] = { 19, 11, 77, 703 },
			["Orkidy|auberdine"] = { 19, 11, 77, 703 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 782 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 782 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 1002 },
			["Ineo|shekzeer"] = { 3, 10, -42, 1053 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 834 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 838 },
			["Domnox|auberdine"] = { 7, 3, -5, 708 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 830 },
			["Sapmere|auberdine"] = { 7, 3, -4, 708 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 748 },
			["Kospi|auberdine"] = { 5, 4, 25, 752 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 984 },
			["Topshotta|everlook"] = { 2, 6, 3, 769 },
			["Zok|shekzeer"] = { 2, 6, 2, 757 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 936 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 853 },
			["Iratina|everlook"] = { 3, 4, 60, 1245 },
			["Scärlett|norushen"] = { 2, 5, -19, 1076 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 1001 },
			["Sparâdräp|auberdine"] = { 1, 6, -19, 1259 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 834 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 751 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 854 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 1311 },
			["Marlk|shekzeer"] = { 2, 3, 6, 881 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 831 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 643 },
			["Orestis|norushen"] = { 0, 4, -16, 742 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 834 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 562 },
			["Xály|shekzeer"] = { 1, 3, 5, 588 },
			["Zellëph|auberdine"] = { 0, 4, -19, 1304 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 790 },
			["Cavernicola|garalon"] = { 0, 3, -21, 1053 },
			["Chirdè|auberdine"] = { 0, 3, -12, 1233 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 795 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 1297 },
			["Kasuny|everlook"] = { 1, 2, 1, 1053 },
			["Paloun|auberdine"] = { 2, 1, -1, 1329 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 1183 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 1183 },
			["Durianlover|shekzeer"] = { 2, 0, 8, 1233 },
			["Filmar|shekzeer"] = { 2, 0, 43, 1053 },
			["Hopedieslast|shekzeer"] = { 2, 0, 11, 1233 },
			["Idontflinch|garalon"] = { 0, 2, 0, 693 },
			["Kream|shekzeer"] = { 2, 0, 30, 1192 },
			["Lácana|everlook"] = { 0, 2, -16, 1053 },
			["Taillung|shekzeer"] = { 2, 0, 4, 714 },
			["Trolly|shekzeer"] = { 2, 0, 35, 1233 },
			["Xpu|everlook"] = { 2, 0, 4, 709 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 911 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 693 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 1320 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 1060 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 1053 },
			["Mórdos|everlook"] = { 1, 0, 11, 1076 },
			["Nossy|hoptallus"] = { 0, 1, -4, 974 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1321 },
			["Zonya|hoptallus"] = { 0, 1, -5, 974 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 1096 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 962 },
			["Голмаш|flamegor"] = { 11, 8, 201, 873 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 873 },
			["Lazinka|norushen"] = { 5, 1, 50, 873 },
			["Batix|shekzeer"] = { 3, 0, 46, 981 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 981 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 980 },
		},
	},
}

