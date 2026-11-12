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
	built = 1794473914,
	builtText = "2026-11-12 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Amazý|nightslayer"] = { 8, 7, -32, 133 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 134 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 129 },
			["Morepower|nightslayer"] = { 4, 4, -16, 161 },
			["Yodead|nightslayer"] = { 4, 4, -7, 161 },
			["Arpx|nightslayer"] = { 6, 1, 18, 122 },
			["Palapapa|nightslayer"] = { 6, 1, 17, 121 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 161 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 159 },
			["Chrispratt|nightslayer"] = { 4, 0, 25, 161 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 122 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Amazý|nightslayer"] = { 8, 7, -32, 133 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 134 },
			["Yodead|nightslayer"] = { 9, 4, 23, 161 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 129 },
			["Morepower|nightslayer"] = { 4, 4, -16, 161 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 121 },
			["Arpx|nightslayer"] = { 6, 1, 18, 122 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 161 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 161 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 159 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 232 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 122 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 161 },
			["Rjp|nightslayer"] = { 1, 0, 5, 213 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 14, 5, 5, 161 },
			["Yodead|nightslayer"] = { 14, 5, 16, 161 },
			["Amazý|nightslayer"] = { 8, 7, -32, 133 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 134 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 129 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 503 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 121 },
			["Arpx|nightslayer"] = { 6, 1, 18, 122 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 161 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 161 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 159 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 232 },
			["Booxo|nightslayer"] = { 0, 2, -19, 489 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 122 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 161 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 442 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 398 },
			["Rjp|nightslayer"] = { 1, 0, 5, 213 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 447 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 521 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 473 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 14, 5, 5, 161 },
			["Yodead|nightslayer"] = { 14, 5, 16, 161 },
			["Amazý|nightslayer"] = { 8, 7, -32, 133 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 134 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 129 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 503 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 121 },
			["Arpx|nightslayer"] = { 6, 1, 18, 122 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 161 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 161 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 159 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 232 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 1318 },
			["Rirí|nightslayer"] = { 2, 2, -5, 1318 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 1349 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 1349 },
			["Qantas|nightslayer"] = { 3, 0, 24, 1349 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 1346 },
			["Booxo|nightslayer"] = { 0, 2, -19, 489 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 122 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 161 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 442 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 1197 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 398 },
			["Rjp|nightslayer"] = { 1, 0, 5, 213 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 1198 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 447 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 521 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 473 },
		},
	},
}

