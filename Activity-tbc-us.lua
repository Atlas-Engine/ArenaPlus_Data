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
	built = 1794365913,
	builtText = "2026-11-10 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Levimis|nightslayer"] = { 4, 1, 11, 37 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Levimis|nightslayer"] = { 4, 3, 11, 37 },
			["Duudah|nightslayer"] = { 1, 0, 3, 161 },
			["Xpectdeath|nightslayer"] = { 0, 1, -13, 85 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Levimis|nightslayer"] = { 4, 3, 11, 37 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 210 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 211 },
			["Duudah|nightslayer"] = { 1, 0, 3, 161 },
			["Xpectdeath|nightslayer"] = { 0, 1, -13, 85 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Levimis|nightslayer"] = { 4, 3, 11, 37 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 210 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 211 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 701 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 701 },
			["Duudah|nightslayer"] = { 1, 0, 3, 161 },
			["Xpectdeath|nightslayer"] = { 0, 1, -13, 85 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 1258 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 1258 },
			["Exthief|nightslayer"] = { 15, 2, 82, 1226 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 1218 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 1390 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 1420 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 1438 },
			["Creationw|nightslayer"] = { 9, 7, 25, 1438 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 1431 },
			["Tycat|nightslayer"] = { 11, 3, 56, 1431 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 701 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 1308 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 1309 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 1258 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 935 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 1294 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 1439 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 935 },
			["Jackular|nightslayer"] = { 6, 4, 15, 1222 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 1438 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 1408 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 1300 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 1301 },
			["Mopz|nightslayer"] = { 8, 2, 56, 1408 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 1438 },
			["Riggity|nightslayer"] = { 6, 4, 13, 1224 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 1304 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 1074 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 898 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 898 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 898 },
			["Levimis|nightslayer"] = { 4, 3, 11, 37 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 781 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 1438 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 1078 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 210 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 829 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 211 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 701 },
			["Badzor|nightslayer"] = { 1, 0, 2, 834 },
			["Duudah|nightslayer"] = { 1, 0, 3, 161 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 1438 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 834 },
			["Sunto|nightslayer"] = { 0, 1, -13, 1074 },
			["Xpectdeath|nightslayer"] = { 0, 1, -13, 85 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 975 },
			["Probear|nightslayer"] = { 10, 1, 0, 974 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 1329 },
			["Showhan|nightslayer"] = { 10, 0, 5, 976 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 975 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 1330 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 1258 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 1078 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 1084 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 1078 },
			["Hybro|nightslayer"] = { 2, 0, 4, 1078 },
			["Paxii|nightslayer"] = { 2, 0, 3, 1084 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 1083 },
		},
	},
}

