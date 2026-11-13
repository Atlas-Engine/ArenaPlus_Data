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
	built = 1794596364,
	builtText = "2026-11-13 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 124 },
			["Votrex|spineshatter"] = { 5, 0, 17, 105 },
			["Jostar|thunderstrike"] = { 0, 1, -6, 105 },
			["Zulwi|thunderstrike"] = { 0, 1, -7, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 124 },
			["Votrex|spineshatter"] = { 5, 0, 17, 105 },
			["Jostar|thunderstrike"] = { 0, 1, -6, 105 },
			["Zulwi|thunderstrike"] = { 0, 1, -7, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 124 },
			["Votrex|spineshatter"] = { 5, 0, 17, 105 },
			["Jostar|thunderstrike"] = { 0, 1, -6, 105 },
			["Zulwi|thunderstrike"] = { 0, 1, -7, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 1181 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 1180 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 1087 },
			["Сократ|anniversary"] = { 18, 14, 0, 1094 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 1164 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 1165 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 1248 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 1247 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 1293 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 1286 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 1313 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 1322 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 1168 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 1168 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 1185 },
			["Bellael|spineshatter"] = { 11, 7, 39, 1232 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 1407 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 1303 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 1211 },
			["Primár|spineshatter"] = { 11, 7, -23, 1212 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 1409 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 1304 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 1259 },
			["Garad|spineshatter"] = { 4, 8, -37, 1185 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 1259 },
			["Sylex|spineshatter"] = { 8, 4, 17, 1157 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 1185 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 1427 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 1185 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 1202 },
			["Doób|spineshatter"] = { 6, 4, 18, 1201 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 1200 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 1215 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 1215 },
			["Maxj|spineshatter"] = { 3, 4, 4, 1242 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 124 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 1365 },
			["Votrex|spineshatter"] = { 5, 0, 17, 105 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 1365 },
			["Brubru|spineshatter"] = { 2, 2, 11, 1292 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 1288 },
			["Hordemustdie|spineshatter"] = { 1, 1, -12, 1365 },
			["Magicién|spineshatter"] = { 1, 1, -8, 1365 },
			["Forksache|spineshatter"] = { 0, 1, -23, 1316 },
			["Jostar|thunderstrike"] = { 0, 1, -6, 105 },
			["Zulwi|thunderstrike"] = { 0, 1, -7, 105 },
		},
	},
}

