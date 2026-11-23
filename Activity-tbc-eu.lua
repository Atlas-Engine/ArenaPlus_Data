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
	built = 1795467571,
	builtText = "2026-11-23 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 6, 99, 46 },
			["Ellilol|thunderstrike"] = { 10, 8, 81, 46 },
			["Shadøwsfall|thunderstrike"] = { 10, 8, 81, 46 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 46 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 59 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 60 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 46 },
			["Fedow|spineshatter"] = { 6, 1, -20, 21 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 53 },
			["Predatorxd|spineshatter"] = { 5, 0, 13, 21 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 46 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 6, 99, 46 },
			["Ellilol|thunderstrike"] = { 10, 8, 81, 46 },
			["Shadøwsfall|thunderstrike"] = { 10, 8, 81, 46 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 46 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 59 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 60 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 111 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 46 },
			["Fedow|spineshatter"] = { 6, 1, -20, 21 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 21 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 53 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 46 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 46 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 113 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 115 },
		},
		[3] = {
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 111 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 6, 99, 46 },
			["Ellilol|thunderstrike"] = { 10, 8, 81, 46 },
			["Shadøwsfall|thunderstrike"] = { 10, 8, 81, 46 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 46 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 59 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 60 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 111 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 46 },
			["Fedow|spineshatter"] = { 6, 1, -20, 21 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 21 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 53 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 46 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 46 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 113 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 115 },
		},
		[3] = {
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 111 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 6, 99, 46 },
			["Ellilol|thunderstrike"] = { 10, 8, 81, 46 },
			["Shadøwsfall|thunderstrike"] = { 10, 8, 81, 46 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 46 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 59 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 60 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 111 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 46 },
			["Fedow|spineshatter"] = { 6, 1, -20, 21 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 21 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 53 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 46 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 46 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 113 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 115 },
			["Reâper|spineshatter"] = { 1, 1, -12, 406 },
			["Léxington|spineshatter"] = { 0, 1, -19, 406 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 406 },
		},
		[3] = {
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 111 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 18, 18, -24, 1271 },
			["Farsaroga|spineshatter"] = { 18, 18, -13, 1272 },
			["Bimbolo|spineshatter"] = { 15, 6, 99, 46 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 1246 },
			["Nennx|spineshatter"] = { 13, 7, 89, 1353 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 1246 },
			["Ellilol|thunderstrike"] = { 10, 8, 81, 46 },
			["Forksache|spineshatter"] = { 11, 7, -19, 1353 },
			["Shadøwsfall|thunderstrike"] = { 10, 8, 81, 46 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 1253 },
			["Hurtie|spineshatter"] = { 7, 8, 9, 1385 },
			["Zanven|spineshatter"] = { 7, 8, -22, 1385 },
			["Brubru|spineshatter"] = { 3, 9, -93, 1269 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 46 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 1270 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 59 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 60 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 111 },
			["Hööch|spineshatter"] = { 10, 0, 27, 1306 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 46 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 1388 },
			["Fedow|spineshatter"] = { 6, 1, -20, 21 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 21 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 53 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 46 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 46 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 113 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 115 },
			["Mblol|spineshatter"] = { 2, 1, -6, 1320 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 1320 },
			["Reâper|spineshatter"] = { 1, 1, -12, 406 },
			["Léxington|spineshatter"] = { 0, 1, -19, 406 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 1357 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 406 },
			["Vannah|spineshatter"] = { 1, 0, 5, 1357 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 1353 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 1365 },
			["Nennx|spineshatter"] = { 3, 0, 16, 1353 },
		},
		[3] = {
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 111 },
		},
	},
}

