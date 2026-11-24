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
	built = 1795525157,
	builtText = "2026-11-24 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 32 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 41 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 28 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 32 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 41 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 28 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 32 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 41 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 28 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 32 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 41 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 28 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 876 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 878 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 811 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 947 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 825 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 825 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 888 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 888 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 803 },
			["Сократ|anniversary"] = { 10, 3, 82, 802 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 1018 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 1020 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 811 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 1070 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 1005 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 825 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 825 },
			["Everlost|spineshatter"] = { 3, 5, -27, 865 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 864 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 918 },
			["Fedow|spineshatter"] = { 6, 1, -20, 981 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 981 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 839 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 1013 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 1005 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 1005 },
			["Quernx|spineshatter"] = { 2, 2, -14, 917 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 1073 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 916 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 1075 },
			["Reâper|spineshatter"] = { 1, 1, -12, 1365 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 915 },
			["Léxington|spineshatter"] = { 0, 1, -19, 1365 },
			["Naydral|spineshatter"] = { 0, 1, -14, 825 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 32 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 1365 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 41 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 28 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 825 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 878 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 1071 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 825 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 884 },
		},
	},
}

