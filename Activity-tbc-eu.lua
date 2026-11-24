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
	built = 1795517963,
	builtText = "2026-11-24 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Amadeeus|spineshatter"] = { 9, 9, -25, 705 },
			["Izabelyrg|spineshatter"] = { 8, 10, -60, 691 },
			["Aethèl|spineshatter"] = { 8, 8, 9, 705 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 683 },
			["Сократ|anniversary"] = { 10, 3, 82, 683 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 691 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 705 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 705 },
			["Qpidq|spineshatter"] = { 1, 1, -14, 719 },
			["Naydral|spineshatter"] = { 0, 1, -14, 705 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 705 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 756 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 758 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 691 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 827 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 705 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 705 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 768 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 768 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 683 },
			["Сократ|anniversary"] = { 10, 3, 82, 683 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 899 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 900 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 691 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 950 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 885 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 705 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 705 },
			["Everlost|spineshatter"] = { 3, 5, -27, 745 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 744 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 798 },
			["Fedow|spineshatter"] = { 6, 1, -20, 861 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 861 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 719 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 893 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 885 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 885 },
			["Quernx|spineshatter"] = { 2, 2, -14, 797 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 953 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 796 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 955 },
			["Reâper|spineshatter"] = { 1, 1, -12, 1245 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 795 },
			["Léxington|spineshatter"] = { 0, 1, -19, 1245 },
			["Naydral|spineshatter"] = { 0, 1, -14, 705 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 1245 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 705 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 758 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 951 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 705 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 764 },
		},
	},
}

