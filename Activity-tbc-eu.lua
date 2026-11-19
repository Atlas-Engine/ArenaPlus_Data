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
	built = 1795118358,
	builtText = "2026-11-19 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 0, 2, -30, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 345 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 345 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 165 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 1065 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 1319 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 1340 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 1344 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 1146 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 1425 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 1369 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 1367 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 345 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 1350 },
			["Primár|spineshatter"] = { 10, 6, 25, 1425 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 1253 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 1256 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 1253 },
			["Nudl|spineshatter"] = { 8, 7, 0, 1254 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 1245 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 1373 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 1168 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 1300 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 1300 },
			["Notagainqt|spineshatter"] = { 5, 4, 4, 1425 },
			["Brubru|spineshatter"] = { 5, 3, 12, 1168 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 1138 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 1139 },
			["Everlost|spineshatter"] = { 4, 2, 14, 1294 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 1293 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 1368 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 1202 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 165 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 1257 },
			["Saptain|spineshatter"] = { 0, 1, -12, 1245 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 1425 },
		},
	},
}

