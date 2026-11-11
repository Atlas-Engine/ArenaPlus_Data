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
	built = 1794430715,
	builtText = "2026-11-11 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 2, 2, -27, 598 },
			["Rirí|nightslayer"] = { 2, 2, -5, 598 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 629 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 629 },
			["Qantas|nightslayer"] = { 3, 0, 24, 629 },
			["Xpectdeath|nightslayer"] = { 0, 3, -28, 626 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 477 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 478 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 881 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 881 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 814 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 815 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 901 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 881 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 871 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 871 },
			["Creation|nightslayer"] = { 14, 5, 128, 1019 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 1024 },
			["Yodead|nightslayer"] = { 7, 12, -80, 916 },
			["Morepower|nightslayer"] = { 7, 10, -45, 1033 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 1030 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 889 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 998 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 890 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 976 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 966 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 1080 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 1082 },
			["Druudix|nightslayer"] = { 5, 4, -10, 829 },
			["Warex|nightslayer"] = { 5, 4, -10, 829 },
			["Cream|nightslayer"] = { 8, 0, 28, 937 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 933 },
			["Levimis|nightslayer"] = { 4, 3, 11, 1117 },
			["Xpectdeath|nightslayer"] = { 1, 5, -35, 626 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 915 },
			["Zofì|nightslayer"] = { 4, 1, 14, 1170 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 598 },
			["Rirí|nightslayer"] = { 2, 2, -5, 598 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 629 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 629 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 884 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 1061 },
			["Qantas|nightslayer"] = { 3, 0, 24, 629 },
			["Stooky|nightslayer"] = { 1, 2, -30, 1061 },
			["Trû|nightslayer"] = { 1, 2, -8, 881 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 1290 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 1291 },
			["Duudah|nightslayer"] = { 1, 0, 3, 1241 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 477 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 478 },
		},
	},
}

