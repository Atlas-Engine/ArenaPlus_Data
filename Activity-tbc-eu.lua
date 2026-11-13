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

ns.ACTIVITY_BY_REGION["tbc-eu"] = {
	built = 1794578363,
	builtText = "2026-11-13 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 881 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 880 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 787 },
			["Сократ|anniversary"] = { 18, 14, 0, 794 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 864 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 865 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 948 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 947 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 993 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 986 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 1013 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 1022 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 868 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 868 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 885 },
			["Bellael|spineshatter"] = { 11, 7, 39, 932 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 1107 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 1003 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 911 },
			["Primár|spineshatter"] = { 11, 7, -23, 912 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 1109 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 1004 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 1150 },
			["Udrii|spineshatter"] = { 7, 6, -37, 1205 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 959 },
			["Garad|spineshatter"] = { 4, 8, -37, 885 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 959 },
			["Sylex|spineshatter"] = { 8, 4, 17, 857 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 885 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 1127 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 885 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 902 },
			["Doób|spineshatter"] = { 6, 4, 18, 901 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 900 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 915 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 915 },
			["Maxj|spineshatter"] = { 3, 4, 4, 941 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 1181 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 1200 },
			["Dewood|spineshatter"] = { 4, 1, -10, 1267 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 1065 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 1266 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 1065 },
			["Brubru|spineshatter"] = { 2, 2, 11, 992 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 988 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 1150 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 1065 },
			["Magicién|spineshatter"] = { 2, 1, 1, 1065 },
			["Iog|spineshatter"] = { 1, 1, -7, 1440 },
			["Doko|spineshatter"] = { 1, 0, 9, 1154 },
			["Forksache|spineshatter"] = { 0, 1, -23, 1016 },
			["Walida|spineshatter"] = { 1, 0, 9, 1154 },
		},
	},
}

