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
	built = 1795456762,
	builtText = "2026-11-23 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Reâper|spineshatter"] = { 1, 1, -12, 225 },
			["Léxington|spineshatter"] = { 0, 1, -19, 225 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Reâper|spineshatter"] = { 1, 1, -12, 225 },
			["Léxington|spineshatter"] = { 0, 1, -19, 225 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 225 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 1091 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 1092 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 1205 },
			["Zanven|spineshatter"] = { 18, 13, -41, 1205 },
			["Nennx|spineshatter"] = { 15, 10, 69, 1173 },
			["Forksache|spineshatter"] = { 13, 7, -2, 1173 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 1066 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 1066 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 1073 },
			["Brubru|spineshatter"] = { 3, 9, -93, 1089 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 1305 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 1090 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 1305 },
			["Cinthya|spineshatter"] = { 8, 2, 4, 1413 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 1282 },
			["Hööch|spineshatter"] = { 10, 0, 27, 1125 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 1208 },
			["Mblol|spineshatter"] = { 2, 1, -6, 1140 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 1140 },
			["Reâper|spineshatter"] = { 1, 1, -12, 225 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 1305 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 1305 },
			["Léxington|spineshatter"] = { 0, 1, -19, 225 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 1177 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 225 },
			["Vannah|spineshatter"] = { 1, 0, 5, 1177 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 1173 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 1184 },
			["Nennx|spineshatter"] = { 3, 0, 16, 1173 },
		},
	},
}

