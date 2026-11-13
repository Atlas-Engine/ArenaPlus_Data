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
	built = 1794592767,
	builtText = "2026-11-13 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Votrex|spineshatter"] = { 5, 0, 17, 45 },
			["Jostar|thunderstrike"] = { 0, 1, -6, 45 },
			["Zulwi|thunderstrike"] = { 0, 1, -7, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 64 },
			["Votrex|spineshatter"] = { 5, 0, 17, 45 },
			["Jostar|thunderstrike"] = { 0, 1, -6, 45 },
			["Zulwi|thunderstrike"] = { 0, 1, -7, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 64 },
			["Votrex|spineshatter"] = { 5, 0, 17, 45 },
			["Jostar|thunderstrike"] = { 0, 1, -6, 45 },
			["Zulwi|thunderstrike"] = { 0, 1, -7, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 64 },
			["Votrex|spineshatter"] = { 5, 0, 17, 45 },
			["Jostar|thunderstrike"] = { 0, 1, -6, 45 },
			["Zulwi|thunderstrike"] = { 0, 1, -7, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 1121 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 1120 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 1027 },
			["Сократ|anniversary"] = { 18, 14, 0, 1034 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 1104 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 1105 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 1188 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 1187 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 1233 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 1226 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 1253 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 1262 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 1108 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 1109 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 1125 },
			["Bellael|spineshatter"] = { 11, 7, 39, 1172 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 1347 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 1243 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 1151 },
			["Primár|spineshatter"] = { 11, 7, -23, 1152 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 1349 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 1244 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 1199 },
			["Garad|spineshatter"] = { 4, 8, -37, 1125 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 1199 },
			["Sylex|spineshatter"] = { 8, 4, 17, 1097 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 1125 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 1367 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 1125 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 1142 },
			["Doób|spineshatter"] = { 6, 4, 18, 1141 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 1140 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 1155 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 1155 },
			["Maxj|spineshatter"] = { 3, 4, 4, 1182 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 1421 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 64 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 1305 },
			["Votrex|spineshatter"] = { 5, 0, 17, 45 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 1305 },
			["Brubru|spineshatter"] = { 2, 2, 11, 1232 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 1228 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 1390 },
			["Fedowjr|spineshatter"] = { 3, 0, 10, 1390 },
			["Hordemustdie|spineshatter"] = { 1, 1, -12, 1305 },
			["Magicién|spineshatter"] = { 1, 1, -8, 1305 },
			["Doko|spineshatter"] = { 1, 0, 9, 1394 },
			["Forksache|spineshatter"] = { 0, 1, -23, 1256 },
			["Jostar|thunderstrike"] = { 0, 1, -6, 45 },
			["Walida|spineshatter"] = { 1, 0, 9, 1394 },
			["Zulwi|thunderstrike"] = { 0, 1, -7, 45 },
		},
	},
}

