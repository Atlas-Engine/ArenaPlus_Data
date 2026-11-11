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
	built = 1794373111,
	builtText = "2026-11-10 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dinnoo|nightslayer"] = { 10, 4, 40, 16 },
			["Creation|nightslayer"] = { 6, 0, 78, 59 },
			["Jingjingbaby|nightslayer"] = { 2, 3, -8, 38 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Creation|nightslayer"] = { 14, 5, 128, 59 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 64 },
			["Morepower|nightslayer"] = { 7, 10, -45, 73 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 69 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 38 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 16 },
			["Shigekazu|nightslayer"] = { 12, 3, 96, 101 },
			["Wílleh|nightslayer"] = { 12, 3, 96, 101 },
			["Yodead|nightslayer"] = { 6, 8, -41, 85 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 120 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 122 },
			["Fanthom|nightslayer"] = { 5, 4, 30, 101 },
			["Redubbed|nightslayer"] = { 5, 4, 30, 101 },
			["Levimis|nightslayer"] = { 4, 1, 11, 157 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 101 },
			["Stooky|nightslayer"] = { 1, 2, -30, 101 },
			["Xpectdeath|nightslayer"] = { 1, 1, 6, 71 },
			["Plasticsurgn|nightslayer"] = { 0, 1, -15, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Creation|nightslayer"] = { 14, 5, 128, 59 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 64 },
			["Morepower|nightslayer"] = { 7, 10, -45, 73 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 69 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 38 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 16 },
			["Shigekazu|nightslayer"] = { 12, 3, 96, 101 },
			["Wílleh|nightslayer"] = { 12, 3, 96, 101 },
			["Yodead|nightslayer"] = { 6, 8, -41, 85 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 120 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 122 },
			["Fanthom|nightslayer"] = { 5, 4, 30, 101 },
			["Redubbed|nightslayer"] = { 5, 4, 30, 101 },
			["Levimis|nightslayer"] = { 4, 3, 11, 157 },
			["Zofì|nightslayer"] = { 4, 1, 14, 210 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 101 },
			["Stooky|nightslayer"] = { 1, 2, -30, 101 },
			["Xpectdeath|nightslayer"] = { 1, 2, -7, 71 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 330 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 331 },
			["Duudah|nightslayer"] = { 1, 0, 3, 281 },
			["Plasticsurgn|nightslayer"] = { 0, 1, -15, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Creation|nightslayer"] = { 14, 5, 128, 59 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 64 },
			["Morepower|nightslayer"] = { 7, 10, -45, 73 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 69 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 38 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 16 },
			["Shigekazu|nightslayer"] = { 12, 3, 96, 101 },
			["Wílleh|nightslayer"] = { 12, 3, 96, 101 },
			["Yodead|nightslayer"] = { 6, 8, -41, 85 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 120 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 122 },
			["Fanthom|nightslayer"] = { 5, 4, 30, 101 },
			["Redubbed|nightslayer"] = { 5, 4, 30, 101 },
			["Levimis|nightslayer"] = { 4, 3, 11, 157 },
			["Zofì|nightslayer"] = { 4, 1, 14, 210 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 101 },
			["Stooky|nightslayer"] = { 1, 2, -30, 101 },
			["Xpectdeath|nightslayer"] = { 1, 2, -7, 71 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 330 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 331 },
			["Duudah|nightslayer"] = { 1, 0, 3, 281 },
			["Plasticsurgn|nightslayer"] = { 0, 1, -15, 101 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 5, 68, 1378 },
			["Puchikong|nightslayer"] = { 18, 5, 86, 1378 },
			["Creation|nightslayer"] = { 14, 5, 128, 59 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 64 },
			["Exthief|nightslayer"] = { 15, 2, 82, 1346 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 1338 },
			["Morepower|nightslayer"] = { 7, 10, -45, 73 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 69 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 38 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 16 },
			["Shigekazu|nightslayer"] = { 12, 3, 96, 101 },
			["Wílleh|nightslayer"] = { 12, 3, 96, 101 },
			["Yodead|nightslayer"] = { 6, 8, -41, 85 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 120 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 122 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 821 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 1428 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 1428 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 1378 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 1055 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 1414 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 1055 },
			["Jackular|nightslayer"] = { 6, 4, 15, 1342 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 1420 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 1420 },
			["Riggity|nightslayer"] = { 6, 4, 13, 1344 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 1193 },
			["Fanthom|nightslayer"] = { 5, 4, 30, 101 },
			["Redubbed|nightslayer"] = { 5, 4, 30, 101 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 1018 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 1018 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 1018 },
			["Levimis|nightslayer"] = { 4, 3, 11, 157 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 901 },
			["Zofì|nightslayer"] = { 4, 1, 14, 210 },
			["Ssk|dreamscythe"] = { 3, 1, 34, 1424 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 101 },
			["Stooky|nightslayer"] = { 1, 2, -30, 101 },
			["Xpectdeath|nightslayer"] = { 1, 2, -7, 71 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 1198 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 330 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 949 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 331 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 821 },
			["Badzor|nightslayer"] = { 1, 0, 2, 954 },
			["Duudah|nightslayer"] = { 1, 0, 3, 281 },
			["Plasticsurgn|nightslayer"] = { 0, 1, -15, 101 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 954 },
			["Sunto|nightslayer"] = { 0, 1, -13, 1194 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 1095 },
			["Probear|nightslayer"] = { 10, 1, 0, 1094 },
			["Showhan|nightslayer"] = { 10, 0, 5, 1096 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 1095 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 1378 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 1198 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 1203 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 1198 },
			["Hybro|nightslayer"] = { 2, 0, 4, 1198 },
			["Paxii|nightslayer"] = { 2, 0, 3, 1204 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 1203 },
		},
	},
}

