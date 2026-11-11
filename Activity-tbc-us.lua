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
	built = 1794355113,
	builtText = "2026-11-10 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 2, 0, 6, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 2, 0, 6, 31 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 2, 0, 6, 31 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 718 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 718 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 718 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 601 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 649 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 31 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 521 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 521 },
			["Badzor|nightslayer"] = { 1, 0, 2, 654 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 654 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 1078 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 1078 },
			["Erinthoss|nightslayer"] = { 7, 11, 11, 1411 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 1410 },
			["Exthief|nightslayer"] = { 15, 2, 82, 1046 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 1038 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 1210 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 1240 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 1258 },
			["Creationw|nightslayer"] = { 9, 7, 25, 1258 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 1354 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 1251 },
			["Swky|nightslayer"] = { 8, 6, -103, 1336 },
			["Tycat|nightslayer"] = { 11, 3, 56, 1251 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 521 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 1128 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 1129 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 1078 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 755 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 1114 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 1259 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 755 },
			["Frotted|nightslayer"] = { 8, 2, 56, 1308 },
			["Jackular|nightslayer"] = { 6, 4, 15, 1042 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 1258 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 1228 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 1120 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 1121 },
			["Mopz|nightslayer"] = { 8, 2, 56, 1228 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 1258 },
			["Riggity|nightslayer"] = { 6, 4, 13, 1044 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 1124 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 894 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 718 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 718 },
			["Jamzki|nightslayer"] = { 6, 2, 9, 31 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 718 },
			["Astias|nightslayer"] = { 5, 2, 67, 1438 },
			["Dwg|nightslayer"] = { 5, 2, 66, 1438 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 1438 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 601 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 1258 },
			["Antho|nightslayer"] = { 1, 1, -10, 1438 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 898 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 649 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 521 },
			["Skulls|nightslayer"] = { 1, 1, -10, 1438 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 1438 },
			["Badzor|nightslayer"] = { 1, 0, 2, 654 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 1258 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 654 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 1438 },
			["Sunto|nightslayer"] = { 0, 1, -13, 894 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 795 },
			["Probear|nightslayer"] = { 10, 1, 0, 794 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 1149 },
			["Showhan|nightslayer"] = { 10, 0, 5, 796 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 795 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 1150 },
			["Umàdbro|nightslayer"] = { 8, 2, 14, 1438 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 1078 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 898 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 904 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 898 },
			["Hybro|nightslayer"] = { 2, 0, 4, 898 },
			["Paxii|nightslayer"] = { 2, 0, 3, 904 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 903 },
		},
	},
}

