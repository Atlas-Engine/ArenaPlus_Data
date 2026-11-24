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
	built = 1795499962,
	builtText = "2026-11-24 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 456 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 458 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 391 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 527 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 405 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 405 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 468 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 468 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 383 },
			["Сократ|anniversary"] = { 10, 3, 82, 383 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 599 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 600 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 391 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 650 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 585 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 405 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 405 },
			["Everlost|spineshatter"] = { 3, 5, -27, 445 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 444 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 498 },
			["Fedow|spineshatter"] = { 6, 1, -20, 561 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 561 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 419 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 593 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 585 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 585 },
			["Quernx|spineshatter"] = { 2, 2, -14, 497 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 653 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 496 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 655 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 495 },
			["Naydral|spineshatter"] = { 0, 1, -14, 405 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 405 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 458 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 651 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 405 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 464 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 456 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 458 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 391 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 527 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 405 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 405 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 468 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 468 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 383 },
			["Сократ|anniversary"] = { 10, 3, 82, 383 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 599 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 600 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 391 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 650 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 585 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 405 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 405 },
			["Everlost|spineshatter"] = { 3, 5, -27, 445 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 444 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 498 },
			["Fedow|spineshatter"] = { 6, 1, -20, 561 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 561 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 419 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 593 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 585 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 585 },
			["Quernx|spineshatter"] = { 2, 2, -14, 497 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 653 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 496 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 655 },
			["Reâper|spineshatter"] = { 1, 1, -12, 945 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 495 },
			["Léxington|spineshatter"] = { 0, 1, -19, 945 },
			["Naydral|spineshatter"] = { 0, 1, -14, 405 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 945 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 405 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 458 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 651 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 405 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 464 },
		},
	},
}

