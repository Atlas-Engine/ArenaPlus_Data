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
	built = 1795093161,
	builtText = "2026-11-19 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 6, 11, -91, 645 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 718 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 719 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 645 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 899 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 920 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 924 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 726 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 1005 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 950 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 947 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 930 },
			["Primár|spineshatter"] = { 10, 6, 25, 1005 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 833 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 836 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 833 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 1005 },
			["Nudl|spineshatter"] = { 8, 7, 0, 834 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 825 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 953 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 1132 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 748 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 1132 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 880 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 1131 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 880 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 1131 },
			["Karoups|spineshatter"] = { 5, 5, -1, 1086 },
			["Oldp|spineshatter"] = { 5, 5, 8, 1131 },
			["Zanven|spineshatter"] = { 5, 4, 13, 1039 },
			["Brubru|spineshatter"] = { 5, 3, 12, 748 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 718 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 719 },
			["Everlost|spineshatter"] = { 4, 2, 14, 874 },
			["Mblol|spineshatter"] = { 4, 2, -22, 1185 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 873 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 948 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 782 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 1062 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 1061 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 1365 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 1365 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 837 },
			["Doko|spineshatter"] = { 0, 1, -9, 1199 },
			["Koeter|spineshatter"] = { 1, 0, 4, 1085 },
			["Saptain|spineshatter"] = { 0, 1, -12, 825 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 1005 },
			["Tamár|spineshatter"] = { 1, 0, 4, 1085 },
			["Walida|spineshatter"] = { 0, 1, -9, 1185 },
		},
	},
}

