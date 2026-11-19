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
	built = 1795067962,
	builtText = "2026-11-19 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Kungfuryxoxo|spineshatter"] = { 8, 12, -103, 306 },
			["Imgæy|spineshatter"] = { 6, 11, -91, 225 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 328 },
			["Brubru|spineshatter"] = { 5, 3, 12, 328 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 298 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 299 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 225 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 479 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 500 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 504 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 306 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 585 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 530 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 527 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 510 },
			["Primár|spineshatter"] = { 10, 6, 25, 585 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 413 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 416 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 413 },
			["Nudl|spineshatter"] = { 8, 7, 0, 414 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 405 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 533 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 328 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 460 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 460 },
			["Ezzlord|spineshatter"] = { 5, 6, -36, 712 },
			["Trippytwinaz|spineshatter"] = { 5, 6, -36, 712 },
			["Karoups|spineshatter"] = { 5, 5, -1, 666 },
			["Oldp|spineshatter"] = { 5, 5, 8, 711 },
			["Notagainqt|spineshatter"] = { 5, 4, 4, 585 },
			["Zanven|spineshatter"] = { 5, 4, 13, 619 },
			["Brubru|spineshatter"] = { 5, 3, 12, 328 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 298 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 299 },
			["Soulmoo|spineshatter"] = { 6, 1, 7, 711 },
			["Zefrish|spineshatter"] = { 6, 1, 41, 711 },
			["Everlost|spineshatter"] = { 4, 2, 14, 454 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 453 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 528 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 362 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 642 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 641 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 417 },
			["Koeter|spineshatter"] = { 1, 0, 4, 665 },
			["Saptain|spineshatter"] = { 0, 1, -12, 405 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 585 },
			["Tamár|spineshatter"] = { 1, 0, 4, 665 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 225 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 479 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 500 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 504 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 306 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 585 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 530 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 527 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 510 },
			["Rubyjunior|thunderstrike"] = { 13, 4, 92, 413 },
			["Vidykravicka|thunderstrike"] = { 13, 4, 59, 416 },
			["Primár|spineshatter"] = { 10, 6, 25, 585 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 413 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 585 },
			["Nudl|spineshatter"] = { 8, 7, 0, 414 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 405 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 533 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 712 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 328 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 712 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 460 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 711 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 460 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 711 },
			["Karoups|spineshatter"] = { 5, 5, -1, 666 },
			["Oldp|spineshatter"] = { 5, 5, 8, 711 },
			["Zanven|spineshatter"] = { 5, 4, 13, 619 },
			["Brubru|spineshatter"] = { 5, 3, 12, 328 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 298 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 299 },
			["Everlost|spineshatter"] = { 4, 2, 14, 454 },
			["Mblol|spineshatter"] = { 4, 2, -22, 765 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 453 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 528 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 362 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 642 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 641 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 945 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 945 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 417 },
			["Doko|spineshatter"] = { 0, 1, -9, 779 },
			["Koeter|spineshatter"] = { 1, 0, 4, 665 },
			["Saptain|spineshatter"] = { 0, 1, -12, 405 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 585 },
			["Tamár|spineshatter"] = { 1, 0, 4, 665 },
			["Walida|spineshatter"] = { 0, 1, -9, 765 },
		},
	},
}

