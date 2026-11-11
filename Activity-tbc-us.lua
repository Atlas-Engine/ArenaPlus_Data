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
	built = 1794394714,
	builtText = "2026-11-11 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Clayhill|nightslayer"] = { 0, 3, -17, 29 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 29 },
			["Qantas|nightslayer"] = { 3, 0, 24, 29 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 26 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Clayhill|nightslayer"] = { 0, 3, -17, 29 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 29 },
			["Qantas|nightslayer"] = { 3, 0, 24, 29 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 26 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 17, 17, -9, 281 },
			["Wílleh|nightslayer"] = { 17, 17, -9, 281 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 214 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 215 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 271 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 271 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 289 },
			["Fanthom|nightslayer"] = { 7, 9, -21, 301 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 290 },
			["Redubbed|nightslayer"] = { 7, 9, -21, 281 },
			["Druudix|nightslayer"] = { 5, 4, -10, 229 },
			["Warex|nightslayer"] = { 5, 4, -10, 229 },
			["Cream|nightslayer"] = { 8, 0, 28, 337 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 333 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 315 },
			["Yodead|nightslayer"] = { 1, 4, -39, 316 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 29 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 29 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 284 },
			["Qantas|nightslayer"] = { 3, 0, 24, 29 },
			["Trû|nightslayer"] = { 1, 2, -8, 281 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 26 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 281 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 281 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 214 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 215 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 301 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 281 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 271 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 271 },
			["Creation|nightslayer"] = { 14, 5, 128, 419 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 424 },
			["Yodead|nightslayer"] = { 7, 12, -80, 316 },
			["Morepower|nightslayer"] = { 7, 10, -45, 433 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 430 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 289 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 398 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 290 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 376 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 366 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 480 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 482 },
			["Druudix|nightslayer"] = { 5, 4, -10, 229 },
			["Warex|nightslayer"] = { 5, 4, -10, 229 },
			["Cream|nightslayer"] = { 8, 0, 28, 337 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 333 },
			["Levimis|nightslayer"] = { 4, 3, 11, 517 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 26 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 315 },
			["Zofì|nightslayer"] = { 4, 1, 14, 570 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 29 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 29 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 284 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 461 },
			["Qantas|nightslayer"] = { 3, 0, 24, 29 },
			["Stooky|nightslayer"] = { 1, 2, -30, 461 },
			["Trû|nightslayer"] = { 1, 2, -8, 281 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 690 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 691 },
			["Duudah|nightslayer"] = { 1, 0, 3, 641 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 281 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 281 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 214 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 215 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 301 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 281 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 271 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 271 },
			["Creation|nightslayer"] = { 14, 5, 128, 419 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 424 },
			["Yodead|nightslayer"] = { 7, 12, -80, 316 },
			["Morepower|nightslayer"] = { 7, 10, -45, 433 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 430 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 289 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 398 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 290 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 376 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 366 },
			["Clayhill|nightslayer"] = { 7, 6, -9, 29 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 480 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 482 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 1415 },
			["Druudix|nightslayer"] = { 5, 4, -10, 229 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 1378 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 1378 },
			["Warex|nightslayer"] = { 5, 4, -10, 229 },
			["Cream|nightslayer"] = { 8, 0, 28, 337 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 333 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 1378 },
			["Levimis|nightslayer"] = { 4, 3, 11, 517 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 1261 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 26 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 315 },
			["Zofì|nightslayer"] = { 4, 1, 14, 570 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 29 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 284 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 461 },
			["Qantas|nightslayer"] = { 3, 0, 24, 29 },
			["Stooky|nightslayer"] = { 1, 2, -30, 461 },
			["Trû|nightslayer"] = { 1, 2, -8, 281 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 690 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 1309 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 691 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 1181 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 1181 },
			["Badzor|nightslayer"] = { 1, 0, 2, 1314 },
			["Duudah|nightslayer"] = { 1, 0, 3, 641 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 1314 },
		},
	},
}

