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
	built = 1795197563,
	builtText = "2026-11-20 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 20 },
			["Shadøwsfall|thunderstrike"] = { 6, 7, -60, 20 },
			["Backup|spineshatter"] = { 5, 7, -78, 9 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 9 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 45 },
			["Mblol|spineshatter"] = { 7, 3, 56, 45 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 45 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 45 },
			["Bând|spineshatter"] = { 2, 5, -73, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 20 },
			["Shadøwsfall|thunderstrike"] = { 9, 10, -52, 20 },
			["Backup|spineshatter"] = { 5, 7, -78, 9 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 9 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 45 },
			["Mblol|spineshatter"] = { 7, 3, 56, 45 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 45 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 45 },
			["Bând|spineshatter"] = { 2, 5, -73, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 20 },
			["Shadøwsfall|thunderstrike"] = { 9, 10, -52, 20 },
			["Backup|spineshatter"] = { 5, 7, -78, 9 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 9 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 45 },
			["Mblol|spineshatter"] = { 7, 3, 56, 45 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 45 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 45 },
			["Bând|spineshatter"] = { 2, 5, -73, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 20 },
			["Shadøwsfall|thunderstrike"] = { 9, 10, -52, 20 },
			["Backup|spineshatter"] = { 5, 7, -78, 9 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 9 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 45 },
			["Mblol|spineshatter"] = { 7, 3, 56, 45 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 45 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 45 },
			["Bând|spineshatter"] = { 2, 5, -73, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 17, 15, -62, 20 },
			["Shadøwsfall|thunderstrike"] = { 17, 15, -62, 20 },
			["Rli|spineshatter"] = { 22, 9, 1, 1177 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 1175 },
			["Forksache|spineshatter"] = { 12, 11, -73, 1211 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 1125 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 1132 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 1221 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 1242 },
			["Mblol|spineshatter"] = { 13, 4, 88, 45 },
			["Notagainqt|spineshatter"] = { 13, 4, 88, 45 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 1053 },
			["Backup|spineshatter"] = { 5, 7, -78, 9 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 1187 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 9 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 1186 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 1125 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 45 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 1172 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 45 },
			["Bând|spineshatter"] = { 2, 5, -73, 45 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 1290 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 1290 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 1198 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 945 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 1062 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 1125 },
			["Karoups|spineshatter"] = { 1, 2, -6, 1217 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 1196 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 1125 },
		},
	},
}

