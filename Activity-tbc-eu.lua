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
	built = 1795528760,
	builtText = "2026-11-24 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 22 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 24 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 22 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 24 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 92 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 101 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 88 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 22 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 24 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 92 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 101 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 88 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 22 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 24 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 92 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 101 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 88 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 936 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 938 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 871 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 1007 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 885 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 885 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 948 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 948 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 863 },
			["Сократ|anniversary"] = { 10, 3, 82, 863 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 1079 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 1080 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 871 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 1130 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 1065 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 885 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 885 },
			["Everlost|spineshatter"] = { 3, 5, -27, 925 },
			["Milevabog|spineshatter"] = { 6, 2, 27, 24 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 924 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 978 },
			["Fedow|spineshatter"] = { 6, 1, -20, 1041 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 1041 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 899 },
			["Obossan|spineshatter"] = { 5, 0, 26, 22 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 1065 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 1065 },
			["Quernx|spineshatter"] = { 2, 2, -14, 977 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 1133 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 976 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 1135 },
			["Reâper|spineshatter"] = { 1, 1, -12, 1425 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 975 },
			["Léxington|spineshatter"] = { 0, 1, -19, 1425 },
			["Naydral|spineshatter"] = { 0, 1, -14, 885 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 92 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 1425 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 101 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 88 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 885 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 938 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 1131 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 885 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 944 },
		},
	},
}

