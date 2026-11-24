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
	built = 1795543161,
	builtText = "2026-11-24 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Milevabog|spineshatter"] = { 2, 3, -13, 45 },
			["Obossan|spineshatter"] = { 2, 3, -2, 45 },
			["Doko|spineshatter"] = { 3, 1, 21, 45 },
			["Walida|spineshatter"] = { 3, 1, 21, 45 },
		},
		[3] = {
			["Bonjohny|spineshatter"] = { 4, 0, 22, 45 },
			["Mdmaxlockx|spineshatter"] = { 4, 0, 20, 45 },
			["Scratm|spineshatter"] = { 4, 0, 16, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Milevabog|spineshatter"] = { 2, 3, -13, 45 },
			["Obossan|spineshatter"] = { 2, 3, -2, 45 },
			["Doko|spineshatter"] = { 3, 1, 21, 45 },
			["Walida|spineshatter"] = { 3, 1, 21, 45 },
			["Mblol|spineshatter"] = { 1, 0, 2, 105 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 90 },
		},
		[3] = {
			["Bonjohny|spineshatter"] = { 4, 0, 22, 45 },
			["Mdmaxlockx|spineshatter"] = { 4, 0, 20, 45 },
			["Scratm|spineshatter"] = { 4, 0, 16, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 7, 3, 24, 45 },
			["Milevabog|spineshatter"] = { 5, 3, -3, 45 },
			["Doko|spineshatter"] = { 3, 1, 21, 45 },
			["Walida|spineshatter"] = { 3, 1, 21, 45 },
			["Mblol|spineshatter"] = { 1, 0, 2, 105 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 90 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 332 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 341 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 328 },
		},
		[3] = {
			["Bonjohny|spineshatter"] = { 4, 0, 22, 45 },
			["Mdmaxlockx|spineshatter"] = { 4, 0, 20, 45 },
			["Scratm|spineshatter"] = { 4, 0, 16, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 7, 3, 24, 45 },
			["Milevabog|spineshatter"] = { 5, 3, -3, 45 },
			["Doko|spineshatter"] = { 3, 1, 21, 45 },
			["Walida|spineshatter"] = { 3, 1, 21, 45 },
			["Mblol|spineshatter"] = { 1, 0, 2, 105 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 90 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 332 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 341 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 328 },
		},
		[3] = {
			["Bonjohny|spineshatter"] = { 4, 0, 22, 45 },
			["Mdmaxlockx|spineshatter"] = { 4, 0, 20, 45 },
			["Scratm|spineshatter"] = { 4, 0, 16, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 1176 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 1178 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 1111 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 1247 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 1125 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 1125 },
			["Milevabog|spineshatter"] = { 8, 5, 14, 45 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 1188 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 1188 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 1103 },
			["Сократ|anniversary"] = { 10, 3, 82, 1103 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 1319 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 1320 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 1111 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 1370 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 1305 },
			["Obossan|spineshatter"] = { 7, 3, 24, 45 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 1125 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 1125 },
			["Everlost|spineshatter"] = { 3, 5, -27, 1165 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 1164 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 1218 },
			["Fedow|spineshatter"] = { 6, 1, -20, 1281 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 1281 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 1139 },
			["Doko|spineshatter"] = { 3, 1, 21, 45 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 1305 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 1305 },
			["Quernx|spineshatter"] = { 2, 2, -14, 1217 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 1373 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 1216 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 1375 },
			["Walida|spineshatter"] = { 3, 1, 21, 45 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 1215 },
			["Mblol|spineshatter"] = { 1, 0, 2, 105 },
			["Naydral|spineshatter"] = { 0, 1, -14, 1125 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 90 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 332 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 341 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 328 },
		},
		[3] = {
			["Mdmaxlockx|spineshatter"] = { 6, 0, 28, 45 },
			["Bonjohny|spineshatter"] = { 4, 0, 22, 45 },
			["Scratm|spineshatter"] = { 4, 0, 16, 45 },
			["Bouncus|spineshatter"] = { 2, 0, 5, 1125 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 1178 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 1125 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 1184 },
		},
	},
}

