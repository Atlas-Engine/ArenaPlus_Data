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
	built = 1795550366,
	builtText = "2026-11-24 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Milevabog|spineshatter"] = { 9, 17, -127, 6 },
			["Doko|spineshatter"] = { 10, 1, 70, 24 },
			["Firaa|spineshatter"] = { 5, 3, -21, 41 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 34 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 33 },
			["Pinkwidow|spineshatter"] = { 1, 0, 10, 53 },
		},
		[2] = {
			["Bonjohny|spineshatter"] = { 6, 1, 23, 33 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 34 },
		},
		[3] = {
			["Bonjohny|spineshatter"] = { 5, 1, 13, 33 },
			["Mdmaxlockx|spineshatter"] = { 5, 1, 9, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Milevabog|spineshatter"] = { 11, 20, -140, 6 },
			["Doko|spineshatter"] = { 13, 2, 91, 24 },
			["Walida|spineshatter"] = { 13, 2, 91, 82 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 107 },
			["Dominus|spineshatter"] = { 6, 4, 19, 109 },
			["Bimbolo|spineshatter"] = { 5, 4, -13, 92 },
			["Firaa|spineshatter"] = { 5, 3, -21, 41 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 34 },
			["Obossan|spineshatter"] = { 2, 3, -2, 165 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 33 },
			["Praysx|spineshatter"] = { 0, 2, -41, 65 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 97 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 97 },
			["Pinkwidow|spineshatter"] = { 1, 0, 10, 53 },
		},
		[2] = {
			["Bonjohny|spineshatter"] = { 6, 1, 23, 33 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 34 },
			["Praysx|spineshatter"] = { 6, 1, 17, 65 },
		},
		[3] = {
			["Bonjohny|spineshatter"] = { 9, 1, 35, 33 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 34 },
			["Scratm|spineshatter"] = { 9, 1, 10, 118 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Milevabog|spineshatter"] = { 11, 20, -140, 6 },
			["Doko|spineshatter"] = { 13, 2, 91, 24 },
			["Walida|spineshatter"] = { 13, 2, 91, 82 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 107 },
			["Dominus|spineshatter"] = { 6, 4, 19, 109 },
			["Bimbolo|spineshatter"] = { 5, 4, -13, 92 },
			["Firaa|spineshatter"] = { 5, 3, -21, 41 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 34 },
			["Obossan|spineshatter"] = { 2, 3, -2, 165 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 33 },
			["Praysx|spineshatter"] = { 0, 2, -41, 65 },
			["Rhythmictwo|spineshatter"] = { 2, 0, 18, 97 },
			["Zlodey|spineshatter"] = { 2, 0, 18, 97 },
			["Mblol|spineshatter"] = { 1, 0, 2, 225 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 210 },
			["Pinkwidow|spineshatter"] = { 1, 0, 10, 53 },
		},
		[2] = {
			["Bonjohny|spineshatter"] = { 6, 1, 23, 33 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 34 },
			["Praysx|spineshatter"] = { 6, 1, 17, 65 },
		},
		[3] = {
			["Bonjohny|spineshatter"] = { 9, 1, 35, 33 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 34 },
			["Scratm|spineshatter"] = { 9, 1, 10, 118 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Milevabog|spineshatter"] = { 14, 20, -130, 6 },
			["Doko|spineshatter"] = { 13, 2, 91, 24 },
			["Walida|spineshatter"] = { 13, 2, 91, 82 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 107 },
			["Dominus|spineshatter"] = { 6, 4, 19, 109 },
			["Obossan|spineshatter"] = { 7, 3, 24, 165 },
			["Bimbolo|spineshatter"] = { 5, 4, -13, 92 },
			["Firaa|spineshatter"] = { 5, 3, -21, 41 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 34 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 33 },
			["Rhythmictwo|spineshatter"] = { 3, 0, 29, 97 },
			["Zlodey|spineshatter"] = { 3, 0, 29, 97 },
			["Praysx|spineshatter"] = { 0, 2, -41, 65 },
			["Mblol|spineshatter"] = { 1, 0, 2, 225 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 210 },
			["Pinkwidow|spineshatter"] = { 1, 0, 10, 53 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 461 },
		},
		[2] = {
			["Bonjohny|spineshatter"] = { 6, 1, 23, 33 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 34 },
			["Praysx|spineshatter"] = { 6, 1, 17, 65 },
		},
		[3] = {
			["Bonjohny|spineshatter"] = { 9, 1, 35, 33 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 34 },
			["Scratm|spineshatter"] = { 9, 1, 10, 118 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 1296 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 1299 },
			["Milevabog|spineshatter"] = { 17, 22, -113, 6 },
			["Bimbolo|spineshatter"] = { 25, 12, 131, 92 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 1231 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 1245 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 1245 },
			["Doko|spineshatter"] = { 13, 2, 91, 24 },
			["Walida|spineshatter"] = { 13, 2, 91, 82 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 1308 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 1308 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 1223 },
			["Сократ|anniversary"] = { 10, 3, 82, 1223 },
			["Pinkwidow|spineshatter"] = { 4, 8, -34, 53 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 1439 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 1440 },
			["Dapqueue|spineshatter"] = { 6, 4, 30, 107 },
			["Dominus|spineshatter"] = { 6, 4, 19, 109 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 1425 },
			["Obossan|spineshatter"] = { 7, 3, 24, 165 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 1245 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 1245 },
			["Everlost|spineshatter"] = { 3, 5, -27, 1285 },
			["Firaa|spineshatter"] = { 5, 3, -21, 41 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 1285 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 1338 },
			["Fedow|spineshatter"] = { 6, 1, -20, 1401 },
			["Mdmaxlockx|spineshatter"] = { 2, 4, -5, 34 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 1259 },
			["Predatorxd|spineshatter"] = { 5, 0, 13, 1401 },
			["Bonjohny|spineshatter"] = { 2, 2, -35, 33 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 1425 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 1425 },
			["Quernx|spineshatter"] = { 2, 2, -14, 1337 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 1336 },
			["Rhythmictwo|spineshatter"] = { 3, 0, 29, 97 },
			["Zlodey|spineshatter"] = { 3, 0, 29, 97 },
			["Praysx|spineshatter"] = { 0, 2, -41, 65 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 1335 },
			["Mblol|spineshatter"] = { 1, 0, 2, 225 },
			["Naydral|spineshatter"] = { 0, 1, -14, 1245 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 210 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 461 },
		},
		[2] = {
			["Bonjohny|spineshatter"] = { 6, 1, 23, 33 },
			["Mdmaxlockx|spineshatter"] = { 6, 1, 22, 34 },
			["Praysx|spineshatter"] = { 6, 1, 17, 65 },
		},
		[3] = {
			["Bonjohny|spineshatter"] = { 9, 1, 35, 33 },
			["Mdmaxlockx|spineshatter"] = { 9, 1, 29, 34 },
			["Scratm|spineshatter"] = { 9, 1, 10, 118 },
			["Bouncus|spineshatter"] = { 2, 0, 5, 1245 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 1298 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 1245 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 1304 },
		},
	},
}

