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
	built = 1795471162,
	builtText = "2026-11-23 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 18 },
			["Bimbolo|spineshatter"] = { 5, 2, 45, 47 },
			["Aethèl|spineshatter"] = { 1, 1, -2, 58 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 15 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 20, 8, 144, 47 },
			["Ellilol|thunderstrike"] = { 10, 8, 81, 105 },
			["Shadøwsfall|thunderstrike"] = { 10, 8, 81, 105 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 105 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 119 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 120 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 170 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 105 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 18 },
			["Fedow|spineshatter"] = { 6, 1, -20, 81 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 81 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 113 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 105 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 105 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 173 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 175 },
			["Aethèl|spineshatter"] = { 1, 1, -2, 58 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 15 },
		},
		[3] = {
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 171 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 20, 8, 144, 47 },
			["Ellilol|thunderstrike"] = { 10, 8, 81, 105 },
			["Shadøwsfall|thunderstrike"] = { 10, 8, 81, 105 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 105 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 119 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 120 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 170 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 105 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 18 },
			["Fedow|spineshatter"] = { 6, 1, -20, 81 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 81 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 113 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 105 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 105 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 173 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 175 },
			["Aethèl|spineshatter"] = { 1, 1, -2, 58 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 15 },
		},
		[3] = {
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 171 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 20, 8, 144, 47 },
			["Ellilol|thunderstrike"] = { 10, 8, 81, 105 },
			["Shadøwsfall|thunderstrike"] = { 10, 8, 81, 105 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 105 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 119 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 120 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 170 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 105 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 18 },
			["Fedow|spineshatter"] = { 6, 1, -20, 81 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 81 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 113 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 105 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 105 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 173 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 175 },
			["Aethèl|spineshatter"] = { 1, 1, -2, 58 },
			["Reâper|spineshatter"] = { 1, 1, -12, 465 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 15 },
			["Léxington|spineshatter"] = { 0, 1, -19, 465 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 465 },
		},
		[3] = {
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 171 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Farsaroga|spineshatter"] = { 18, 18, -13, 1332 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 47 },
			["Everlost|spineshatter"] = { 10, 14, -37, 1331 },
			["Bagladybetty|spineshatter"] = { 10, 12, 13, 18 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 1306 },
			["Nennx|spineshatter"] = { 13, 7, 89, 1413 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 1306 },
			["Ellilol|thunderstrike"] = { 10, 8, 81, 105 },
			["Forksache|spineshatter"] = { 11, 7, -19, 1413 },
			["Shadøwsfall|thunderstrike"] = { 10, 8, 81, 105 },
			["Brubru|spineshatter"] = { 3, 9, -93, 1329 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 105 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 1330 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 119 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 120 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 170 },
			["Hööch|spineshatter"] = { 10, 0, 27, 1365 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 105 },
			["Fedow|spineshatter"] = { 6, 1, -20, 81 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 81 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 113 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 105 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 105 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 173 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 175 },
			["Mblol|spineshatter"] = { 2, 1, -6, 1380 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 1380 },
			["Aethèl|spineshatter"] = { 1, 1, -2, 58 },
			["Reâper|spineshatter"] = { 1, 1, -12, 465 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 15 },
			["Léxington|spineshatter"] = { 0, 1, -19, 465 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 1417 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 465 },
			["Vannah|spineshatter"] = { 1, 0, 5, 1417 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 1413 },
			["Nennx|spineshatter"] = { 3, 0, 16, 1413 },
			["Ironhound|spineshatter"] = { 1, 0, 5, 1424 },
		},
		[3] = {
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 171 },
		},
	},
}

