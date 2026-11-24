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
	built = 1795503564,
	builtText = "2026-11-24 01:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 516 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 518 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 451 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 587 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 465 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 465 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 528 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 528 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 443 },
			["Сократ|anniversary"] = { 10, 3, 82, 443 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 659 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 660 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 451 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 710 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 645 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 465 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 465 },
			["Everlost|spineshatter"] = { 3, 5, -27, 505 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 505 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 558 },
			["Fedow|spineshatter"] = { 6, 1, -20, 621 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 621 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 479 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 653 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 645 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 645 },
			["Quernx|spineshatter"] = { 2, 2, -14, 557 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 713 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 556 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 715 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 555 },
			["Naydral|spineshatter"] = { 0, 1, -14, 465 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 465 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 518 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 711 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 465 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 524 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 516 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 518 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 451 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 587 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 465 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 465 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 528 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 528 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 443 },
			["Сократ|anniversary"] = { 10, 3, 82, 443 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 659 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 660 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 451 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 710 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 645 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 465 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 465 },
			["Everlost|spineshatter"] = { 3, 5, -27, 505 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 505 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 558 },
			["Fedow|spineshatter"] = { 6, 1, -20, 621 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 621 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 479 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 653 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 645 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 645 },
			["Quernx|spineshatter"] = { 2, 2, -14, 557 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 713 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 556 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 715 },
			["Reâper|spineshatter"] = { 1, 1, -12, 1005 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 555 },
			["Léxington|spineshatter"] = { 0, 1, -19, 1005 },
			["Naydral|spineshatter"] = { 0, 1, -14, 465 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 1005 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 465 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 518 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 711 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 465 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 524 },
		},
	},
}

