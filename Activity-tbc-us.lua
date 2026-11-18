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
	built = 1794974312,
	builtText = "2026-11-17 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 0, 3, 123 },
			["Tycat|nightslayer"] = { 2, 0, 2, 124 },
			["Frotted|nightslayer"] = { 1, 0, 0, 152 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 0, 3, 123 },
			["Tycat|nightslayer"] = { 2, 0, 2, 124 },
			["Frotted|nightslayer"] = { 1, 0, 0, 152 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 0, 3, 123 },
			["Tycat|nightslayer"] = { 2, 0, 2, 124 },
			["Frotted|nightslayer"] = { 1, 0, 0, 152 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 941 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 981 },
			["Ðade|nightslayer"] = { 6, 5, -37, 1042 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 1352 },
			["Astiax|nightslayer"] = { 5, 5, -6, 1412 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 868 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 993 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 1043 },
			["Jackular|nightslayer"] = { 5, 5, 21, 1413 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 1417 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 872 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 1417 },
			["Christofferr|nightslayer"] = { 4, 3, -25, 1437 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 1013 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 1027 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 1434 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 1434 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 123 },
			["Tycat|nightslayer"] = { 2, 0, 2, 124 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 1301 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 941 },
			["Frotted|nightslayer"] = { 1, 0, 0, 152 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 760 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 1121 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 3, -59, 1428 },
			["Pylol|nightslayer"] = { 4, 0, 5, 1121 },
		},
	},
}

