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
	built = 1795064362,
	builtText = "2026-11-18 11:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 6, 11, -91, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 14, 15, -95, 165 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 246 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 353 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 356 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 353 },
			["Nudl|spineshatter"] = { 8, 7, 0, 354 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 268 },
			["Brubru|spineshatter"] = { 5, 3, 12, 268 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 238 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 239 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 302 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 357 },
			["Bananagram|spineshatter"] = { 0, 1, -11, 345 },
			["Saptain|spineshatter"] = { 0, 1, -12, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 165 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 419 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 440 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 444 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 246 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 525 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 470 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 467 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 450 },
			["Primár|spineshatter"] = { 10, 6, 25, 525 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 353 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 356 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 353 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 525 },
			["Nudl|spineshatter"] = { 8, 7, 0, 354 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 345 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 473 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 652 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 268 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 652 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 400 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 651 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 400 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 651 },
			["Karoups|spineshatter"] = { 5, 5, -1, 606 },
			["Oldp|spineshatter"] = { 5, 5, 8, 651 },
			["Zanven|spineshatter"] = { 5, 4, 13, 559 },
			["Brubru|spineshatter"] = { 5, 3, 12, 268 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 238 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 239 },
			["Everlost|spineshatter"] = { 4, 2, 14, 394 },
			["Mblol|spineshatter"] = { 4, 2, -22, 705 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 393 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 468 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 302 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 582 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 581 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 357 },
			["Doko|spineshatter"] = { 0, 1, -9, 719 },
			["Koeter|spineshatter"] = { 1, 0, 4, 605 },
			["Saptain|spineshatter"] = { 0, 1, -12, 345 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 525 },
			["Tamár|spineshatter"] = { 1, 0, 4, 605 },
			["Walida|spineshatter"] = { 0, 1, -9, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 165 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 419 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 440 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 444 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 246 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 525 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 470 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 467 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 450 },
			["Rubyjunior|thunderstrike"] = { 13, 4, 92, 353 },
			["Vidykravicka|thunderstrike"] = { 13, 4, 59, 356 },
			["Primár|spineshatter"] = { 10, 6, 25, 525 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 353 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 525 },
			["Nudl|spineshatter"] = { 8, 7, 0, 354 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 345 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 473 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 652 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 268 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 652 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 400 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 651 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 400 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 651 },
			["Karoups|spineshatter"] = { 5, 5, -1, 606 },
			["Oldp|spineshatter"] = { 5, 5, 8, 651 },
			["Zanven|spineshatter"] = { 5, 4, 13, 559 },
			["Brubru|spineshatter"] = { 5, 3, 12, 268 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 238 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 239 },
			["Everlost|spineshatter"] = { 4, 2, 14, 394 },
			["Mblol|spineshatter"] = { 4, 2, -22, 705 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 393 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 468 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 302 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 582 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 581 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 885 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 885 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 357 },
			["Doko|spineshatter"] = { 0, 1, -9, 719 },
			["Koeter|spineshatter"] = { 1, 0, 4, 605 },
			["Saptain|spineshatter"] = { 0, 1, -12, 345 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 525 },
			["Tamár|spineshatter"] = { 1, 0, 4, 605 },
			["Walida|spineshatter"] = { 0, 1, -9, 705 },
		},
	},
}

