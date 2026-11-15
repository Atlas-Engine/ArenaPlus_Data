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

ns.ACTIVITY_BY_REGION["tbc-us"] = {
	built = 1794715113,
	builtText = "2026-11-14 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 0, 47, 41 },
			["Ryanin|dreamscythe"] = { 7, 0, 35, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 0, 47, 41 },
			["Ryanin|dreamscythe"] = { 7, 0, 35, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gengiscon|nightslayer"] = { 6, 4, 2, 221 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 221 },
			["Gzlol|dreamscythe"] = { 9, 0, 47, 41 },
			["Ryanin|dreamscythe"] = { 7, 0, 35, 41 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 221 },
			["Creationw|nightslayer"] = { 1, 0, 5, 246 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 246 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 368 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 221 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 221 },
			["Gzlol|dreamscythe"] = { 9, 0, 47, 41 },
			["Ryanin|dreamscythe"] = { 7, 0, 35, 41 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 221 },
			["Creationw|nightslayer"] = { 1, 0, 5, 246 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 246 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 27, 24, 94, 41 },
			["Xczv|dreamscythe"] = { 23, 8, 123, 1202 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 368 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 221 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 221 },
			["Mopz|nightslayer"] = { 4, 3, -7, 1438 },
			["Ryanin|dreamscythe"] = { 7, 0, 35, 41 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 1390 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 221 },
			["Astias|nightslayer"] = { 3, 2, 0, 1270 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 1226 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 1226 },
			["Qantas|nightslayer"] = { 1, 1, -18, 1439 },
			["Adooken|nightslayer"] = { 0, 1, -9, 1121 },
			["Creationw|nightslayer"] = { 1, 0, 5, 246 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 246 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 1396 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 1287 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 1392 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 1393 },
		},
		[3] = {
			["Ryzp|nightslayer"] = { 6, 0, 3, 1423 },
			["Hybro|nightslayer"] = { 5, 0, 11, 1410 },
			["Paxii|nightslayer"] = { 5, 0, 9, 1422 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 1424 },
		},
	},
}

