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
	built = 1794423516,
	builtText = "2026-11-11 01:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 1, 0, 3, 357 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 358 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Boxxing|nightslayer"] = { 7, 4, 36, 694 },
			["Ihealyoupeel|nightslayer"] = { 7, 4, 36, 695 },
			["Druudix|nightslayer"] = { 5, 4, -10, 709 },
			["Warex|nightslayer"] = { 5, 4, -10, 709 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 478 },
			["Rirí|nightslayer"] = { 2, 2, -5, 478 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 509 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 509 },
			["Qantas|nightslayer"] = { 3, 0, 24, 509 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 506 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 357 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 358 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 761 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 761 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 694 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 695 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 781 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 761 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 751 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 751 },
			["Creation|nightslayer"] = { 14, 5, 128, 899 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 904 },
			["Yodead|nightslayer"] = { 7, 12, -80, 796 },
			["Morepower|nightslayer"] = { 7, 10, -45, 913 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 910 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 769 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 878 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 770 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 856 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 846 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 960 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 962 },
			["Druudix|nightslayer"] = { 5, 4, -10, 709 },
			["Warex|nightslayer"] = { 5, 4, -10, 709 },
			["Cream|nightslayer"] = { 8, 0, 28, 817 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 813 },
			["Levimis|nightslayer"] = { 4, 3, 11, 997 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 506 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 795 },
			["Zofì|nightslayer"] = { 4, 1, 14, 1050 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 478 },
			["Rirí|nightslayer"] = { 2, 2, -5, 478 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 509 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 509 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 764 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 941 },
			["Qantas|nightslayer"] = { 3, 0, 24, 509 },
			["Stooky|nightslayer"] = { 1, 2, -30, 941 },
			["Trû|nightslayer"] = { 1, 2, -8, 761 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 1170 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 1171 },
			["Duudah|nightslayer"] = { 1, 0, 3, 1121 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 357 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 358 },
		},
	},
}

