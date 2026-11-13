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
	built = 1794549517,
	builtText = "2026-11-13 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bohagons|nightslayer"] = { 6, 4, 21, 61 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 62 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 71 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 72 },
			["Duudah|nightslayer"] = { 6, 0, 19, 161 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bohagons|nightslayer"] = { 6, 4, 21, 61 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 62 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 71 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 72 },
			["Duudah|nightslayer"] = { 6, 0, 19, 161 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 161 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bohagons|nightslayer"] = { 6, 4, 21, 61 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 62 },
			["Duudah|nightslayer"] = { 9, 1, 23, 161 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 161 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 71 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 72 },
			["Creationw|nightslayer"] = { 2, 2, -32, 521 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 1260 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 1241 },
			["Amazý|nightslayer"] = { 8, 7, -32, 1393 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 1394 },
			["Oxwm|dreamscythe"] = { 8, 6, -79, 1263 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 1389 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 61 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 62 },
			["Duudah|nightslayer"] = { 9, 1, 23, 161 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 161 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 71 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 72 },
			["Morepower|nightslayer"] = { 4, 4, -16, 1421 },
			["Yodead|nightslayer"] = { 4, 4, -7, 1421 },
			["Arpx|nightslayer"] = { 6, 1, 18, 1382 },
			["Palapapa|nightslayer"] = { 6, 1, 17, 1381 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 1421 },
			["Chrispratt|nightslayer"] = { 4, 0, 25, 1421 },
			["Creationw|nightslayer"] = { 2, 2, -32, 521 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 1241 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 1382 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 1421 },
		},
	},
}

