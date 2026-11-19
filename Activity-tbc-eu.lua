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
	built = 1795057165,
	builtText = "2026-11-18 09:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 6, 11, -91, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Kungfuryxoxo|spineshatter"] = { 8, 12, -103, 127 },
			["Imgæy|spineshatter"] = { 6, 11, -91, 45 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 148 },
			["Brubru|spineshatter"] = { 5, 3, 12, 148 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 118 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 119 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 14, 15, -95, 45 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 127 },
			["Ellilol|thunderstrike"] = { 11, 7, 30, 320 },
			["Shadøwsfall|thunderstrike"] = { 11, 7, 30, 324 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 233 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 236 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 233 },
			["Nudl|spineshatter"] = { 8, 7, 0, 234 },
			["Izabelyrg|spineshatter"] = { 8, 6, 20, 299 },
			["Pinkwidow|spineshatter"] = { 8, 6, 40, 330 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 148 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 280 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 280 },
			["Jaguár|spineshatter"] = { 5, 6, -7, 353 },
			["Snobillacin|spineshatter"] = { 4, 7, -27, 350 },
			["Uweboll|spineshatter"] = { 4, 7, -35, 347 },
			["Brubru|spineshatter"] = { 5, 3, 12, 148 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 118 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 119 },
			["Everlost|spineshatter"] = { 4, 2, 14, 274 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 273 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 348 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 182 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 237 },
			["Bananagram|spineshatter"] = { 0, 1, -11, 225 },
			["Saptain|spineshatter"] = { 0, 1, -12, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 45 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 299 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 320 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 324 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 127 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 405 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 350 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 347 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 330 },
			["Primár|spineshatter"] = { 10, 6, 25, 405 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 233 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 236 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 233 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 405 },
			["Nudl|spineshatter"] = { 8, 7, 0, 234 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 225 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 353 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 532 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 148 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 532 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 280 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 531 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 280 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 531 },
			["Karoups|spineshatter"] = { 5, 5, -1, 487 },
			["Oldp|spineshatter"] = { 5, 5, 8, 531 },
			["Zanven|spineshatter"] = { 5, 4, 13, 439 },
			["Brubru|spineshatter"] = { 5, 3, 12, 148 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 118 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 119 },
			["Everlost|spineshatter"] = { 4, 2, 14, 274 },
			["Mblol|spineshatter"] = { 4, 2, -22, 585 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 273 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 348 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 182 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 462 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 461 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 237 },
			["Doko|spineshatter"] = { 0, 1, -9, 599 },
			["Koeter|spineshatter"] = { 1, 0, 4, 485 },
			["Saptain|spineshatter"] = { 0, 1, -12, 225 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 405 },
			["Tamár|spineshatter"] = { 1, 0, 4, 485 },
			["Walida|spineshatter"] = { 0, 1, -9, 585 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 45 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 299 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 320 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 324 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 127 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 405 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 350 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 347 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 330 },
			["Rubyjunior|thunderstrike"] = { 13, 4, 92, 233 },
			["Vidykravicka|thunderstrike"] = { 13, 4, 59, 236 },
			["Primár|spineshatter"] = { 10, 6, 25, 405 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 233 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 405 },
			["Nudl|spineshatter"] = { 8, 7, 0, 234 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 225 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 353 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 532 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 148 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 532 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 280 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 531 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 280 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 531 },
			["Karoups|spineshatter"] = { 5, 5, -1, 487 },
			["Oldp|spineshatter"] = { 5, 5, 8, 531 },
			["Zanven|spineshatter"] = { 5, 4, 13, 439 },
			["Brubru|spineshatter"] = { 5, 3, 12, 148 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 118 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 119 },
			["Everlost|spineshatter"] = { 4, 2, 14, 274 },
			["Mblol|spineshatter"] = { 4, 2, -22, 585 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 273 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 348 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 182 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 462 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 461 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 765 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 765 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 237 },
			["Doko|spineshatter"] = { 0, 1, -9, 599 },
			["Koeter|spineshatter"] = { 1, 0, 4, 485 },
			["Saptain|spineshatter"] = { 0, 1, -12, 225 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 405 },
			["Tamár|spineshatter"] = { 1, 0, 4, 485 },
			["Walida|spineshatter"] = { 0, 1, -9, 585 },
		},
	},
}

