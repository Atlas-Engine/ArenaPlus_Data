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
	built = 1795492761,
	builtText = "2026-11-23 10:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 11, 14, -25, 336 },
			["Shadøwsfall|thunderstrike"] = { 11, 14, -25, 338 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 285 },
			["Izabelyrg|spineshatter"] = { 8, 10, -60, 271 },
			["Aethèl|spineshatter"] = { 8, 8, 9, 285 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 348 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 348 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 263 },
			["Сократ|anniversary"] = { 10, 3, 82, 263 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 271 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 285 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 285 },
			["Everlost|spineshatter"] = { 3, 5, -27, 325 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 324 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 299 },
			["Naydral|spineshatter"] = { 0, 1, -14, 285 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 285 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 338 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 285 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 344 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 336 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 338 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 271 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 407 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 285 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 285 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 348 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 348 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 263 },
			["Сократ|anniversary"] = { 10, 3, 82, 263 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 479 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 480 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 271 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 530 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 465 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 285 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 285 },
			["Everlost|spineshatter"] = { 3, 5, -27, 325 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 324 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 378 },
			["Fedow|spineshatter"] = { 6, 1, -20, 441 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 441 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 299 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 473 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 465 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 465 },
			["Quernx|spineshatter"] = { 2, 2, -14, 377 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 533 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 376 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 535 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 375 },
			["Naydral|spineshatter"] = { 0, 1, -14, 285 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 285 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 338 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 531 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 285 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 344 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 336 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 338 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 271 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 407 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 285 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 285 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 348 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 348 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 263 },
			["Сократ|anniversary"] = { 10, 3, 82, 263 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 479 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 480 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 271 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 530 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 465 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 285 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 285 },
			["Everlost|spineshatter"] = { 3, 5, -27, 325 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 324 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 378 },
			["Fedow|spineshatter"] = { 6, 1, -20, 441 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 441 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 299 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 473 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 465 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 465 },
			["Quernx|spineshatter"] = { 2, 2, -14, 377 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 533 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 376 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 535 },
			["Reâper|spineshatter"] = { 1, 1, -12, 825 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 375 },
			["Léxington|spineshatter"] = { 0, 1, -19, 825 },
			["Naydral|spineshatter"] = { 0, 1, -14, 285 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 825 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 285 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 338 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 531 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 285 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 344 },
		},
	},
}

