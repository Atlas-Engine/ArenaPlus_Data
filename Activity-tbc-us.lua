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
	built = 1794477512,
	builtText = "2026-11-12 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 60 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 41 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 60 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 41 },
			["Oxwm|dreamscythe"] = { 8, 6, -79, 63 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 60 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 63 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 41 },
			["Amazý|nightslayer"] = { 8, 7, -32, 193 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 194 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 189 },
			["Morepower|nightslayer"] = { 4, 4, -16, 221 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 181 },
			["Yodead|nightslayer"] = { 4, 4, -7, 221 },
			["Arpx|nightslayer"] = { 6, 1, 18, 181 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 221 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 221 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 41 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 182 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 221 },
			["Rjp|nightslayer"] = { 1, 0, 5, 273 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 60 },
			["Morepower|nightslayer"] = { 14, 5, 5, 221 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 63 },
			["Yodead|nightslayer"] = { 14, 5, 16, 221 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 41 },
			["Amazý|nightslayer"] = { 8, 7, -32, 193 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 194 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 189 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 563 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 181 },
			["Arpx|nightslayer"] = { 6, 1, 18, 181 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 221 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 221 },
			["Booxo|nightslayer"] = { 0, 2, -19, 549 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 41 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 182 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 221 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 502 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 458 },
			["Rjp|nightslayer"] = { 1, 0, 5, 273 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 507 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 581 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 533 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 60 },
			["Morepower|nightslayer"] = { 14, 5, 5, 221 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 63 },
			["Yodead|nightslayer"] = { 14, 5, 16, 221 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 41 },
			["Amazý|nightslayer"] = { 8, 7, -32, 193 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 194 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 189 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 563 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 181 },
			["Arpx|nightslayer"] = { 6, 1, 18, 181 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 221 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 221 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 1378 },
			["Rirí|nightslayer"] = { 2, 2, -5, 1378 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 1409 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 1409 },
			["Qantas|nightslayer"] = { 3, 0, 24, 1408 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 1406 },
			["Booxo|nightslayer"] = { 0, 2, -19, 549 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 41 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 182 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 221 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 502 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 1257 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 458 },
			["Rjp|nightslayer"] = { 1, 0, 5, 273 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 1258 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 507 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 581 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 533 },
		},
	},
}

