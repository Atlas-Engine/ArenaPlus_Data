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
	built = 1795546764,
	builtText = "2026-11-24 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Walida|spineshatter"] = { 10, 1, 70, 22 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 47 },
			["Dominus|spineshatter"] = { 6, 4, 19, 49 },
			["Bimbolo|spineshatter"] = { 5, 4, -13, 32 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 37 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 37 },
		},
		[3] = {
			["Scratm|spineshatter"] = { 5, 1, -6, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Walida|spineshatter"] = { 13, 2, 91, 22 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 47 },
			["Dominus|spineshatter"] = { 6, 4, 19, 49 },
			["Bimbolo|spineshatter"] = { 5, 4, -13, 32 },
			["Milevabog|spineshatter"] = { 2, 3, -13, 105 },
			["Obossan|spineshatter"] = { 2, 3, -2, 105 },
			["Doko|spineshatter"] = { 3, 1, 21, 105 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 37 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 37 },
			["Mblol|spineshatter"] = { 1, 0, 2, 165 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 150 },
		},
		[3] = {
			["Scratm|spineshatter"] = { 9, 1, 10, 58 },
			["Bonjohny|spineshatter"] = { 4, 0, 22, 105 },
			["Mdmaxlockx|spineshatter"] = { 4, 0, 20, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Walida|spineshatter"] = { 13, 2, 91, 22 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 47 },
			["Dominus|spineshatter"] = { 6, 4, 19, 49 },
			["Obossan|spineshatter"] = { 7, 3, 24, 105 },
			["Bimbolo|spineshatter"] = { 5, 4, -13, 32 },
			["Milevabog|spineshatter"] = { 5, 3, -3, 105 },
			["Doko|spineshatter"] = { 3, 1, 21, 105 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 37 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 37 },
			["Mblol|spineshatter"] = { 1, 0, 2, 165 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 150 },
		},
		[3] = {
			["Scratm|spineshatter"] = { 9, 1, 10, 58 },
			["Bonjohny|spineshatter"] = { 4, 0, 22, 105 },
			["Mdmaxlockx|spineshatter"] = { 4, 0, 20, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Walida|spineshatter"] = { 13, 2, 91, 22 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 47 },
			["Dominus|spineshatter"] = { 6, 4, 19, 49 },
			["Obossan|spineshatter"] = { 7, 3, 24, 105 },
			["Bimbolo|spineshatter"] = { 5, 4, -13, 32 },
			["Milevabog|spineshatter"] = { 5, 3, -3, 105 },
			["Doko|spineshatter"] = { 3, 1, 21, 105 },
			["Rhythmictwo|spineshatter"] = { 3, 0, 29, 37 },
			["Zlodey|spineshatter"] = { 3, 0, 29, 37 },
			["Mblol|spineshatter"] = { 1, 0, 2, 165 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 150 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 401 },
		},
		[3] = {
			["Scratm|spineshatter"] = { 9, 1, 10, 58 },
			["Bonjohny|spineshatter"] = { 4, 0, 22, 105 },
			["Mdmaxlockx|spineshatter"] = { 4, 0, 20, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 1236 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 1238 },
			["Bimbolo|spineshatter"] = { 25, 12, 131, 32 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 1171 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 1185 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 1185 },
			["Walida|spineshatter"] = { 13, 2, 91, 22 },
			["Milevabog|spineshatter"] = { 8, 5, 14, 105 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 1248 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 1248 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 1163 },
			["Сократ|anniversary"] = { 10, 3, 82, 1163 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 1379 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 1380 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 1171 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 1430 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 47 },
			["Dominus|spineshatter"] = { 6, 4, 19, 49 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 1365 },
			["Obossan|spineshatter"] = { 7, 3, 24, 105 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 1185 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 1185 },
			["Everlost|spineshatter"] = { 3, 5, -27, 1225 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 1225 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 1278 },
			["Fedow|spineshatter"] = { 6, 1, -20, 1341 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 1341 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 1199 },
			["Doko|spineshatter"] = { 3, 1, 21, 105 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 1365 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 1365 },
			["Quernx|spineshatter"] = { 2, 2, -14, 1277 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 1433 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 1276 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 1435 },
			["Rhythmictwo|spineshatter"] = { 3, 0, 29, 37 },
			["Zlodey|spineshatter"] = { 3, 0, 29, 37 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 1275 },
			["Mblol|spineshatter"] = { 1, 0, 2, 165 },
			["Naydral|spineshatter"] = { 0, 1, -14, 1185 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 150 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 401 },
		},
		[3] = {
			["Scratm|spineshatter"] = { 9, 1, 10, 58 },
			["Mdmaxlockx|spineshatter"] = { 6, 0, 28, 105 },
			["Bonjohny|spineshatter"] = { 4, 0, 22, 105 },
			["Bouncus|spineshatter"] = { 2, 0, 5, 1185 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 1238 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 1185 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 1244 },
		},
	},
}

