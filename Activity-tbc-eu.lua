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
	built = 1795114761,
	builtText = "2026-11-19 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 0, 2, -30, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 285 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 285 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 1005 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 1259 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 1280 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 1284 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 1086 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 1365 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 1310 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 1307 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 285 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 1290 },
			["Primár|spineshatter"] = { 10, 6, 25, 1365 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 1193 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 1196 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 1193 },
			["Nudl|spineshatter"] = { 8, 7, 0, 1194 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 1185 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 1313 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 1108 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 1240 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 1240 },
			["Notagainqt|spineshatter"] = { 5, 4, 4, 1365 },
			["Zanven|spineshatter"] = { 5, 4, 13, 1399 },
			["Brubru|spineshatter"] = { 5, 3, 12, 1108 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 1078 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 1079 },
			["Everlost|spineshatter"] = { 4, 2, 14, 1234 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 1233 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 1308 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 1142 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 1422 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 1421 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 105 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 1197 },
			["Saptain|spineshatter"] = { 0, 1, -12, 1185 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 1365 },
		},
	},
}

