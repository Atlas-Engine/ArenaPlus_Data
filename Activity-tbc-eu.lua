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
	built = 1795474760,
	builtText = "2026-11-23 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 11, 14, -25, 36 },
			["Shadøwsfall|thunderstrike"] = { 11, 14, -25, 38 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 48 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 48 },
			["Everlost|spineshatter"] = { 3, 5, -27, 25 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 24 },
			["Qpidq|spineshatter"] = { 3, 1, 13, 22 },
		},
		[3] = {
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 38 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 44 },
			["Vemma|spineshatter"] = { 0, 1, -8, 23 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 36 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 38 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 107 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 48 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 48 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 165 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 179 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 180 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 165 },
			["Everlost|spineshatter"] = { 3, 5, -27, 25 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 24 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 78 },
			["Fedow|spineshatter"] = { 6, 1, -20, 141 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 173 },
			["Predatorxd|spineshatter"] = { 5, 0, 13, 141 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 165 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 165 },
			["Qpidq|spineshatter"] = { 3, 1, 13, 22 },
			["Quernx|spineshatter"] = { 2, 2, -14, 77 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 76 },
			["Aethèl|spineshatter"] = { 1, 1, -2, 118 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 75 },
		},
		[3] = {
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 38 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 44 },
			["Vemma|spineshatter"] = { 0, 1, -8, 23 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 36 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 38 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 107 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 48 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 48 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 165 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 179 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 180 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 230 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 165 },
			["Everlost|spineshatter"] = { 3, 5, -27, 25 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 24 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 78 },
			["Fedow|spineshatter"] = { 6, 1, -20, 141 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 141 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 173 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 165 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 165 },
			["Qpidq|spineshatter"] = { 3, 1, 13, 22 },
			["Quernx|spineshatter"] = { 2, 2, -14, 77 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 233 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 76 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 235 },
			["Aethèl|spineshatter"] = { 1, 1, -2, 118 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 75 },
		},
		[3] = {
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 38 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 231 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 44 },
			["Vemma|spineshatter"] = { 0, 1, -8, 23 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 36 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 38 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 107 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 48 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 48 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 165 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 179 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 180 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 230 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 165 },
			["Everlost|spineshatter"] = { 3, 5, -27, 25 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 24 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 78 },
			["Fedow|spineshatter"] = { 6, 1, -20, 141 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 141 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 173 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 165 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 165 },
			["Qpidq|spineshatter"] = { 3, 1, 13, 22 },
			["Quernx|spineshatter"] = { 2, 2, -14, 77 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 233 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 76 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 235 },
			["Aethèl|spineshatter"] = { 1, 1, -2, 118 },
			["Reâper|spineshatter"] = { 1, 1, -12, 525 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 75 },
			["Léxington|spineshatter"] = { 0, 1, -19, 525 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 525 },
		},
		[3] = {
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 38 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 231 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 44 },
			["Vemma|spineshatter"] = { 0, 1, -8, 23 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 36 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 38 },
			["Farsaroga|spineshatter"] = { 18, 18, -13, 1392 },
			["Everlost|spineshatter"] = { 13, 19, -64, 25 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 107 },
			["Bagladybetty|spineshatter"] = { 10, 12, 13, 78 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 1366 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 48 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 48 },
			["Brubru|spineshatter"] = { 3, 9, -93, 1389 },
			["Izabelyrg|spineshatter"] = { 10, 2, 63, 165 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 1390 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 179 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 180 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 230 },
			["Hööch|spineshatter"] = { 10, 0, 27, 1425 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 165 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 24 },
			["Fedow|spineshatter"] = { 6, 1, -20, 141 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 141 },
			["Systemhack|spineshatter"] = { 6, 1, 13, 1366 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 173 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 165 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 165 },
			["Qpidq|spineshatter"] = { 3, 1, 13, 22 },
			["Quernx|spineshatter"] = { 2, 2, -14, 77 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 233 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 76 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 235 },
			["Mblol|spineshatter"] = { 2, 1, -6, 1440 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 1440 },
			["Aethèl|spineshatter"] = { 1, 1, -2, 118 },
			["Reâper|spineshatter"] = { 1, 1, -12, 525 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 75 },
			["Léxington|spineshatter"] = { 0, 1, -19, 525 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 525 },
		},
		[3] = {
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 38 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 231 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 44 },
			["Vemma|spineshatter"] = { 0, 1, -8, 23 },
		},
	},
}

