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
	built = 1794398315,
	builtText = "2026-11-11 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 58 },
			["Rirí|nightslayer"] = { 2, 2, -5, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 58 },
			["Rirí|nightslayer"] = { 2, 2, -5, 58 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 89 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 89 },
			["Qantas|nightslayer"] = { 3, 0, 24, 89 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 86 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 17, 17, -9, 341 },
			["Wílleh|nightslayer"] = { 17, 17, -9, 341 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 274 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 275 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 331 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 331 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 350 },
			["Redubbed|nightslayer"] = { 7, 9, -21, 341 },
			["Druudix|nightslayer"] = { 5, 4, -10, 289 },
			["Warex|nightslayer"] = { 5, 4, -10, 289 },
			["Chrispratt|nightslayer"] = { 2, 3, -25, 349 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 58 },
			["Rirí|nightslayer"] = { 2, 2, -5, 58 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 89 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 89 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 344 },
			["Qantas|nightslayer"] = { 3, 0, 24, 89 },
			["Trû|nightslayer"] = { 1, 2, -8, 341 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 86 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 341 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 341 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 274 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 275 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 361 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 341 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 331 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 331 },
			["Creation|nightslayer"] = { 14, 5, 128, 479 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 484 },
			["Yodead|nightslayer"] = { 7, 12, -80, 376 },
			["Morepower|nightslayer"] = { 7, 10, -45, 493 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 490 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 349 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 458 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 350 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 436 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 426 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 540 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 542 },
			["Druudix|nightslayer"] = { 5, 4, -10, 289 },
			["Warex|nightslayer"] = { 5, 4, -10, 289 },
			["Cream|nightslayer"] = { 8, 0, 28, 397 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 393 },
			["Levimis|nightslayer"] = { 4, 3, 11, 577 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 86 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 375 },
			["Zofì|nightslayer"] = { 4, 1, 14, 630 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 58 },
			["Rirí|nightslayer"] = { 2, 2, -5, 58 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 89 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 89 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 344 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 521 },
			["Qantas|nightslayer"] = { 3, 0, 24, 89 },
			["Stooky|nightslayer"] = { 1, 2, -30, 521 },
			["Trû|nightslayer"] = { 1, 2, -8, 341 },
			["Duudah|nightslayer"] = { 1, 0, 3, 701 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 341 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 341 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 274 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 275 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 361 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 341 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 331 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 331 },
			["Creation|nightslayer"] = { 14, 5, 128, 479 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 484 },
			["Yodead|nightslayer"] = { 7, 12, -80, 376 },
			["Morepower|nightslayer"] = { 7, 10, -45, 493 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 490 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 349 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 458 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 350 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 436 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 426 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 540 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 542 },
			["Druudix|nightslayer"] = { 5, 4, -10, 289 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 1438 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 1438 },
			["Warex|nightslayer"] = { 5, 4, -10, 289 },
			["Cream|nightslayer"] = { 8, 0, 28, 397 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 393 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 1438 },
			["Levimis|nightslayer"] = { 4, 3, 11, 577 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 1321 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 86 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 375 },
			["Zofì|nightslayer"] = { 4, 1, 14, 630 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 58 },
			["Rirí|nightslayer"] = { 2, 2, -5, 58 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 89 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 89 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 344 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 521 },
			["Qantas|nightslayer"] = { 3, 0, 24, 89 },
			["Stooky|nightslayer"] = { 1, 2, -30, 521 },
			["Trû|nightslayer"] = { 1, 2, -8, 341 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 750 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 1369 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 751 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 1241 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 1241 },
			["Badzor|nightslayer"] = { 1, 0, 2, 1374 },
			["Duudah|nightslayer"] = { 1, 0, 3, 701 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 1374 },
		},
	},
}

