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
	built = 1794535113,
	builtText = "2026-11-12 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Creationw|nightslayer"] = { 2, 2, -32, 281 },
			["Duudah|nightslayer"] = { 3, 1, 4, 308 },
			["Vanderden|nightslayer"] = { 3, 1, 3, 326 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Creationw|nightslayer"] = { 2, 2, -32, 281 },
			["Duudah|nightslayer"] = { 3, 1, 4, 308 },
			["Vanderden|nightslayer"] = { 3, 1, 3, 326 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 1020 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 1023 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 1001 },
			["Amazý|nightslayer"] = { 8, 7, -32, 1153 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 1154 },
			["Yodead|nightslayer"] = { 9, 4, 23, 1181 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 1149 },
			["Morepower|nightslayer"] = { 4, 4, -16, 1181 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 1141 },
			["Arpx|nightslayer"] = { 6, 1, 18, 1142 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 1181 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 1181 },
			["Creationw|nightslayer"] = { 2, 2, -32, 281 },
			["Duudah|nightslayer"] = { 3, 1, 4, 308 },
			["Vanderden|nightslayer"] = { 3, 1, 3, 326 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 1001 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 1142 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 1181 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 1418 },
			["Rjp|nightslayer"] = { 1, 0, 5, 1233 },
		},
	},
}

