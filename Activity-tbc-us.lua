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
	built = 1794409114,
	builtText = "2026-11-11 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 1, 0, 3, 117 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 118 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 238 },
			["Rirí|nightslayer"] = { 2, 2, -5, 238 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 269 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 269 },
			["Qantas|nightslayer"] = { 3, 0, 24, 269 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 266 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 117 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 118 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 521 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 521 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 454 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 455 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 541 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 521 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 511 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 511 },
			["Creation|nightslayer"] = { 14, 5, 128, 659 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 664 },
			["Yodead|nightslayer"] = { 7, 12, -80, 556 },
			["Morepower|nightslayer"] = { 7, 10, -45, 673 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 670 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 529 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 638 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 530 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 616 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 606 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 720 },
			["Druudix|nightslayer"] = { 5, 4, -10, 469 },
			["Warex|nightslayer"] = { 5, 4, -10, 469 },
			["Cream|nightslayer"] = { 8, 0, 28, 577 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 573 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 555 },
			["Xpectdeath|nightslayer"] = { 1, 4, -22, 266 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 238 },
			["Rirí|nightslayer"] = { 2, 2, -5, 238 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 269 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 269 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 524 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 701 },
			["Qantas|nightslayer"] = { 3, 0, 24, 269 },
			["Stooky|nightslayer"] = { 1, 2, -30, 701 },
			["Trû|nightslayer"] = { 1, 2, -8, 521 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 117 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 118 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 521 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 521 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 454 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 455 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 541 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 521 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 511 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 511 },
			["Creation|nightslayer"] = { 14, 5, 128, 659 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 664 },
			["Yodead|nightslayer"] = { 7, 12, -80, 556 },
			["Morepower|nightslayer"] = { 7, 10, -45, 673 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 670 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 529 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 638 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 530 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 616 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 606 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 720 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 722 },
			["Druudix|nightslayer"] = { 5, 4, -10, 469 },
			["Warex|nightslayer"] = { 5, 4, -10, 469 },
			["Cream|nightslayer"] = { 8, 0, 28, 577 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 573 },
			["Levimis|nightslayer"] = { 4, 3, 11, 757 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 266 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 555 },
			["Zofì|nightslayer"] = { 4, 1, 14, 810 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 238 },
			["Rirí|nightslayer"] = { 2, 2, -5, 238 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 269 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 269 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 524 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 701 },
			["Qantas|nightslayer"] = { 3, 0, 24, 269 },
			["Stooky|nightslayer"] = { 1, 2, -30, 701 },
			["Trû|nightslayer"] = { 1, 2, -8, 521 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 930 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 931 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 1421 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 1421 },
			["Duudah|nightslayer"] = { 1, 0, 3, 881 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 117 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 118 },
		},
	},
}

