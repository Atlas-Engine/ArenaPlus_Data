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
	built = 1795082423,
	builtText = "2026-11-19 05:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 11, 12, 9, 672 },
			["Topshotta|everlook"] = { 2, 6, 3, 709 },
			["Bobz|auberdine"] = { 4, 2, 37, 643 },
			["Orkidy|auberdine"] = { 4, 2, 37, 643 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 691 },
			["Kospi|auberdine"] = { 2, 3, 13, 692 },
			["Vrctx|shekzeer"] = { 5, 0, 45, 688 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 583 },
			["Xály|shekzeer"] = { 1, 3, 5, 528 },
			["Orestis|norushen"] = { 0, 3, -12, 682 },
			["Idontflinch|garalon"] = { 0, 2, 0, 633 },
			["ßonnießlue|shekzeer"] = { 2, 0, 2, 502 },
			["Taillung|shekzeer"] = { 2, 0, 4, 654 },
			["Xpu|everlook"] = { 2, 0, 4, 649 },
			["Zok|shekzeer"] = { 0, 2, -4, 697 },
			["Domnox|auberdine"] = { 0, 1, -11, 648 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 633 },
			["Sapmere|auberdine"] = { 0, 1, -11, 648 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 672 },
			["Bobz|auberdine"] = { 19, 11, 77, 643 },
			["Orkidy|auberdine"] = { 19, 11, 77, 643 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 722 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 722 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 942 },
			["Ineo|shekzeer"] = { 3, 10, -42, 993 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 774 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 778 },
			["Domnox|auberdine"] = { 7, 3, -5, 648 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 770 },
			["Sapmere|auberdine"] = { 7, 3, -4, 648 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 688 },
			["Kospi|auberdine"] = { 5, 4, 25, 692 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 924 },
			["Topshotta|everlook"] = { 2, 6, 3, 709 },
			["Zok|shekzeer"] = { 2, 6, 2, 697 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 876 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 793 },
			["Iratina|everlook"] = { 3, 4, 60, 1185 },
			["Scärlett|norushen"] = { 2, 5, -19, 1016 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 941 },
			["Sparâdräp|auberdine"] = { 1, 6, -19, 1199 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 774 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 691 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 794 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 1251 },
			["Marlk|shekzeer"] = { 2, 3, 6, 821 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 771 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 583 },
			["Orestis|norushen"] = { 0, 4, -16, 682 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 774 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 502 },
			["Xály|shekzeer"] = { 1, 3, 5, 528 },
			["Zellëph|auberdine"] = { 0, 4, -19, 1244 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 729 },
			["Cavernicola|garalon"] = { 0, 3, -21, 993 },
			["Chirdè|auberdine"] = { 0, 3, -12, 1173 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 735 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 1237 },
			["Kasuny|everlook"] = { 1, 2, 1, 993 },
			["Paloun|auberdine"] = { 2, 1, -1, 1269 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 1123 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 1123 },
			["Durianlover|shekzeer"] = { 2, 0, 8, 1173 },
			["Filmar|shekzeer"] = { 2, 0, 43, 993 },
			["Hopedieslast|shekzeer"] = { 2, 0, 11, 1173 },
			["Idontflinch|garalon"] = { 0, 2, 0, 633 },
			["Kream|shekzeer"] = { 2, 0, 30, 1132 },
			["Lácana|everlook"] = { 0, 2, -16, 993 },
			["Taillung|shekzeer"] = { 2, 0, 4, 654 },
			["Trolly|shekzeer"] = { 2, 0, 35, 1173 },
			["Xpu|everlook"] = { 2, 0, 4, 649 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 851 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 633 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 1260 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 1000 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 993 },
			["Mórdos|everlook"] = { 1, 0, 11, 1016 },
			["Nossy|hoptallus"] = { 0, 1, -4, 914 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1261 },
			["Zonya|hoptallus"] = { 0, 1, -5, 914 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 1036 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 902 },
			["Голмаш|flamegor"] = { 11, 8, 201, 813 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 813 },
			["Lazinka|norushen"] = { 5, 1, 50, 813 },
			["Batix|shekzeer"] = { 3, 0, 46, 921 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 921 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 920 },
		},
	},
}

