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
	built = 1795085959,
	builtText = "2026-11-19 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 14, 15, -95, 525 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 606 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 713 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 716 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 713 },
			["Nudl|spineshatter"] = { 8, 7, 0, 714 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 628 },
			["Brubru|spineshatter"] = { 5, 3, 12, 628 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 598 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 599 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 662 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 717 },
			["Bananagram|spineshatter"] = { 0, 1, -11, 705 },
			["Saptain|spineshatter"] = { 0, 1, -12, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 525 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 779 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 800 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 804 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 606 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 885 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 829 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 827 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 810 },
			["Primár|spineshatter"] = { 10, 6, 25, 885 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 713 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 716 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 713 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 885 },
			["Nudl|spineshatter"] = { 8, 7, 0, 714 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 705 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 833 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 1012 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 628 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 1012 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 760 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 1011 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 760 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 1011 },
			["Karoups|spineshatter"] = { 5, 5, -1, 966 },
			["Oldp|spineshatter"] = { 5, 5, 8, 1011 },
			["Zanven|spineshatter"] = { 5, 4, 13, 919 },
			["Brubru|spineshatter"] = { 5, 3, 12, 628 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 598 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 599 },
			["Everlost|spineshatter"] = { 4, 2, 14, 754 },
			["Mblol|spineshatter"] = { 4, 2, -22, 1065 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 753 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 828 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 662 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 942 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 941 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 1245 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 1245 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 717 },
			["Doko|spineshatter"] = { 0, 1, -9, 1079 },
			["Koeter|spineshatter"] = { 1, 0, 4, 965 },
			["Saptain|spineshatter"] = { 0, 1, -12, 705 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 885 },
			["Tamár|spineshatter"] = { 1, 0, 4, 965 },
			["Walida|spineshatter"] = { 0, 1, -9, 1065 },
		},
	},
}

