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
	built = 1794466716,
	builtText = "2026-11-12 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Amazý|nightslayer"] = { 8, 7, -32, 13 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 14 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 9 },
			["Morepower|nightslayer"] = { 4, 4, -16, 41 },
			["Yodead|nightslayer"] = { 4, 4, -7, 41 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 41 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 39 },
			["Chrispratt|nightslayer"] = { 4, 0, 25, 41 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 41 },
			["Arpx|nightslayer"] = { 1, 0, 8, 41 },
			["Palapapa|nightslayer"] = { 1, 0, 8, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Amazý|nightslayer"] = { 8, 7, -32, 13 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 14 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 9 },
			["Morepower|nightslayer"] = { 4, 4, -16, 41 },
			["Yodead|nightslayer"] = { 4, 4, -7, 41 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 41 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 41 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 39 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 112 },
			["Palapapa|nightslayer"] = { 2, 0, 12, 41 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 41 },
			["Arpx|nightslayer"] = { 1, 0, 8, 41 },
			["Rjp|nightslayer"] = { 1, 0, 5, 93 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Amazý|nightslayer"] = { 8, 7, -32, 13 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 14 },
			["Yodead|nightslayer"] = { 9, 4, 23, 41 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 9 },
			["Morepower|nightslayer"] = { 4, 4, -16, 41 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 41 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 41 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 39 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 112 },
			["Palapapa|nightslayer"] = { 2, 0, 12, 41 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 41 },
			["Arpx|nightslayer"] = { 1, 0, 8, 41 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 278 },
			["Rjp|nightslayer"] = { 1, 0, 5, 93 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 327 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 353 },
			["Stoggimeistr|nightslayer"] = { 0, 1, -9, 322 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 14, 5, 5, 41 },
			["Yodead|nightslayer"] = { 14, 5, 16, 41 },
			["Amazý|nightslayer"] = { 8, 7, -32, 13 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 14 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 9 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 383 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 41 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 41 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 39 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 112 },
			["Booxo|nightslayer"] = { 0, 2, -19, 369 },
			["Palapapa|nightslayer"] = { 2, 0, 12, 41 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 41 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 322 },
			["Arpx|nightslayer"] = { 1, 0, 8, 41 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 278 },
			["Rjp|nightslayer"] = { 1, 0, 5, 93 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 327 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 401 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 353 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 14, 5, 5, 41 },
			["Yodead|nightslayer"] = { 14, 5, 16, 41 },
			["Amazý|nightslayer"] = { 8, 7, -32, 13 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 14 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 9 },
			["Boxxing|nightslayer"] = { 7, 4, 36, 1414 },
			["Ihealyoupeel|nightslayer"] = { 7, 4, 36, 1415 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 383 },
			["Druudix|nightslayer"] = { 5, 4, -10, 1429 },
			["Warex|nightslayer"] = { 5, 4, -10, 1429 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 41 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 41 },
			["Tsoding|dreamscythe"] = { 1, 5, 21, 39 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 112 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 1198 },
			["Rirí|nightslayer"] = { 2, 2, -5, 1198 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 1229 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 1229 },
			["Qantas|nightslayer"] = { 3, 0, 24, 1229 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 1226 },
			["Booxo|nightslayer"] = { 0, 2, -19, 369 },
			["Palapapa|nightslayer"] = { 2, 0, 12, 41 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 41 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 322 },
			["Arpx|nightslayer"] = { 1, 0, 8, 41 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 1077 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 278 },
			["Rjp|nightslayer"] = { 1, 0, 5, 93 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 1078 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 327 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 401 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 353 },
		},
	},
}

