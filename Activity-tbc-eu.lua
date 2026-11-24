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
	built = 1795535964,
	builtText = "2026-11-24 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 142 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 144 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 142 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 144 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 212 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 221 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 208 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 142 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 144 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 212 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 221 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 208 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 1056 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 1058 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 991 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 1127 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 1005 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 1005 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 1068 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 1068 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 983 },
			["Сократ|anniversary"] = { 10, 3, 82, 983 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 1199 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 1200 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 991 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 1250 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 1185 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 1005 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 1005 },
			["Everlost|spineshatter"] = { 3, 5, -27, 1045 },
			["Milevabog|spineshatter"] = { 6, 2, 27, 144 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 1045 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 1098 },
			["Fedow|spineshatter"] = { 6, 1, -20, 1161 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 1161 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 1019 },
			["Obossan|spineshatter"] = { 5, 0, 26, 142 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 1185 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 1185 },
			["Quernx|spineshatter"] = { 2, 2, -14, 1097 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 1253 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 1096 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 1255 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 1095 },
			["Naydral|spineshatter"] = { 0, 1, -14, 1005 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 212 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 221 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 208 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 1005 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 1058 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 1251 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 1005 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 1064 },
		},
	},
}

