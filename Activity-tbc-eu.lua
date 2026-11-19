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
	built = 1795060765,
	builtText = "2026-11-18 10:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 6, 11, -91, 105 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 178 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 179 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 14, 15, -95, 105 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 187 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 293 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 296 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 293 },
			["Nudl|spineshatter"] = { 8, 7, 0, 294 },
			["Izabelyrg|spineshatter"] = { 8, 6, 20, 359 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 208 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 340 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 340 },
			["Brubru|spineshatter"] = { 5, 3, 12, 208 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 178 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 179 },
			["Everlost|spineshatter"] = { 4, 2, 14, 334 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 333 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 242 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 297 },
			["Bananagram|spineshatter"] = { 0, 1, -11, 285 },
			["Saptain|spineshatter"] = { 0, 1, -12, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 105 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 359 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 380 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 384 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 187 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 465 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 410 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 407 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 390 },
			["Primár|spineshatter"] = { 10, 6, 25, 465 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 293 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 296 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 293 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 465 },
			["Nudl|spineshatter"] = { 8, 7, 0, 294 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 285 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 413 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 592 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 208 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 592 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 340 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 591 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 340 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 591 },
			["Karoups|spineshatter"] = { 5, 5, -1, 547 },
			["Oldp|spineshatter"] = { 5, 5, 8, 591 },
			["Zanven|spineshatter"] = { 5, 4, 13, 499 },
			["Brubru|spineshatter"] = { 5, 3, 12, 208 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 178 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 179 },
			["Everlost|spineshatter"] = { 4, 2, 14, 334 },
			["Mblol|spineshatter"] = { 4, 2, -22, 645 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 333 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 408 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 242 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 522 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 521 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 297 },
			["Doko|spineshatter"] = { 0, 1, -9, 659 },
			["Koeter|spineshatter"] = { 1, 0, 4, 545 },
			["Saptain|spineshatter"] = { 0, 1, -12, 285 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 465 },
			["Tamár|spineshatter"] = { 1, 0, 4, 545 },
			["Walida|spineshatter"] = { 0, 1, -9, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 105 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 359 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 380 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 384 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 187 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 465 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 410 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 407 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 390 },
			["Rubyjunior|thunderstrike"] = { 13, 4, 92, 293 },
			["Vidykravicka|thunderstrike"] = { 13, 4, 59, 296 },
			["Primár|spineshatter"] = { 10, 6, 25, 465 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 293 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 465 },
			["Nudl|spineshatter"] = { 8, 7, 0, 294 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 285 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 413 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 592 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 208 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 592 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 340 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 591 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 340 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 591 },
			["Karoups|spineshatter"] = { 5, 5, -1, 547 },
			["Oldp|spineshatter"] = { 5, 5, 8, 591 },
			["Zanven|spineshatter"] = { 5, 4, 13, 499 },
			["Brubru|spineshatter"] = { 5, 3, 12, 208 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 178 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 179 },
			["Everlost|spineshatter"] = { 4, 2, 14, 334 },
			["Mblol|spineshatter"] = { 4, 2, -22, 645 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 333 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 408 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 242 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 522 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 521 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 825 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 825 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 297 },
			["Doko|spineshatter"] = { 0, 1, -9, 659 },
			["Koeter|spineshatter"] = { 1, 0, 4, 545 },
			["Saptain|spineshatter"] = { 0, 1, -12, 285 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 465 },
			["Tamár|spineshatter"] = { 1, 0, 4, 545 },
			["Walida|spineshatter"] = { 0, 1, -9, 645 },
		},
	},
}

