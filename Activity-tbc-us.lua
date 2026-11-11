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
	built = 1794405513,
	builtText = "2026-11-11 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 1, 0, 3, 57 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 178 },
			["Rirí|nightslayer"] = { 2, 2, -5, 178 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 57 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 178 },
			["Rirí|nightslayer"] = { 2, 2, -5, 178 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 209 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 209 },
			["Qantas|nightslayer"] = { 3, 0, 24, 208 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 206 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 57 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 58 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 461 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 461 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 394 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 395 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 481 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 461 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 451 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 451 },
			["Creation|nightslayer"] = { 14, 5, 128, 599 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 604 },
			["Yodead|nightslayer"] = { 7, 12, -80, 496 },
			["Morepower|nightslayer"] = { 7, 10, -45, 613 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 610 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 469 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 578 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 470 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 556 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 546 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 660 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 662 },
			["Druudix|nightslayer"] = { 5, 4, -10, 409 },
			["Warex|nightslayer"] = { 5, 4, -10, 409 },
			["Cream|nightslayer"] = { 8, 0, 28, 517 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 513 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 495 },
			["Levimis|nightslayer"] = { 4, 1, 11, 697 },
			["Xpectdeath|nightslayer"] = { 1, 4, -22, 206 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 178 },
			["Rirí|nightslayer"] = { 2, 2, -5, 178 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 209 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 209 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 464 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 641 },
			["Qantas|nightslayer"] = { 3, 0, 24, 208 },
			["Stooky|nightslayer"] = { 1, 2, -30, 641 },
			["Trû|nightslayer"] = { 1, 2, -8, 461 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 57 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 58 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 461 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 461 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 394 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 395 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 481 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 461 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 451 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 451 },
			["Creation|nightslayer"] = { 14, 5, 128, 599 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 604 },
			["Yodead|nightslayer"] = { 7, 12, -80, 496 },
			["Morepower|nightslayer"] = { 7, 10, -45, 613 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 610 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 469 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 578 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 470 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 556 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 546 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 660 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 662 },
			["Druudix|nightslayer"] = { 5, 4, -10, 409 },
			["Warex|nightslayer"] = { 5, 4, -10, 409 },
			["Cream|nightslayer"] = { 8, 0, 28, 517 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 513 },
			["Levimis|nightslayer"] = { 4, 3, 11, 697 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 206 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 495 },
			["Zofì|nightslayer"] = { 4, 1, 14, 750 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 178 },
			["Rirí|nightslayer"] = { 2, 2, -5, 178 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 209 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 209 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 464 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 641 },
			["Qantas|nightslayer"] = { 3, 0, 24, 208 },
			["Stooky|nightslayer"] = { 1, 2, -30, 641 },
			["Trû|nightslayer"] = { 1, 2, -8, 461 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 870 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 871 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 1361 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 1361 },
			["Duudah|nightslayer"] = { 1, 0, 3, 821 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 57 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 58 },
		},
	},
}

