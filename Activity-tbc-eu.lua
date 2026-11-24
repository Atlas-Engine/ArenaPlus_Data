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
	built = 1795532361,
	builtText = "2026-11-24 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 82 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 84 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 152 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 161 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 148 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 82 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 84 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 152 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 161 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 148 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Obossan|spineshatter"] = { 5, 0, 26, 82 },
			["Milevabog|spineshatter"] = { 3, 0, 10, 84 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 152 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 161 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 148 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 996 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 998 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 931 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 1067 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 945 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 945 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 1008 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 1008 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 923 },
			["Сократ|anniversary"] = { 10, 3, 82, 923 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 1139 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 1140 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 931 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 1190 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 1125 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 945 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 945 },
			["Everlost|spineshatter"] = { 3, 5, -27, 985 },
			["Milevabog|spineshatter"] = { 6, 2, 27, 84 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 984 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 1038 },
			["Fedow|spineshatter"] = { 6, 1, -20, 1101 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 1101 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 959 },
			["Obossan|spineshatter"] = { 5, 0, 26, 82 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 1125 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 1125 },
			["Quernx|spineshatter"] = { 2, 2, -14, 1037 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 1193 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 1036 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 1195 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 1035 },
			["Naydral|spineshatter"] = { 0, 1, -14, 945 },
			["Rhythmictwo|spineshatter"] = { 1, 0, 11, 152 },
			["Zizzap|spineshatter"] = { 0, 1, -20, 161 },
			["Zlodey|spineshatter"] = { 1, 0, 11, 148 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 945 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 998 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 1191 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 945 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 1004 },
		},
	},
}

