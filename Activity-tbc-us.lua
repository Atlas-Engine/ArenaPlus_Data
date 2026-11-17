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
	built = 1794877113,
	builtText = "2026-11-16 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 9, 2, 31, 41 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 9, 2, 31, 41 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 9, 2, 31, 41 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 9, 2, 31, 41 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 1086 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 1087 },
			["Faeriejane|nightslayer"] = { 10, 8, 0, 41 },
			["Bazook|nightslayer"] = { 9, 1, 76, 1246 },
			["Truccz|nightslayer"] = { 9, 1, 76, 1245 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 1333 },
			["Béon|nightslayer"] = { 4, 2, 4, 1333 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 1203 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 1203 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 1168 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 41 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 1121 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 1297 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 1296 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 1228 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 1228 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 1378 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 1235 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 1078 },
			["Leien|nightslayer"] = { 1, 0, 12, 1078 },
		},
	},
}

