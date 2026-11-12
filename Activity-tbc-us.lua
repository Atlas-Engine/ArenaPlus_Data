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
	built = 1794470314,
	builtText = "2026-11-12 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Amazý|nightslayer"] = { 8, 7, -32, 73 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 74 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 69 },
			["Morepower|nightslayer"] = { 4, 4, -16, 101 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 61 },
			["Yodead|nightslayer"] = { 4, 4, -7, 101 },
			["Arpx|nightslayer"] = { 6, 1, 18, 62 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 101 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 101 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 99 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 172 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 101 },
			["Rjp|nightslayer"] = { 1, 0, 5, 153 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Amazý|nightslayer"] = { 8, 7, -32, 73 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 74 },
			["Yodead|nightslayer"] = { 9, 4, 23, 101 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 69 },
			["Morepower|nightslayer"] = { 4, 4, -16, 101 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 61 },
			["Arpx|nightslayer"] = { 6, 1, 18, 62 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 101 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 101 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 99 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 172 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 101 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 338 },
			["Rjp|nightslayer"] = { 1, 0, 5, 153 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 14, 5, 5, 101 },
			["Yodead|nightslayer"] = { 14, 5, 16, 101 },
			["Amazý|nightslayer"] = { 8, 7, -32, 73 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 74 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 69 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 443 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 61 },
			["Arpx|nightslayer"] = { 6, 1, 18, 62 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 101 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 101 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 99 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 172 },
			["Booxo|nightslayer"] = { 0, 2, -19, 429 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 101 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 382 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 338 },
			["Rjp|nightslayer"] = { 1, 0, 5, 153 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 387 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 461 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 413 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 14, 5, 5, 101 },
			["Yodead|nightslayer"] = { 14, 5, 16, 101 },
			["Amazý|nightslayer"] = { 8, 7, -32, 73 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 74 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 69 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 443 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 61 },
			["Arpx|nightslayer"] = { 6, 1, 18, 62 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 101 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 101 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 99 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 172 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 1258 },
			["Rirí|nightslayer"] = { 2, 2, -5, 1258 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 1289 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 1289 },
			["Qantas|nightslayer"] = { 3, 0, 24, 1289 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 1286 },
			["Booxo|nightslayer"] = { 0, 2, -19, 429 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 101 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 382 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 1137 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 338 },
			["Rjp|nightslayer"] = { 1, 0, 5, 153 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 1138 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 387 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 461 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 413 },
		},
	},
}

