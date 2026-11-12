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
	built = 1794459512,
	builtText = "2026-11-11 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Yodead|nightslayer"] = { 5, 0, 30, 101 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 158 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 263 },
			["Morepower|nightslayer"] = { 10, 1, 21, 243 },
			["Yodead|nightslayer"] = { 10, 1, 23, 101 },
			["Booxo|nightslayer"] = { 0, 2, -19, 249 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 202 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 158 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 207 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 281 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 233 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 263 },
			["Morepower|nightslayer"] = { 10, 1, 21, 243 },
			["Yodead|nightslayer"] = { 10, 1, 23, 101 },
			["Booxo|nightslayer"] = { 0, 2, -19, 249 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 202 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 158 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 207 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 281 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 233 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 17, 17, -9, 1361 },
			["Wílleh|nightslayer"] = { 17, 17, -9, 1361 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 1294 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 1295 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 1350 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 1351 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 1369 },
			["Fanthom|nightslayer"] = { 7, 9, -21, 1381 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 1370 },
			["Redubbed|nightslayer"] = { 7, 9, -21, 1361 },
			["Yodead|nightslayer"] = { 11, 5, -16, 101 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 263 },
			["Morepower|nightslayer"] = { 10, 1, 21, 243 },
			["Druudix|nightslayer"] = { 5, 4, -10, 1309 },
			["Warex|nightslayer"] = { 5, 4, -10, 1309 },
			["Cream|nightslayer"] = { 8, 0, 28, 1417 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 1413 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 1395 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 1078 },
			["Rirí|nightslayer"] = { 2, 2, -5, 1078 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 1109 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 1109 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 1364 },
			["Qantas|nightslayer"] = { 3, 0, 24, 1108 },
			["Trû|nightslayer"] = { 1, 2, -8, 1361 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 1106 },
			["Booxo|nightslayer"] = { 0, 2, -19, 249 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 202 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 957 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 158 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 958 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 207 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 281 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 233 },
		},
	},
}

