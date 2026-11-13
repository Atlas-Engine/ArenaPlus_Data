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
	built = 1794599968,
	builtText = "2026-11-13 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dapqueue|spineshatter"] = { 7, 6, -9, 35 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 16 },
			["Yarz|spineshatter"] = { 4, 6, -59, 47 },
			["Jostar|thunderstrike"] = { 1, 3, -22, 30 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 34 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 34 },
			["Zulwi|thunderstrike"] = { 1, 3, -29, 31 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 32 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 11 },
		},
		[2] = {
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 25 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 23 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 24 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dapqueue|spineshatter"] = { 7, 6, -9, 35 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 16 },
			["Yarz|spineshatter"] = { 4, 6, -59, 47 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 30 },
			["Votrex|spineshatter"] = { 5, 0, 17, 165 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 31 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 34 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 34 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 32 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 11 },
		},
		[2] = {
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 25 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 23 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 24 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dapqueue|spineshatter"] = { 7, 6, -9, 35 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 16 },
			["Yarz|spineshatter"] = { 4, 6, -59, 47 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 184 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 30 },
			["Votrex|spineshatter"] = { 5, 0, 17, 165 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 31 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 34 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 34 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 32 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 11 },
		},
		[2] = {
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 25 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 23 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 24 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dapqueue|spineshatter"] = { 7, 6, -9, 35 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 16 },
			["Yarz|spineshatter"] = { 4, 6, -59, 47 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 184 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 30 },
			["Votrex|spineshatter"] = { 5, 0, 17, 165 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 31 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 34 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 34 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 32 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 11 },
		},
		[2] = {
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 25 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 23 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 24 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 1241 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 1240 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 1147 },
			["Сократ|anniversary"] = { 18, 14, 0, 1154 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 1224 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 1225 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 1308 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 1307 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 1353 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 1346 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 1373 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 1382 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 1228 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 1229 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 1245 },
			["Bellael|spineshatter"] = { 11, 7, 39, 1292 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 1363 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 1271 },
			["Primár|spineshatter"] = { 11, 7, -23, 1272 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 1364 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 35 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 1319 },
			["Garad|spineshatter"] = { 4, 8, -37, 1245 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 1319 },
			["Sylex|spineshatter"] = { 8, 4, 17, 1217 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 1245 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 16 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 1245 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 1262 },
			["Doób|spineshatter"] = { 6, 4, 18, 1261 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 1260 },
			["Yarz|spineshatter"] = { 4, 6, -59, 47 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 1275 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 1275 },
			["Maxj|spineshatter"] = { 3, 4, 4, 1302 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 184 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 1425 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 30 },
			["Votrex|spineshatter"] = { 5, 0, 17, 165 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 1425 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 31 },
			["Brubru|spineshatter"] = { 2, 2, 11, 1352 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 34 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 1348 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 34 },
			["Hordemustdie|spineshatter"] = { 1, 1, -12, 1425 },
			["Magicién|spineshatter"] = { 1, 1, -8, 1425 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 32 },
			["Forksache|spineshatter"] = { 0, 1, -23, 1376 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 11 },
		},
		[2] = {
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 25 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 23 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 24 },
		},
	},
}

