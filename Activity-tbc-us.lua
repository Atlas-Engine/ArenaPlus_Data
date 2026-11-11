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
	built = 1794416314,
	builtText = "2026-11-11 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 358 },
			["Rirí|nightslayer"] = { 2, 2, -5, 358 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 237 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 238 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 17, 17, -9, 641 },
			["Wílleh|nightslayer"] = { 17, 17, -9, 641 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 574 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 575 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 631 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 631 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 649 },
			["Fanthom|nightslayer"] = { 7, 9, -21, 661 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 650 },
			["Redubbed|nightslayer"] = { 7, 9, -21, 641 },
			["Druudix|nightslayer"] = { 5, 4, -10, 589 },
			["Warex|nightslayer"] = { 5, 4, -10, 589 },
			["Cream|nightslayer"] = { 8, 0, 28, 697 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 693 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 675 },
			["Yodead|nightslayer"] = { 1, 4, -39, 676 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 358 },
			["Rirí|nightslayer"] = { 2, 2, -5, 358 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 389 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 389 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 644 },
			["Qantas|nightslayer"] = { 3, 0, 24, 389 },
			["Trû|nightslayer"] = { 1, 2, -8, 641 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 386 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 237 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 238 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 641 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 641 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 574 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 575 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 661 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 641 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 631 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 631 },
			["Creation|nightslayer"] = { 14, 5, 128, 779 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 784 },
			["Yodead|nightslayer"] = { 7, 12, -80, 676 },
			["Morepower|nightslayer"] = { 7, 10, -45, 793 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 790 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 649 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 758 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 650 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 736 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 726 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 840 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 842 },
			["Druudix|nightslayer"] = { 5, 4, -10, 589 },
			["Warex|nightslayer"] = { 5, 4, -10, 589 },
			["Cream|nightslayer"] = { 8, 0, 28, 697 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 693 },
			["Levimis|nightslayer"] = { 4, 3, 11, 877 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 386 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 675 },
			["Zofì|nightslayer"] = { 4, 1, 14, 930 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 358 },
			["Rirí|nightslayer"] = { 2, 2, -5, 358 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 389 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 389 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 644 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 821 },
			["Qantas|nightslayer"] = { 3, 0, 24, 389 },
			["Stooky|nightslayer"] = { 1, 2, -30, 821 },
			["Trû|nightslayer"] = { 1, 2, -8, 641 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 1050 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 1051 },
			["Duudah|nightslayer"] = { 1, 0, 3, 1001 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 237 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 238 },
		},
	},
}

