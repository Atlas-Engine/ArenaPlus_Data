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
	built = 1794589164,
	builtText = "2026-11-13 11:59 AM",
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
			["Quernx|spineshatter"] = { 19, 17, -72, 1061 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 1060 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 967 },
			["Сократ|anniversary"] = { 18, 14, 0, 974 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 1044 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 1045 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 1128 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 1127 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 1173 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 1166 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 1193 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 1202 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 1048 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 1048 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 1065 },
			["Bellael|spineshatter"] = { 11, 7, 39, 1112 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 1287 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 1183 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 1091 },
			["Primár|spineshatter"] = { 11, 7, -23, 1092 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 1289 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 1184 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 1330 },
			["Udrii|spineshatter"] = { 7, 6, -37, 1385 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 1139 },
			["Garad|spineshatter"] = { 4, 8, -37, 1065 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 1139 },
			["Sylex|spineshatter"] = { 8, 4, 17, 1037 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 1065 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 1307 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 1065 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 1082 },
			["Doób|spineshatter"] = { 6, 4, 18, 1081 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 1080 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 1095 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 1095 },
			["Maxj|spineshatter"] = { 3, 4, 4, 1122 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 1361 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 1380 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 1245 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 1245 },
			["Brubru|spineshatter"] = { 2, 2, 11, 1172 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 1168 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 1330 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 1245 },
			["Magicién|spineshatter"] = { 2, 1, 1, 1245 },
			["Doko|spineshatter"] = { 1, 0, 9, 1334 },
			["Forksache|spineshatter"] = { 0, 1, -23, 1196 },
			["Walida|spineshatter"] = { 1, 0, 9, 1334 },
		},
	},
}

