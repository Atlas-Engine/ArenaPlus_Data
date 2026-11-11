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
	built = 1794412714,
	builtText = "2026-11-11 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 1, 0, 3, 177 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 178 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 298 },
			["Rirí|nightslayer"] = { 2, 2, -5, 298 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 329 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 329 },
			["Qantas|nightslayer"] = { 3, 0, 24, 329 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 326 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 177 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 178 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 17, 17, -9, 581 },
			["Wílleh|nightslayer"] = { 17, 17, -9, 581 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 514 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 515 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 571 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 571 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 589 },
			["Fanthom|nightslayer"] = { 7, 9, -21, 601 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 590 },
			["Redubbed|nightslayer"] = { 7, 9, -21, 581 },
			["Dinnoo|nightslayer"] = { 10, 4, 40, 676 },
			["Plasticsurgn|nightslayer"] = { 10, 4, 40, 666 },
			["Druudix|nightslayer"] = { 5, 4, -10, 529 },
			["Warex|nightslayer"] = { 5, 4, -10, 529 },
			["Cream|nightslayer"] = { 8, 0, 28, 637 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 633 },
			["Creation|nightslayer"] = { 6, 0, 78, 719 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 615 },
			["Jingjingbaby|nightslayer"] = { 2, 3, -8, 698 },
			["Yodead|nightslayer"] = { 1, 4, -39, 616 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 298 },
			["Rirí|nightslayer"] = { 2, 2, -5, 298 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 329 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 329 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 584 },
			["Qantas|nightslayer"] = { 3, 0, 24, 329 },
			["Trû|nightslayer"] = { 1, 2, -8, 581 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 326 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 177 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 178 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 581 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 581 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 514 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 515 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 601 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 581 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 571 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 571 },
			["Creation|nightslayer"] = { 14, 5, 128, 719 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 724 },
			["Yodead|nightslayer"] = { 7, 12, -80, 616 },
			["Morepower|nightslayer"] = { 7, 10, -45, 733 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 730 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 589 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 698 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 590 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 676 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 666 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 780 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 782 },
			["Druudix|nightslayer"] = { 5, 4, -10, 529 },
			["Warex|nightslayer"] = { 5, 4, -10, 529 },
			["Cream|nightslayer"] = { 8, 0, 28, 637 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 633 },
			["Levimis|nightslayer"] = { 4, 3, 11, 817 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 326 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 615 },
			["Zofì|nightslayer"] = { 4, 1, 14, 870 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 298 },
			["Rirí|nightslayer"] = { 2, 2, -5, 298 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 329 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 329 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 584 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 761 },
			["Qantas|nightslayer"] = { 3, 0, 24, 329 },
			["Stooky|nightslayer"] = { 1, 2, -30, 761 },
			["Trû|nightslayer"] = { 1, 2, -8, 581 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 990 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 991 },
			["Duudah|nightslayer"] = { 1, 0, 3, 941 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 177 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 178 },
		},
	},
}

