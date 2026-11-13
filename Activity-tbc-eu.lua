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
	built = 1794585564,
	builtText = "2026-11-13 10:59 AM",
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
			["Quernx|spineshatter"] = { 19, 17, -72, 1001 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 1000 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 907 },
			["Сократ|anniversary"] = { 18, 14, 0, 914 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 984 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 985 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 1068 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 1067 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 1113 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 1106 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 1133 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 1142 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 988 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 988 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 1005 },
			["Bellael|spineshatter"] = { 11, 7, 39, 1052 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 1227 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 1123 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 1031 },
			["Primár|spineshatter"] = { 11, 7, -23, 1032 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 1229 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 1124 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 1270 },
			["Udrii|spineshatter"] = { 7, 6, -37, 1325 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 1079 },
			["Garad|spineshatter"] = { 4, 8, -37, 1005 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 1079 },
			["Sylex|spineshatter"] = { 8, 4, 17, 977 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 1005 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 1247 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 1005 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 1022 },
			["Doób|spineshatter"] = { 6, 4, 18, 1021 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 1020 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 1035 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 1035 },
			["Maxj|spineshatter"] = { 3, 4, 4, 1062 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 1301 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 1320 },
			["Dewood|spineshatter"] = { 4, 1, -10, 1387 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 1185 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 1386 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 1185 },
			["Brubru|spineshatter"] = { 2, 2, 11, 1112 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 1108 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 1270 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 1185 },
			["Magicién|spineshatter"] = { 2, 1, 1, 1185 },
			["Doko|spineshatter"] = { 1, 0, 9, 1274 },
			["Forksache|spineshatter"] = { 0, 1, -23, 1136 },
			["Walida|spineshatter"] = { 1, 0, 9, 1274 },
		},
	},
}

