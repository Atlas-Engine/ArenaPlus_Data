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
	built = 1794463114,
	builtText = "2026-11-12 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Oxwm|dreamscythe"] = { 2, 3, 2, 52 },
			["Chrispratt|nightslayer"] = { 1, 1, -9, 31 },
			["Palapapa|nightslayer"] = { 1, 0, 4, 31 },
			["Rjp|nightslayer"] = { 1, 0, 5, 33 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Oxwm|dreamscythe"] = { 2, 3, 2, 52 },
			["Yodead|nightslayer"] = { 5, 0, 30, 161 },
			["Chrispratt|nightslayer"] = { 1, 1, -9, 31 },
			["Palapapa|nightslayer"] = { 1, 0, 4, 31 },
			["Rjp|nightslayer"] = { 1, 0, 5, 33 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 323 },
			["Morepower|nightslayer"] = { 10, 1, 21, 303 },
			["Yodead|nightslayer"] = { 10, 1, 23, 161 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 52 },
			["Booxo|nightslayer"] = { 0, 2, -19, 309 },
			["Chrispratt|nightslayer"] = { 1, 1, -9, 31 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 262 },
			["Palapapa|nightslayer"] = { 1, 0, 4, 31 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 218 },
			["Rjp|nightslayer"] = { 1, 0, 5, 33 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 267 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 341 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 293 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 323 },
			["Morepower|nightslayer"] = { 10, 1, 21, 303 },
			["Yodead|nightslayer"] = { 10, 1, 23, 161 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 52 },
			["Booxo|nightslayer"] = { 0, 2, -19, 309 },
			["Chrispratt|nightslayer"] = { 1, 1, -9, 31 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 262 },
			["Palapapa|nightslayer"] = { 1, 0, 4, 31 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 218 },
			["Rjp|nightslayer"] = { 1, 0, 5, 33 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 267 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 341 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 293 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 17, 17, -9, 1421 },
			["Wílleh|nightslayer"] = { 17, 17, -9, 1421 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 1354 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 1355 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 1411 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 1411 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 1430 },
			["Redubbed|nightslayer"] = { 7, 9, -21, 1421 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 323 },
			["Morepower|nightslayer"] = { 10, 1, 21, 303 },
			["Yodead|nightslayer"] = { 10, 1, 23, 161 },
			["Druudix|nightslayer"] = { 5, 4, -10, 1369 },
			["Warex|nightslayer"] = { 5, 4, -10, 1369 },
			["Chrispratt|nightslayer"] = { 3, 4, -34, 31 },
			["Oxwm|dreamscythe"] = { 2, 3, 2, 52 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 1138 },
			["Rirí|nightslayer"] = { 2, 2, -5, 1138 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 1169 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 1169 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 1424 },
			["Qantas|nightslayer"] = { 3, 0, 24, 1169 },
			["Trû|nightslayer"] = { 1, 2, -8, 1421 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 1166 },
			["Booxo|nightslayer"] = { 0, 2, -19, 309 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 262 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 1017 },
			["Palapapa|nightslayer"] = { 1, 0, 4, 31 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 218 },
			["Rjp|nightslayer"] = { 1, 0, 5, 33 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 1018 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 267 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 341 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 293 },
		},
	},
}

