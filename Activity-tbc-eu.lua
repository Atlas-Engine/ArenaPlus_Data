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
	built = 1795514364,
	builtText = "2026-11-24 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 11, 14, -25, 696 },
			["Shadøwsfall|thunderstrike"] = { 11, 14, -25, 698 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 645 },
			["Izabelyrg|spineshatter"] = { 8, 10, -60, 631 },
			["Aethèl|spineshatter"] = { 8, 8, 9, 645 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 708 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 708 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 623 },
			["Сократ|anniversary"] = { 10, 3, 82, 623 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 631 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 645 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 645 },
			["Everlost|spineshatter"] = { 3, 5, -27, 685 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 685 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 659 },
			["Naydral|spineshatter"] = { 0, 1, -14, 645 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 645 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 698 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 645 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 704 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 696 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 698 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 631 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 767 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 645 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 645 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 708 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 708 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 623 },
			["Сократ|anniversary"] = { 10, 3, 82, 623 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 839 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 840 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 631 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 890 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 825 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 645 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 645 },
			["Everlost|spineshatter"] = { 3, 5, -27, 685 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 685 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 738 },
			["Fedow|spineshatter"] = { 6, 1, -20, 801 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 801 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 659 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 833 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 825 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 825 },
			["Quernx|spineshatter"] = { 2, 2, -14, 737 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 893 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 736 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 895 },
			["Reâper|spineshatter"] = { 1, 1, -12, 1185 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 735 },
			["Léxington|spineshatter"] = { 0, 1, -19, 1185 },
			["Naydral|spineshatter"] = { 0, 1, -14, 645 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 1185 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 645 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 698 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 891 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 645 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 704 },
		},
	},
}

