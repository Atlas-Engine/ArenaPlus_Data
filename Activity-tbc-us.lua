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
	built = 1794538713,
	builtText = "2026-11-12 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Creationw|nightslayer"] = { 2, 2, -32, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Creationw|nightslayer"] = { 2, 2, -32, 341 },
			["Duudah|nightslayer"] = { 3, 1, 4, 368 },
			["Vanderden|nightslayer"] = { 3, 1, 3, 386 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 1080 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 1083 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 1061 },
			["Amazý|nightslayer"] = { 8, 7, -32, 1213 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 1214 },
			["Yodead|nightslayer"] = { 9, 4, 23, 1241 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 1209 },
			["Morepower|nightslayer"] = { 4, 4, -16, 1241 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 1201 },
			["Arpx|nightslayer"] = { 6, 1, 18, 1202 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 1241 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 1241 },
			["Creationw|nightslayer"] = { 2, 2, -32, 341 },
			["Duudah|nightslayer"] = { 3, 1, 4, 368 },
			["Vanderden|nightslayer"] = { 3, 1, 3, 386 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 1061 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 1202 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 1241 },
			["Rjp|nightslayer"] = { 1, 0, 5, 1293 },
		},
	},
}

