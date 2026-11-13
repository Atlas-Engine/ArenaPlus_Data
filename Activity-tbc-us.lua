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
	built = 1794545912,
	builtText = "2026-11-12 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 6, 0, 19, 101 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 6, 0, 19, 101 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 23, 101 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 101 },
			["Creationw|nightslayer"] = { 2, 2, -32, 461 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 1200 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 1203 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 1181 },
			["Amazý|nightslayer"] = { 8, 7, -32, 1333 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 1334 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 1329 },
			["Duudah|nightslayer"] = { 9, 1, 23, 101 },
			["Vanderden|nightslayer"] = { 9, 1, 21, 101 },
			["Morepower|nightslayer"] = { 4, 4, -16, 1361 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 1321 },
			["Yodead|nightslayer"] = { 4, 4, -7, 1361 },
			["Arpx|nightslayer"] = { 6, 1, 18, 1321 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 1361 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 1361 },
			["Creationw|nightslayer"] = { 2, 2, -32, 461 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 1181 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 1322 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 1361 },
			["Rjp|nightslayer"] = { 1, 0, 5, 1413 },
		},
	},
}

