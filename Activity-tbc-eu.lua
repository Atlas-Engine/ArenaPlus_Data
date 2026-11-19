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
	built = 1795071561,
	builtText = "2026-11-19 01:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 6, 11, -91, 285 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 358 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 359 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 285 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 539 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 560 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 564 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 366 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 645 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 590 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 587 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 570 },
			["Primár|spineshatter"] = { 10, 6, 25, 645 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 473 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 476 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 473 },
			["Nudl|spineshatter"] = { 8, 7, 0, 474 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 465 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 593 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 388 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 520 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 520 },
			["Notagainqt|spineshatter"] = { 5, 4, 4, 645 },
			["Zanven|spineshatter"] = { 5, 4, 13, 679 },
			["Brubru|spineshatter"] = { 5, 3, 12, 388 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 358 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 359 },
			["Everlost|spineshatter"] = { 4, 2, 14, 514 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 513 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 588 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 422 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 702 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 701 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 477 },
			["Saptain|spineshatter"] = { 0, 1, -12, 465 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 285 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 539 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 560 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 564 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 366 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 645 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 590 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 587 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 570 },
			["Rubyjunior|thunderstrike"] = { 13, 4, 92, 473 },
			["Vidykravicka|thunderstrike"] = { 13, 4, 59, 476 },
			["Primár|spineshatter"] = { 10, 6, 25, 645 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 473 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 645 },
			["Nudl|spineshatter"] = { 8, 7, 0, 474 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 465 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 593 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 772 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 388 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 772 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 520 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 771 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 520 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 771 },
			["Karoups|spineshatter"] = { 5, 5, -1, 726 },
			["Oldp|spineshatter"] = { 5, 5, 8, 771 },
			["Zanven|spineshatter"] = { 5, 4, 13, 679 },
			["Brubru|spineshatter"] = { 5, 3, 12, 388 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 358 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 359 },
			["Everlost|spineshatter"] = { 4, 2, 14, 514 },
			["Mblol|spineshatter"] = { 4, 2, -22, 825 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 513 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 588 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 422 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 702 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 701 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 1005 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 1005 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 477 },
			["Doko|spineshatter"] = { 0, 1, -9, 839 },
			["Koeter|spineshatter"] = { 1, 0, 4, 725 },
			["Saptain|spineshatter"] = { 0, 1, -12, 465 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 645 },
			["Tamár|spineshatter"] = { 1, 0, 4, 725 },
			["Walida|spineshatter"] = { 0, 1, -9, 825 },
		},
	},
}

