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
	built = 1795103959,
	builtText = "2026-11-19 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 825 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 1079 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 1100 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 1104 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 906 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 1185 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 1129 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 1127 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 105 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 1110 },
			["Primár|spineshatter"] = { 10, 6, 25, 1185 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 1013 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 1016 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 1013 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 1185 },
			["Nudl|spineshatter"] = { 8, 7, 0, 1014 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 1005 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 1133 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 1312 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 928 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 1312 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 1060 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 1311 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 1060 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 1311 },
			["Karoups|spineshatter"] = { 5, 5, -1, 1266 },
			["Oldp|spineshatter"] = { 5, 5, 8, 1311 },
			["Zanven|spineshatter"] = { 5, 4, 13, 1219 },
			["Brubru|spineshatter"] = { 5, 3, 12, 928 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 898 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 899 },
			["Everlost|spineshatter"] = { 4, 2, 14, 1054 },
			["Mblol|spineshatter"] = { 4, 2, -22, 1365 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 1053 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 1128 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 962 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 1242 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 1241 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 1017 },
			["Doko|spineshatter"] = { 0, 1, -9, 1379 },
			["Koeter|spineshatter"] = { 1, 0, 4, 1265 },
			["Saptain|spineshatter"] = { 0, 1, -12, 1005 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 1185 },
			["Tamár|spineshatter"] = { 1, 0, 4, 1265 },
			["Walida|spineshatter"] = { 0, 1, -9, 1365 },
		},
	},
}

