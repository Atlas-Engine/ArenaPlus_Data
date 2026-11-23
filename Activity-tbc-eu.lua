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
	built = 1795463962,
	builtText = "2026-11-23 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 50 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 53 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 55 },
			["Predatorxd|spineshatter"] = { 1, 1, -17, 11 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 50 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 53 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 55 },
			["Predatorxd|spineshatter"] = { 1, 1, -17, 11 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 50 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 53 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 55 },
			["Predatorxd|spineshatter"] = { 1, 1, -17, 11 },
			["Reâper|spineshatter"] = { 1, 1, -12, 345 },
			["Léxington|spineshatter"] = { 0, 1, -19, 345 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 50 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 53 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 55 },
			["Predatorxd|spineshatter"] = { 1, 1, -17, 11 },
			["Reâper|spineshatter"] = { 1, 1, -12, 345 },
			["Léxington|spineshatter"] = { 0, 1, -19, 345 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 345 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 1211 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 1212 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 1325 },
			["Zanven|spineshatter"] = { 18, 13, -41, 1325 },
			["Forksache|spineshatter"] = { 13, 7, -2, 1293 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 1186 },
			["Nennx|spineshatter"] = { 13, 7, 89, 1293 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 1186 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 1193 },
			["Brubru|spineshatter"] = { 3, 9, -93, 1209 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 1425 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 1210 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 1425 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 50 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 1402 },
			["Hööch|spineshatter"] = { 10, 0, 27, 1245 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 1328 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 53 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 55 },
			["Mblol|spineshatter"] = { 2, 1, -6, 1260 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 1260 },
			["Predatorxd|spineshatter"] = { 1, 1, -17, 11 },
			["Reâper|spineshatter"] = { 1, 1, -12, 345 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 1425 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 1425 },
			["Léxington|spineshatter"] = { 0, 1, -19, 345 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 1297 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 345 },
			["Vannah|spineshatter"] = { 1, 0, 5, 1297 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 1293 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 1304 },
			["Nennx|spineshatter"] = { 3, 0, 16, 1293 },
		},
	},
}

