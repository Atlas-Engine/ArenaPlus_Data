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
	built = 1795201165,
	builtText = "2026-11-20 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 2, 2, -1, 57 },
			["Karoups|spineshatter"] = { 0, 2, -30, 35 },
			["Maxky|spineshatter"] = { 0, 2, -28, 35 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 80 },
			["Shadøwsfall|thunderstrike"] = { 9, 10, -52, 80 },
			["Mblol|spineshatter"] = { 9, 5, 55, 57 },
			["Backup|spineshatter"] = { 5, 7, -78, 69 },
			["Bând|spineshatter"] = { 5, 7, -78, 62 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 69 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 105 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 105 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 105 },
			["Karoups|spineshatter"] = { 0, 2, -30, 35 },
			["Maxky|spineshatter"] = { 0, 2, -28, 35 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 80 },
			["Shadøwsfall|thunderstrike"] = { 9, 10, -52, 80 },
			["Mblol|spineshatter"] = { 9, 5, 55, 57 },
			["Backup|spineshatter"] = { 5, 7, -78, 69 },
			["Bând|spineshatter"] = { 5, 7, -78, 62 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 69 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 105 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 105 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 105 },
			["Karoups|spineshatter"] = { 0, 2, -30, 35 },
			["Maxky|spineshatter"] = { 0, 2, -28, 35 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 58 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 80 },
			["Shadøwsfall|thunderstrike"] = { 9, 10, -52, 80 },
			["Mblol|spineshatter"] = { 9, 5, 55, 57 },
			["Backup|spineshatter"] = { 5, 7, -78, 69 },
			["Bând|spineshatter"] = { 5, 7, -78, 62 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 69 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 105 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 105 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 105 },
			["Karoups|spineshatter"] = { 0, 2, -30, 35 },
			["Maxky|spineshatter"] = { 0, 2, -28, 35 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 58 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 17, 15, -62, 80 },
			["Shadøwsfall|thunderstrike"] = { 17, 15, -62, 80 },
			["Rli|spineshatter"] = { 22, 9, 1, 1237 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 1235 },
			["Forksache|spineshatter"] = { 12, 11, -73, 1271 },
			["Mblol|spineshatter"] = { 15, 6, 87, 57 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 1185 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 1192 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 1281 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 1302 },
			["Notagainqt|spineshatter"] = { 13, 4, 88, 105 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 1113 },
			["Backup|spineshatter"] = { 5, 7, -78, 69 },
			["Bând|spineshatter"] = { 5, 7, -78, 62 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 1247 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 69 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 1246 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 1185 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 105 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 1232 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 105 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 1350 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 1350 },
			["Karoups|spineshatter"] = { 1, 4, -36, 35 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 1258 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 1005 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 1122 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 1185 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 1256 },
			["Maxky|spineshatter"] = { 0, 2, -28, 35 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 1185 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 58 },
		},
	},
}

