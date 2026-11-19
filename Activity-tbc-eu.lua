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
	built = 1795107575,
	builtText = "2026-11-19 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 166 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 166 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 166 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 886 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 1139 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 1160 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 1164 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 967 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 1246 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 1190 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 1187 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 166 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 1170 },
			["Primár|spineshatter"] = { 10, 6, 25, 1246 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 1073 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 1076 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 1073 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 1246 },
			["Nudl|spineshatter"] = { 8, 7, 0, 1074 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 1066 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 1193 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 1372 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 988 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 1372 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 1120 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 1371 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 1121 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 1371 },
			["Karoups|spineshatter"] = { 5, 5, -1, 1327 },
			["Oldp|spineshatter"] = { 5, 5, 8, 1371 },
			["Zanven|spineshatter"] = { 5, 4, 13, 1279 },
			["Brubru|spineshatter"] = { 5, 3, 12, 988 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 958 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 959 },
			["Everlost|spineshatter"] = { 4, 2, 14, 1114 },
			["Mblol|spineshatter"] = { 4, 2, -22, 1426 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 1113 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 1188 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 1022 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 1302 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 1301 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 1077 },
			["Doko|spineshatter"] = { 0, 1, -9, 1439 },
			["Koeter|spineshatter"] = { 1, 0, 4, 1325 },
			["Saptain|spineshatter"] = { 0, 1, -12, 1066 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 1246 },
			["Tamár|spineshatter"] = { 1, 0, 4, 1325 },
			["Walida|spineshatter"] = { 0, 1, -9, 1426 },
		},
	},
}

