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
	built = 1795453160,
	builtText = "2026-11-23 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Reâper|spineshatter"] = { 1, 1, -12, 165 },
			["Léxington|spineshatter"] = { 0, 1, -19, 165 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Reâper|spineshatter"] = { 1, 1, -12, 165 },
			["Léxington|spineshatter"] = { 0, 1, -19, 165 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Reâper|spineshatter"] = { 1, 1, -12, 165 },
			["Léxington|spineshatter"] = { 0, 1, -19, 165 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 165 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 1031 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 1032 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 1145 },
			["Zanven|spineshatter"] = { 18, 13, -41, 1145 },
			["Nennx|spineshatter"] = { 15, 10, 69, 1113 },
			["Forksache|spineshatter"] = { 13, 7, -2, 1113 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 1006 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 1006 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 1353 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 1013 },
			["Brubru|spineshatter"] = { 3, 9, -93, 1029 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 1245 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 1030 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 1245 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 1222 },
			["Hööch|spineshatter"] = { 10, 0, 27, 1065 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 1148 },
			["Mblol|spineshatter"] = { 2, 1, -6, 1080 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 1080 },
			["Reâper|spineshatter"] = { 1, 1, -12, 165 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 1245 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 1245 },
			["Léxington|spineshatter"] = { 0, 1, -19, 165 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 1117 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 165 },
			["Vannah|spineshatter"] = { 1, 0, 5, 1117 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 1113 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 1124 },
			["Nennx|spineshatter"] = { 3, 0, 16, 1113 },
		},
	},
}

