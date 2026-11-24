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
	built = 1795485569,
	builtText = "2026-11-23 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Amadeeus|spineshatter"] = { 9, 9, -25, 165 },
			["Izabelyrg|spineshatter"] = { 8, 10, -60, 151 },
			["Aethèl|spineshatter"] = { 8, 8, 9, 165 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 143 },
			["Сократ|anniversary"] = { 10, 3, 82, 143 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 151 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 165 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 165 },
			["Qpidq|spineshatter"] = { 1, 1, -14, 179 },
			["Naydral|spineshatter"] = { 0, 1, -14, 165 },
		},
		[2] = {
			["Matamaplace|thunderstrike"] = { 1, 10, -138, 63 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 165 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 216 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 219 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 151 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 288 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 165 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 165 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 228 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 228 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 143 },
			["Сократ|anniversary"] = { 10, 3, 82, 143 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 359 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 360 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 151 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 345 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 165 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 165 },
			["Everlost|spineshatter"] = { 3, 5, -27, 205 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 205 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 258 },
			["Fedow|spineshatter"] = { 6, 1, -20, 321 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 179 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 353 },
			["Predatorxd|spineshatter"] = { 5, 0, 13, 321 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 345 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 345 },
			["Quernx|spineshatter"] = { 2, 2, -14, 257 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 256 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 255 },
			["Naydral|spineshatter"] = { 0, 1, -14, 165 },
		},
		[2] = {
			["Matamaplace|thunderstrike"] = { 1, 10, -138, 63 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 165 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 218 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 165 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 224 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 216 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 219 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 151 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 288 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 165 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 165 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 228 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 228 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 143 },
			["Сократ|anniversary"] = { 10, 3, 82, 143 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 359 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 360 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 151 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 410 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 345 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 165 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 165 },
			["Everlost|spineshatter"] = { 3, 5, -27, 205 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 205 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 258 },
			["Fedow|spineshatter"] = { 6, 1, -20, 321 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 321 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 179 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 353 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 345 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 345 },
			["Quernx|spineshatter"] = { 2, 2, -14, 257 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 413 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 256 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 415 },
			["Reâper|spineshatter"] = { 1, 1, -12, 705 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 255 },
			["Léxington|spineshatter"] = { 0, 1, -19, 705 },
			["Naydral|spineshatter"] = { 0, 1, -14, 165 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 705 },
		},
		[2] = {
			["Matamaplace|thunderstrike"] = { 1, 10, -138, 63 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 165 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 218 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 411 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 165 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 224 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 216 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 219 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 151 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 288 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 165 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 165 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 228 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 228 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 143 },
			["Сократ|anniversary"] = { 10, 3, 82, 143 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 359 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 360 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 151 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 410 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 345 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 165 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 165 },
			["Everlost|spineshatter"] = { 3, 5, -27, 205 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 205 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 258 },
			["Fedow|spineshatter"] = { 6, 1, -20, 321 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 321 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 179 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 353 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 345 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 345 },
			["Quernx|spineshatter"] = { 2, 2, -14, 257 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 413 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 256 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 415 },
			["Reâper|spineshatter"] = { 1, 1, -12, 705 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 255 },
			["Léxington|spineshatter"] = { 0, 1, -19, 705 },
			["Naydral|spineshatter"] = { 0, 1, -14, 165 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 705 },
		},
		[2] = {
			["Matamaplace|thunderstrike"] = { 1, 10, -138, 63 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 165 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 218 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 411 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 165 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 224 },
		},
	},
}

