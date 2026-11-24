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
	built = 1795539563,
	builtText = "2026-11-24 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 1, 0, 2, 45 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 30 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 1, 0, 2, 45 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 30 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 202 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 204 },
			["Mblol|spineshatter"] = { 1, 0, 2, 45 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 30 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 272 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 281 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 268 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 202 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 204 },
			["Mblol|spineshatter"] = { 1, 0, 2, 45 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 30 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 272 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 281 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 268 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 1116 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 1118 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 1051 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 1187 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 1065 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 1065 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 1128 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 1128 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 1043 },
			["Сократ|anniversary"] = { 10, 3, 82, 1043 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 1259 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 1260 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 1051 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 1310 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 1245 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 1065 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 1065 },
			["Everlost|spineshatter"] = { 3, 5, -27, 1105 },
			["Milevabog|spineshatter"] = { 6, 2, 27, 204 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 1104 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 1158 },
			["Fedow|spineshatter"] = { 6, 1, -20, 1221 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 1221 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 1079 },
			["Obossan|spineshatter"] = { 5, 0, 26, 202 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 1245 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 1245 },
			["Quernx|spineshatter"] = { 2, 2, -14, 1157 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 1313 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 1156 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 1315 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 1155 },
			["Mblol|spineshatter"] = { 1, 0, 2, 45 },
			["Naydral|spineshatter"] = { 0, 1, -14, 1065 },
			["Notagainqt|spineshatter"] = { 1, 0, 2, 30 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 272 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 281 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 268 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 1065 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 1118 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 1311 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 1065 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 1124 },
		},
	},
}

