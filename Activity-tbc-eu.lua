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
	built = 1795510762,
	builtText = "2026-11-24 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 11, 14, -25, 636 },
			["Shadøwsfall|thunderstrike"] = { 11, 14, -25, 638 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 585 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 585 },
			["Izabelyrg|spineshatter"] = { 8, 10, -60, 571 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 648 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 648 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 563 },
			["Сократ|anniversary"] = { 10, 3, 82, 563 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 571 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 585 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 585 },
			["Everlost|spineshatter"] = { 3, 5, -27, 625 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 624 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 678 },
			["Bimbolo|spineshatter"] = { 5, 2, 45, 707 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 599 },
			["Quernx|spineshatter"] = { 2, 2, -14, 677 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 676 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 675 },
			["Naydral|spineshatter"] = { 0, 1, -14, 585 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 585 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 638 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 585 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 644 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 636 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 638 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 571 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 707 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 585 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 585 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 648 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 648 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 563 },
			["Сократ|anniversary"] = { 10, 3, 82, 563 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 779 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 780 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 571 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 830 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 765 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 585 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 585 },
			["Everlost|spineshatter"] = { 3, 5, -27, 625 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 624 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 678 },
			["Fedow|spineshatter"] = { 6, 1, -20, 741 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 741 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 599 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 773 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 765 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 765 },
			["Quernx|spineshatter"] = { 2, 2, -14, 677 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 833 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 676 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 835 },
			["Reâper|spineshatter"] = { 1, 1, -12, 1125 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 675 },
			["Léxington|spineshatter"] = { 0, 1, -19, 1125 },
			["Naydral|spineshatter"] = { 0, 1, -14, 585 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 1125 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 585 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 638 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 831 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 585 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 644 },
		},
	},
}

