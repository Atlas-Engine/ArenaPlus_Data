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
	built = 1794981513,
	builtText = "2026-11-18 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Surveillant|nightslayer"] = { 10, 0, 96, 56 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Facemaskx|nightslayer"] = { 10, 0, 96, 63 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 56 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 63 },
			["Rjp|nightslayer"] = { 0, 5, -54, 72 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 81 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Facemaskx|nightslayer"] = { 10, 0, 96, 63 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 56 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 63 },
			["Rjp|nightslayer"] = { 0, 5, -54, 72 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 243 },
			["Tycat|nightslayer"] = { 2, 0, 2, 244 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 81 },
			["Frotted|nightslayer"] = { 1, 0, 0, 272 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Facemaskx|nightslayer"] = { 10, 0, 96, 63 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 56 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 63 },
			["Rjp|nightslayer"] = { 0, 5, -54, 72 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 243 },
			["Tycat|nightslayer"] = { 2, 0, 2, 244 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 81 },
			["Frotted|nightslayer"] = { 1, 0, 0, 272 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 1061 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 1101 },
			["Ðade|nightslayer"] = { 6, 5, -37, 1162 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 988 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 1113 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 63 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 1163 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 992 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 56 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 1133 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 1147 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 63 },
			["Rjp|nightslayer"] = { 0, 5, -54, 72 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 243 },
			["Tycat|nightslayer"] = { 2, 0, 2, 244 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 1421 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 81 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 1061 },
			["Frotted|nightslayer"] = { 1, 0, 0, 272 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 880 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 1241 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 1241 },
		},
	},
}

