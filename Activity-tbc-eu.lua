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
	built = 1795193964,
	builtText = "2026-11-20 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Shadøwsfall|thunderstrike"] = { 3, 3, 8, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shadøwsfall|thunderstrike"] = { 3, 3, 8, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shadøwsfall|thunderstrike"] = { 3, 3, 8, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shadøwsfall|thunderstrike"] = { 3, 3, 8, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 1117 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 1115 },
			["Forksache|spineshatter"] = { 12, 11, -73, 1151 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 1065 },
			["Shadøwsfall|thunderstrike"] = { 11, 8, -2, 45 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 1072 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 1161 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 1182 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 993 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 1241 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 1127 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 1126 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 1065 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 1112 },
			["Mblol|spineshatter"] = { 6, 1, 32, 1065 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 1065 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 1230 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 1230 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 1138 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 885 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 1002 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 1065 },
			["Karoups|spineshatter"] = { 1, 2, -6, 1157 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 1136 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 1425 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 1065 },
		},
	},
}

