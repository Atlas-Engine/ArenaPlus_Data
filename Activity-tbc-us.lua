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
	built = 1794977913,
	builtText = "2026-11-17 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 0, 5, -61, 3 },
			["Rjp|nightslayer"] = { 0, 5, -54, 12 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 21 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 0, 5, -61, 3 },
			["Rjp|nightslayer"] = { 0, 5, -54, 12 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 21 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 0, 5, -61, 3 },
			["Rjp|nightslayer"] = { 0, 5, -54, 12 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 183 },
			["Tycat|nightslayer"] = { 2, 0, 2, 184 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 21 },
			["Frotted|nightslayer"] = { 1, 0, 0, 212 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 0, 5, -61, 3 },
			["Rjp|nightslayer"] = { 0, 5, -54, 12 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 183 },
			["Tycat|nightslayer"] = { 2, 0, 2, 184 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 21 },
			["Frotted|nightslayer"] = { 1, 0, 0, 212 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 1001 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 1041 },
			["Ðade|nightslayer"] = { 6, 5, -37, 1102 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 1412 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 928 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 1053 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 1103 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 932 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 1073 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 1087 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 3 },
			["Rjp|nightslayer"] = { 0, 5, -54, 12 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 183 },
			["Tycat|nightslayer"] = { 2, 0, 2, 184 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 1361 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 21 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 1001 },
			["Frotted|nightslayer"] = { 1, 0, 0, 212 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 820 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 1181 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 1181 },
		},
	},
}

