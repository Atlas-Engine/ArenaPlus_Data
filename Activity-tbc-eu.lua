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
	built = 1795089560,
	builtText = "2026-11-19 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kungfuryxoxo|spineshatter"] = { 8, 12, -103, 666 },
			["Imgæy|spineshatter"] = { 6, 11, -91, 585 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 688 },
			["Brubru|spineshatter"] = { 5, 3, 12, 688 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 658 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 659 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 585 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 839 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 860 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 864 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 666 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 945 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 890 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 887 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 870 },
			["Primár|spineshatter"] = { 10, 6, 25, 945 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 773 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 776 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 773 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 945 },
			["Nudl|spineshatter"] = { 8, 7, 0, 774 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 765 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 893 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 1072 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 688 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 1072 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 820 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 1071 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 820 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 1071 },
			["Karoups|spineshatter"] = { 5, 5, -1, 1026 },
			["Oldp|spineshatter"] = { 5, 5, 8, 1071 },
			["Zanven|spineshatter"] = { 5, 4, 13, 979 },
			["Brubru|spineshatter"] = { 5, 3, 12, 688 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 658 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 659 },
			["Everlost|spineshatter"] = { 4, 2, 14, 814 },
			["Mblol|spineshatter"] = { 4, 2, -22, 1125 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 813 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 888 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 722 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 1002 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 1001 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 1305 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 1305 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 777 },
			["Doko|spineshatter"] = { 0, 1, -9, 1139 },
			["Koeter|spineshatter"] = { 1, 0, 4, 1025 },
			["Saptain|spineshatter"] = { 0, 1, -12, 765 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 945 },
			["Tamár|spineshatter"] = { 1, 0, 4, 1025 },
			["Walida|spineshatter"] = { 0, 1, -9, 1125 },
		},
	},
}

