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
	built = 1794448715,
	builtText = "2026-11-11 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["ßraxtør|nightslayer"] = { 0, 1, -14, 27 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 53 },
			["Stoggimeistr|nightslayer"] = { 0, 1, -9, 22 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 83 },
			["Morepower|nightslayer"] = { 10, 1, 21, 63 },
			["Yodead|nightslayer"] = { 5, 1, -7, 101 },
			["Booxo|nightslayer"] = { 0, 2, -19, 69 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 22 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 27 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 101 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 53 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 83 },
			["Morepower|nightslayer"] = { 10, 1, 21, 63 },
			["Yodead|nightslayer"] = { 5, 1, -7, 101 },
			["Booxo|nightslayer"] = { 0, 2, -19, 69 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 22 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 27 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 101 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 53 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 6, 5, -81, 83 },
			["Morepower|nightslayer"] = { 10, 1, 21, 63 },
			["Yodead|nightslayer"] = { 5, 1, -7, 101 },
			["Booxo|nightslayer"] = { 0, 2, -19, 69 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 22 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 27 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 101 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 53 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 1181 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 1181 },
			["Morepower|nightslayer"] = { 17, 11, -24, 63 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 1114 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 1115 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 1201 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 1181 },
			["Yodead|nightslayer"] = { 12, 13, -87, 101 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 1171 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 1171 },
			["Creation|nightslayer"] = { 14, 5, 128, 1319 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 1324 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 1330 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 1189 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 1298 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 1190 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 1276 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 1266 },
			["ßraxtør|nightslayer"] = { 6, 8, -53, 27 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 1380 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 83 },
			["Druudix|nightslayer"] = { 5, 4, -10, 1129 },
			["Warex|nightslayer"] = { 5, 4, -10, 1129 },
			["Cream|nightslayer"] = { 8, 0, 28, 1237 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 1233 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 1215 },
			["Levimis|nightslayer"] = { 4, 1, 11, 1417 },
			["Xpectdeath|nightslayer"] = { 1, 4, -22, 926 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 898 },
			["Rirí|nightslayer"] = { 2, 2, -5, 898 },
			["Clayhill|nightslayer"] = { 0, 3, -17, 929 },
			["Clothfate|nightslayer"] = { 3, 0, 24, 929 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 1184 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 1361 },
			["Qantas|nightslayer"] = { 3, 0, 24, 929 },
			["Stooky|nightslayer"] = { 1, 2, -30, 1361 },
			["Trû|nightslayer"] = { 1, 2, -8, 1181 },
			["Booxo|nightslayer"] = { 0, 2, -19, 69 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 22 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 777 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 778 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 101 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 53 },
		},
	},
}

