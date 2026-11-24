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
	built = 1795496363,
	builtText = "2026-11-23 11:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Amadeeus|spineshatter"] = { 9, 9, -25, 345 },
			["Izabelyrg|spineshatter"] = { 8, 10, -60, 331 },
			["Aethèl|spineshatter"] = { 8, 8, 9, 345 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 323 },
			["Сократ|anniversary"] = { 10, 3, 82, 323 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 331 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 345 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 345 },
			["Qpidq|spineshatter"] = { 1, 1, -14, 359 },
			["Naydral|spineshatter"] = { 0, 1, -14, 345 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 345 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 396 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 398 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 331 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 467 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 345 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 345 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 408 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 408 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 323 },
			["Сократ|anniversary"] = { 10, 3, 82, 323 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 539 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 540 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 331 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 590 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 525 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 345 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 345 },
			["Everlost|spineshatter"] = { 3, 5, -27, 385 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 384 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 438 },
			["Fedow|spineshatter"] = { 6, 1, -20, 501 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 501 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 359 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 533 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 525 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 525 },
			["Quernx|spineshatter"] = { 2, 2, -14, 437 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 593 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 436 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 595 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 435 },
			["Naydral|spineshatter"] = { 0, 1, -14, 345 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 345 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 398 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 591 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 345 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 404 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 396 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 398 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 331 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 467 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 345 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 345 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 408 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 408 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 323 },
			["Сократ|anniversary"] = { 10, 3, 82, 323 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 539 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 540 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 331 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 590 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 525 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 345 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 345 },
			["Everlost|spineshatter"] = { 3, 5, -27, 385 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 384 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 438 },
			["Fedow|spineshatter"] = { 6, 1, -20, 501 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 501 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 359 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 533 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 525 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 525 },
			["Quernx|spineshatter"] = { 2, 2, -14, 437 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 593 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 436 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 595 },
			["Reâper|spineshatter"] = { 1, 1, -12, 885 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 435 },
			["Léxington|spineshatter"] = { 0, 1, -19, 885 },
			["Naydral|spineshatter"] = { 0, 1, -14, 345 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 885 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 345 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 398 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 591 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 345 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 404 },
		},
	},
}

