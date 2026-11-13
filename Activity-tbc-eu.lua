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
	built = 1794581979,
	builtText = "2026-11-13 09:59 AM",
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
			["Quernx|spineshatter"] = { 19, 17, -72, 942 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 940 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 847 },
			["Сократ|anniversary"] = { 18, 14, 0, 854 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 925 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 925 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 1008 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 1007 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 1054 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 1046 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 1073 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 1082 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 928 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 929 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 946 },
			["Bellael|spineshatter"] = { 11, 7, 39, 993 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 1167 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 1064 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 971 },
			["Primár|spineshatter"] = { 11, 7, -23, 972 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 1169 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 1064 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 1211 },
			["Udrii|spineshatter"] = { 7, 6, -37, 1265 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 1019 },
			["Garad|spineshatter"] = { 4, 8, -37, 946 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 1019 },
			["Sylex|spineshatter"] = { 8, 4, 17, 917 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 946 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 1187 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 946 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 962 },
			["Doób|spineshatter"] = { 6, 4, 18, 962 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 960 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 976 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 976 },
			["Maxj|spineshatter"] = { 3, 4, 4, 1002 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 1241 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 1261 },
			["Dewood|spineshatter"] = { 4, 1, -10, 1327 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 1126 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 1326 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 1126 },
			["Brubru|spineshatter"] = { 2, 2, 11, 1052 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 1048 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 1211 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 1126 },
			["Magicién|spineshatter"] = { 2, 1, 1, 1126 },
			["Doko|spineshatter"] = { 1, 0, 9, 1214 },
			["Forksache|spineshatter"] = { 0, 1, -23, 1076 },
			["Walida|spineshatter"] = { 1, 0, 9, 1214 },
		},
	},
}

