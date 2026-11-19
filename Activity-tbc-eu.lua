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
	built = 1795096757,
	builtText = "2026-11-19 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 6, 11, -91, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 705 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 959 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 980 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 984 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 786 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 1065 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 1009 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 1007 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 990 },
			["Primár|spineshatter"] = { 10, 6, 25, 1065 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 893 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 896 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 893 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 1065 },
			["Nudl|spineshatter"] = { 8, 7, 0, 894 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 885 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 1013 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 1192 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 808 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 1192 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 940 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 1191 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 940 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 1191 },
			["Karoups|spineshatter"] = { 5, 5, -1, 1146 },
			["Oldp|spineshatter"] = { 5, 5, 8, 1191 },
			["Zanven|spineshatter"] = { 5, 4, 13, 1099 },
			["Brubru|spineshatter"] = { 5, 3, 12, 808 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 778 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 779 },
			["Everlost|spineshatter"] = { 4, 2, 14, 934 },
			["Mblol|spineshatter"] = { 4, 2, -22, 1245 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 933 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 1008 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 842 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 1122 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 1121 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 1425 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 1425 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 897 },
			["Doko|spineshatter"] = { 0, 1, -9, 1259 },
			["Koeter|spineshatter"] = { 1, 0, 4, 1145 },
			["Saptain|spineshatter"] = { 0, 1, -12, 885 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 1065 },
			["Tamár|spineshatter"] = { 1, 0, 4, 1145 },
			["Walida|spineshatter"] = { 0, 1, -9, 1245 },
		},
	},
}

