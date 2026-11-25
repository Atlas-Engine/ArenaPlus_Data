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
	built = 1795586312,
	builtText = "2026-11-25 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 32 },
			["Yodead|nightslayer"] = { 9, 5, 57, 32 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 32 },
			["Yodead|nightslayer"] = { 9, 5, 57, 32 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 165 },
			["Tycat|nightslayer"] = { 8, 0, 0, 179 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 117 },
			["Mopz|nightslayer"] = { 1, 3, -20, 115 },
			["Wopz|nightslayer"] = { 0, 1, 0, 129 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 32 },
			["Yodead|nightslayer"] = { 9, 5, 57, 32 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 165 },
			["Tycat|nightslayer"] = { 8, 0, 0, 179 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 117 },
			["Mopz|nightslayer"] = { 1, 3, -20, 115 },
			["Wopz|nightslayer"] = { 0, 1, 0, 129 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 32 },
			["Yodead|nightslayer"] = { 9, 5, 57, 32 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 165 },
			["Tycat|nightslayer"] = { 8, 0, 0, 179 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 117 },
			["Mopz|nightslayer"] = { 1, 3, -20, 115 },
			["Jamzki|nightslayer"] = { 1, 1, -19, 391 },
			["Wopz|nightslayer"] = { 0, 1, 0, 129 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 1240 },
			["Ryanin|dreamscythe"] = { 21, 10, 43, 1249 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 1240 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 1240 },
			["Morepower|nightslayer"] = { 9, 5, 60, 32 },
			["Yodead|nightslayer"] = { 9, 5, 57, 32 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 1397 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 1340 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 1240 },
			["Jackular|nightslayer"] = { 3, 7, -42, 1367 },
			["Probear|nightslayer"] = { 6, 4, 44, 1270 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 1420 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 165 },
			["Tycat|nightslayer"] = { 8, 0, 0, 179 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 117 },
			["Mopz|nightslayer"] = { 1, 3, -20, 115 },
			["Largefish|nightslayer"] = { 1, 2, 18, 1420 },
			["Jamzki|nightslayer"] = { 1, 1, -19, 391 },
			["Wopz|nightslayer"] = { 0, 1, 0, 129 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 1411 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 1272 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 1268 },
			["Probear|nightslayer"] = { 5, 0, 5, 1270 },
			["Showhan|nightslayer"] = { 5, 0, 0, 1266 },
		},
	},
}

