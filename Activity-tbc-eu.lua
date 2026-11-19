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
	built = 1795075159,
	builtText = "2026-11-19 02:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 6, 11, -91, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 345 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 599 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 620 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 624 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 426 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 705 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 649 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 647 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 630 },
			["Primár|spineshatter"] = { 10, 6, 25, 705 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 533 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 536 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 533 },
			["Nudl|spineshatter"] = { 8, 7, 0, 534 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 525 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 653 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 448 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 580 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 580 },
			["Notagainqt|spineshatter"] = { 5, 4, 4, 705 },
			["Brubru|spineshatter"] = { 5, 3, 12, 448 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 418 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 419 },
			["Everlost|spineshatter"] = { 4, 2, 14, 574 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 573 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 648 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 482 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 537 },
			["Saptain|spineshatter"] = { 0, 1, -12, 525 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 345 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 599 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 620 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 624 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 426 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 705 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 649 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 647 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 630 },
			["Rubyjunior|thunderstrike"] = { 13, 4, 92, 533 },
			["Vidykravicka|thunderstrike"] = { 13, 4, 59, 536 },
			["Primár|spineshatter"] = { 10, 6, 25, 705 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 533 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 705 },
			["Nudl|spineshatter"] = { 8, 7, 0, 534 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 525 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 653 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 832 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 448 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 832 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 580 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 831 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 580 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 831 },
			["Karoups|spineshatter"] = { 5, 5, -1, 786 },
			["Oldp|spineshatter"] = { 5, 5, 8, 831 },
			["Zanven|spineshatter"] = { 5, 4, 13, 739 },
			["Brubru|spineshatter"] = { 5, 3, 12, 448 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 418 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 419 },
			["Everlost|spineshatter"] = { 4, 2, 14, 574 },
			["Mblol|spineshatter"] = { 4, 2, -22, 885 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 573 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 648 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 482 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 762 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 761 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 1065 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 1065 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 537 },
			["Doko|spineshatter"] = { 0, 1, -9, 899 },
			["Koeter|spineshatter"] = { 1, 0, 4, 785 },
			["Saptain|spineshatter"] = { 0, 1, -12, 525 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 705 },
			["Tamár|spineshatter"] = { 1, 0, 4, 785 },
			["Walida|spineshatter"] = { 0, 1, -9, 885 },
		},
	},
}

