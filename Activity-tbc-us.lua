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
	built = 1794401916,
	builtText = "2026-11-11 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 118 },
			["Rirí|nightslayer"] = { 2, 2, -5, 118 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 149 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 149 },
			["Qantas|nightslayer"] = { 3, 0, 24, 149 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 146 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Boxxing|nightslayer"] = { 7, 4, 36, 334 },
			["Ihealyoupeel|nightslayer"] = { 7, 4, 36, 335 },
			["Druudix|nightslayer"] = { 5, 4, -10, 349 },
			["Warex|nightslayer"] = { 5, 4, -10, 349 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 118 },
			["Rirí|nightslayer"] = { 2, 2, -5, 118 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 149 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 149 },
			["Qantas|nightslayer"] = { 3, 0, 24, 149 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 146 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 401 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 401 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 334 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 335 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 421 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 401 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 391 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 391 },
			["Creation|nightslayer"] = { 14, 5, 128, 539 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 544 },
			["Yodead|nightslayer"] = { 7, 12, -80, 436 },
			["Morepower|nightslayer"] = { 7, 10, -45, 553 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 550 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 409 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 518 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 410 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 496 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 486 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 600 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 602 },
			["Druudix|nightslayer"] = { 5, 4, -10, 349 },
			["Warex|nightslayer"] = { 5, 4, -10, 349 },
			["Cream|nightslayer"] = { 8, 0, 28, 457 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 453 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 146 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 435 },
			["Levimis|nightslayer"] = { 4, 1, 11, 637 },
			["Zofì|nightslayer"] = { 4, 1, 14, 690 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 118 },
			["Rirí|nightslayer"] = { 2, 2, -5, 118 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 149 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 149 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 404 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 581 },
			["Qantas|nightslayer"] = { 3, 0, 24, 149 },
			["Stooky|nightslayer"] = { 1, 2, -30, 581 },
			["Trû|nightslayer"] = { 1, 2, -8, 401 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 401 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 401 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 334 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 335 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 421 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 401 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 391 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 391 },
			["Creation|nightslayer"] = { 14, 5, 128, 539 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 544 },
			["Yodead|nightslayer"] = { 7, 12, -80, 436 },
			["Morepower|nightslayer"] = { 7, 10, -45, 553 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 550 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 409 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 518 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 410 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 496 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 486 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 600 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 602 },
			["Druudix|nightslayer"] = { 5, 4, -10, 349 },
			["Warex|nightslayer"] = { 5, 4, -10, 349 },
			["Cream|nightslayer"] = { 8, 0, 28, 457 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 453 },
			["Levimis|nightslayer"] = { 4, 3, 11, 637 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 1381 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 146 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 435 },
			["Zofì|nightslayer"] = { 4, 1, 14, 690 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 118 },
			["Rirí|nightslayer"] = { 2, 2, -5, 118 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 149 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 149 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 404 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 581 },
			["Qantas|nightslayer"] = { 3, 0, 24, 149 },
			["Stooky|nightslayer"] = { 1, 2, -30, 581 },
			["Trû|nightslayer"] = { 1, 2, -8, 401 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 810 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 1429 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 811 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 1301 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 1301 },
			["Badzor|nightslayer"] = { 1, 0, 2, 1434 },
			["Duudah|nightslayer"] = { 1, 0, 3, 761 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 1434 },
		},
	},
}

