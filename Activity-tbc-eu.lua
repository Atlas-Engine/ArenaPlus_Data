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
	built = 1795111160,
	builtText = "2026-11-19 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 0, 2, -30, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 0, 2, -30, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 225 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 225 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 945 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 1199 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 1220 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 1224 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 1026 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 1305 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 1250 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 1247 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 225 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 1230 },
			["Primár|spineshatter"] = { 10, 6, 25, 1305 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 1133 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 1136 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 1133 },
			["Nudl|spineshatter"] = { 8, 7, 0, 1134 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 1125 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 1253 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 1048 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 1180 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 1180 },
			["Ezzlord|spineshatter"] = { 5, 6, -36, 1432 },
			["Trippytwinaz|spineshatter"] = { 5, 6, -36, 1432 },
			["Karoups|spineshatter"] = { 5, 5, -1, 1386 },
			["Oldp|spineshatter"] = { 5, 5, 8, 1431 },
			["Notagainqt|spineshatter"] = { 5, 4, 4, 1305 },
			["Zanven|spineshatter"] = { 5, 4, 13, 1339 },
			["Brubru|spineshatter"] = { 5, 3, 12, 1048 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 1018 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 1019 },
			["Soulmoo|spineshatter"] = { 6, 1, 7, 1431 },
			["Zefrish|spineshatter"] = { 6, 1, 41, 1431 },
			["Everlost|spineshatter"] = { 4, 2, 14, 1174 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 1173 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 1248 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 1082 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 1362 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 1361 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 45 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 1137 },
			["Koeter|spineshatter"] = { 1, 0, 4, 1385 },
			["Saptain|spineshatter"] = { 0, 1, -12, 1125 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 1305 },
			["Tamár|spineshatter"] = { 1, 0, 4, 1385 },
		},
	},
}

