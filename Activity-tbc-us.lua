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
	built = 1794419914,
	builtText = "2026-11-11 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 1, 0, 3, 297 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 298 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 17, 17, -9, 701 },
			["Wílleh|nightslayer"] = { 17, 17, -9, 701 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 634 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 635 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 691 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 691 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 710 },
			["Redubbed|nightslayer"] = { 7, 9, -21, 701 },
			["Druudix|nightslayer"] = { 5, 4, -10, 649 },
			["Warex|nightslayer"] = { 5, 4, -10, 649 },
			["Chrispratt|nightslayer"] = { 2, 3, -25, 709 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 418 },
			["Rirí|nightslayer"] = { 2, 2, -5, 418 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 449 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 449 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 704 },
			["Qantas|nightslayer"] = { 3, 0, 24, 449 },
			["Trû|nightslayer"] = { 1, 2, -8, 701 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 446 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 297 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 298 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 701 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 701 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 634 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 635 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 721 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 701 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 691 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 691 },
			["Creation|nightslayer"] = { 14, 5, 128, 839 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 844 },
			["Yodead|nightslayer"] = { 7, 12, -80, 736 },
			["Morepower|nightslayer"] = { 7, 10, -45, 853 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 850 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 709 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 818 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 710 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 796 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 786 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 900 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 902 },
			["Druudix|nightslayer"] = { 5, 4, -10, 649 },
			["Warex|nightslayer"] = { 5, 4, -10, 649 },
			["Cream|nightslayer"] = { 8, 0, 28, 757 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 753 },
			["Levimis|nightslayer"] = { 4, 3, 11, 937 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 446 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 735 },
			["Zofì|nightslayer"] = { 4, 1, 14, 990 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 418 },
			["Rirí|nightslayer"] = { 2, 2, -5, 418 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 449 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 449 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 704 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 881 },
			["Qantas|nightslayer"] = { 3, 0, 24, 449 },
			["Stooky|nightslayer"] = { 1, 2, -30, 881 },
			["Trû|nightslayer"] = { 1, 2, -8, 701 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 1110 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 1111 },
			["Duudah|nightslayer"] = { 1, 0, 3, 1061 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 297 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 298 },
		},
	},
}

