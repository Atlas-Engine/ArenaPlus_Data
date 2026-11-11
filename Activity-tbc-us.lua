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
	built = 1794362312,
	builtText = "2026-11-10 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Xpectdeath|nightslayer"] = { 0, 1, -13, 25 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 150 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 151 },
			["Levimis|nightslayer"] = { 0, 2, 0, 101 },
			["Duudah|nightslayer"] = { 1, 0, 3, 101 },
			["Xpectdeath|nightslayer"] = { 0, 1, -13, 25 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 150 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 151 },
			["Levimis|nightslayer"] = { 0, 2, 0, 101 },
			["Duudah|nightslayer"] = { 1, 0, 3, 101 },
			["Xpectdeath|nightslayer"] = { 0, 1, -13, 25 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 150 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 151 },
			["Levimis|nightslayer"] = { 0, 2, 0, 101 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 641 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 641 },
			["Duudah|nightslayer"] = { 1, 0, 3, 101 },
			["Xpectdeath|nightslayer"] = { 0, 1, -13, 25 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 1198 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 1198 },
			["Exthief|nightslayer"] = { 15, 2, 82, 1166 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 1158 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 1330 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 1360 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 1378 },
			["Creationw|nightslayer"] = { 9, 7, 25, 1378 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 1371 },
			["Tycat|nightslayer"] = { 11, 3, 56, 1371 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 641 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 1248 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 1249 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 1198 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 875 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 1234 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 1379 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 875 },
			["Jackular|nightslayer"] = { 6, 4, 15, 1162 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 1378 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 1348 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 1240 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 1241 },
			["Mopz|nightslayer"] = { 8, 2, 56, 1348 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 1378 },
			["Riggity|nightslayer"] = { 6, 4, 13, 1164 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 1244 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 1013 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 838 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 838 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 838 },
			["Frotted|nightslayer"] = { 5, 1, 39, 1428 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 721 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 1378 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 1018 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 150 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 769 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 151 },
			["Levimis|nightslayer"] = { 0, 2, 0, 101 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 641 },
			["Badzor|nightslayer"] = { 1, 0, 2, 774 },
			["Duudah|nightslayer"] = { 1, 0, 3, 101 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 1378 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 774 },
			["Sunto|nightslayer"] = { 0, 1, -13, 1014 },
			["Xpectdeath|nightslayer"] = { 0, 1, -13, 25 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 915 },
			["Probear|nightslayer"] = { 10, 1, 0, 914 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 1269 },
			["Showhan|nightslayer"] = { 10, 0, 5, 916 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 915 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 1270 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 1198 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 1018 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 1024 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 1018 },
			["Hybro|nightslayer"] = { 2, 0, 4, 1018 },
			["Paxii|nightslayer"] = { 2, 0, 3, 1024 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 1023 },
		},
	},
}

