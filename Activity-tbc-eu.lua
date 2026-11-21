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
	built = 1795301959,
	builtText = "2026-11-21 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lyswr|spineshatter"] = { 4, 7, -44, 15 },
			["Zalguu|spineshatter"] = { 4, 7, -44, 15 },
			["Bimbolo|spineshatter"] = { 2, 3, -11, 19 },
			["Zanven|spineshatter"] = { 2, 3, -39, 24 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 10, -70, 19 },
			["Lyswr|spineshatter"] = { 4, 7, -44, 15 },
			["Zalguu|spineshatter"] = { 4, 7, -44, 15 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 77 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 76 },
			["Klinden|spineshatter"] = { 6, 1, 30, 76 },
			["Zanven|spineshatter"] = { 2, 3, -39, 24 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 165 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 10, -70, 19 },
			["Lyswr|spineshatter"] = { 4, 7, -44, 15 },
			["Zalguu|spineshatter"] = { 4, 7, -44, 15 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 77 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 76 },
			["Klinden|spineshatter"] = { 6, 1, 30, 76 },
			["Zanven|spineshatter"] = { 2, 3, -39, 24 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 165 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 165 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 229 },
			["Сократ|anniversary"] = { 0, 1, -13, 230 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 10, -70, 19 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 77 },
			["Lyswr|spineshatter"] = { 4, 7, -44, 15 },
			["Zalguu|spineshatter"] = { 4, 7, -44, 15 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 76 },
			["Klinden|spineshatter"] = { 6, 1, 30, 76 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 165 },
			["Zanven|spineshatter"] = { 2, 3, -39, 24 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 165 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 525 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 229 },
			["Сократ|anniversary"] = { 0, 1, -13, 230 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 1283 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 1282 },
			["Bimbolo|spineshatter"] = { 18, 16, -13, 19 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 1327 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 1323 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 1358 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 1358 },
			["Grimroll|thunderstrike"] = { 10, 6, 17, 165 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 1331 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 77 },
			["Lyswr|spineshatter"] = { 4, 7, -44, 15 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 1425 },
			["Zalguu|spineshatter"] = { 4, 7, -44, 15 },
			["Fedow|spineshatter"] = { 3, 6, -99, 1387 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 1381 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 76 },
			["Klinden|spineshatter"] = { 6, 1, 30, 76 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 1425 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 1245 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 1425 },
			["Zanven|spineshatter"] = { 2, 3, -39, 24 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 165 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 1385 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 525 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 1386 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 1245 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 1245 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 1245 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 1245 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 229 },
			["Сократ|anniversary"] = { 0, 1, -13, 230 },
		},
	},
}

