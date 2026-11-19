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
	built = 1795100361,
	builtText = "2026-11-19 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 765 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 1019 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 1040 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 1044 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 846 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 1125 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 1070 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 1067 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 45 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 1050 },
			["Primár|spineshatter"] = { 10, 6, 25, 1125 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 953 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 956 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 953 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 1125 },
			["Nudl|spineshatter"] = { 8, 7, 0, 954 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 945 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 1073 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 1252 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 868 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 1252 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 1000 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 1251 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 1000 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 1251 },
			["Karoups|spineshatter"] = { 5, 5, -1, 1206 },
			["Oldp|spineshatter"] = { 5, 5, 8, 1251 },
			["Zanven|spineshatter"] = { 5, 4, 13, 1159 },
			["Brubru|spineshatter"] = { 5, 3, 12, 868 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 838 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 839 },
			["Everlost|spineshatter"] = { 4, 2, 14, 994 },
			["Mblol|spineshatter"] = { 4, 2, -22, 1305 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 993 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 1068 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 902 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 1182 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 1181 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 957 },
			["Doko|spineshatter"] = { 0, 1, -9, 1319 },
			["Koeter|spineshatter"] = { 1, 0, 4, 1205 },
			["Saptain|spineshatter"] = { 0, 1, -12, 945 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 1125 },
			["Tamár|spineshatter"] = { 1, 0, 4, 1205 },
			["Walida|spineshatter"] = { 0, 1, -9, 1305 },
		},
	},
}

