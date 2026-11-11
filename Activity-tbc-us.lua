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
	built = 1794358711,
	builtText = "2026-11-10 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Levimis|nightslayer"] = { 0, 2, 0, 41 },
			["Duudah|nightslayer"] = { 1, 0, 3, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 90 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 91 },
			["Levimis|nightslayer"] = { 0, 2, 0, 41 },
			["Duudah|nightslayer"] = { 1, 0, 3, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 90 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 91 },
			["Levimis|nightslayer"] = { 0, 2, 0, 41 },
			["Duudah|nightslayer"] = { 1, 0, 3, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 661 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 90 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 709 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 91 },
			["Levimis|nightslayer"] = { 0, 2, 0, 41 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 581 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 581 },
			["Badzor|nightslayer"] = { 1, 0, 2, 714 },
			["Duudah|nightslayer"] = { 1, 0, 3, 41 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 714 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 1138 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 1138 },
			["Exthief|nightslayer"] = { 15, 2, 82, 1106 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 1098 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 1270 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 1300 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 1318 },
			["Creationw|nightslayer"] = { 9, 7, 25, 1318 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 1311 },
			["Tycat|nightslayer"] = { 11, 3, 56, 1311 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 581 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 1188 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 1188 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 1138 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 815 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 1174 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 1319 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 815 },
			["Jackular|nightslayer"] = { 6, 4, 15, 1102 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 1318 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 1288 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 1180 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 1180 },
			["Mopz|nightslayer"] = { 8, 2, 56, 1288 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 1318 },
			["Riggity|nightslayer"] = { 6, 4, 13, 1104 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 1184 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 953 },
			["Ariiana|nightslayer"] = { 5, 4, -70, 1414 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 778 },
			["Swky|nightslayer"] = { 5, 4, -71, 1396 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 778 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 778 },
			["Frotted|nightslayer"] = { 5, 1, 39, 1368 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 661 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 1318 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 958 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 90 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 709 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 91 },
			["Levimis|nightslayer"] = { 0, 2, 0, 41 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 581 },
			["Badzor|nightslayer"] = { 1, 0, 2, 714 },
			["Duudah|nightslayer"] = { 1, 0, 3, 41 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 1318 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 714 },
			["Sunto|nightslayer"] = { 0, 1, -13, 954 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 855 },
			["Probear|nightslayer"] = { 10, 1, 0, 854 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 1209 },
			["Showhan|nightslayer"] = { 10, 0, 5, 856 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 855 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 1210 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 1138 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 958 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 963 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 958 },
			["Hybro|nightslayer"] = { 2, 0, 4, 958 },
			["Paxii|nightslayer"] = { 2, 0, 3, 964 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 963 },
		},
	},
}

