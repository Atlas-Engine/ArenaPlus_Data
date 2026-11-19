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
	built = 1795078759,
	builtText = "2026-11-19 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 14, 15, -95, 405 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 486 },
			["Ellilol|thunderstrike"] = { 11, 7, 30, 680 },
			["Shadøwsfall|thunderstrike"] = { 11, 7, 30, 684 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 593 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 596 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 593 },
			["Nudl|spineshatter"] = { 8, 7, 0, 594 },
			["Izabelyrg|spineshatter"] = { 8, 6, 20, 659 },
			["Pinkwidow|spineshatter"] = { 8, 6, 40, 690 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 508 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 640 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 640 },
			["Jaguár|spineshatter"] = { 5, 6, -7, 713 },
			["Snobillacin|spineshatter"] = { 4, 7, -27, 709 },
			["Uweboll|spineshatter"] = { 4, 7, -35, 707 },
			["Brubru|spineshatter"] = { 5, 3, 12, 508 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 478 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 479 },
			["Everlost|spineshatter"] = { 4, 2, 14, 634 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 633 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 708 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 542 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 597 },
			["Bananagram|spineshatter"] = { 0, 1, -11, 585 },
			["Saptain|spineshatter"] = { 0, 1, -12, 585 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 405 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 659 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 680 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 684 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 486 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 765 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 709 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 707 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 690 },
			["Primár|spineshatter"] = { 10, 6, 25, 765 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 593 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 596 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 593 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 765 },
			["Nudl|spineshatter"] = { 8, 7, 0, 594 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 585 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 713 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 892 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 508 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 892 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 640 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 891 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 640 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 891 },
			["Karoups|spineshatter"] = { 5, 5, -1, 846 },
			["Oldp|spineshatter"] = { 5, 5, 8, 891 },
			["Zanven|spineshatter"] = { 5, 4, 13, 799 },
			["Brubru|spineshatter"] = { 5, 3, 12, 508 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 478 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 479 },
			["Everlost|spineshatter"] = { 4, 2, 14, 634 },
			["Mblol|spineshatter"] = { 4, 2, -22, 945 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 633 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 708 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 542 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 822 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 821 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 1125 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 1125 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 597 },
			["Doko|spineshatter"] = { 0, 1, -9, 959 },
			["Koeter|spineshatter"] = { 1, 0, 4, 845 },
			["Saptain|spineshatter"] = { 0, 1, -12, 585 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 765 },
			["Tamár|spineshatter"] = { 1, 0, 4, 845 },
			["Walida|spineshatter"] = { 0, 1, -9, 945 },
		},
	},
}

