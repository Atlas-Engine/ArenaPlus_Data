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
	built = 1794347913,
	builtText = "2026-11-10 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clayhill|nightslayer"] = { 7, 3, 8, 635 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 635 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 598 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 598 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 598 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 481 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 529 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 401 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 401 },
			["Badzor|nightslayer"] = { 1, 0, 2, 534 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 534 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 675 },
			["Showhan|nightslayer"] = { 10, 0, 5, 676 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 675 },
			["Probear|nightslayer"] = { 9, 0, 19, 674 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 958 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 958 },
			["Erinthoss|nightslayer"] = { 7, 11, 11, 1291 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 1290 },
			["Exthief|nightslayer"] = { 15, 2, 82, 926 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 918 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 1090 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 1120 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 1138 },
			["Creationw|nightslayer"] = { 9, 7, 25, 1138 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 1234 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 1131 },
			["Swky|nightslayer"] = { 8, 6, -103, 1216 },
			["Tycat|nightslayer"] = { 11, 3, 56, 1131 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 401 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 1008 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 1009 },
			["Bazook|nightslayer"] = { 9, 1, 0, 1421 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 958 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 635 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 994 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 1139 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 635 },
			["Frotted|nightslayer"] = { 8, 2, 56, 1188 },
			["Jackular|nightslayer"] = { 6, 4, 15, 922 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 1138 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 1108 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 1000 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 1001 },
			["Mopz|nightslayer"] = { 8, 2, 56, 1108 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 1138 },
			["Riggity|nightslayer"] = { 6, 4, 13, 924 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 1004 },
			["Tryactin|nightslayer"] = { 6, 4, 45, 1393 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 774 },
			["Xanniepakiow|nightslayer"] = { 6, 4, 47, 1393 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 598 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 598 },
			["Astias|nightslayer"] = { 5, 3, 67, 1318 },
			["Dwg|nightslayer"] = { 5, 3, 66, 1318 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 598 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 1360 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 1318 },
			["Jamzki|nightslayer"] = { 4, 2, 3, 1318 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 481 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 1388 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 1386 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 1138 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 1374 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 1377 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 1395 },
			["Antho|nightslayer"] = { 1, 1, -10, 1318 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 778 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 529 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 401 },
			["Pogger|nightslayer"] = { 1, 1, -23, 1415 },
			["Skulls|nightslayer"] = { 1, 1, -10, 1318 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 1318 },
			["Badzor|nightslayer"] = { 1, 0, 2, 534 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 1395 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 1138 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 534 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 1318 },
			["Sunto|nightslayer"] = { 0, 1, -13, 774 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 675 },
			["Probear|nightslayer"] = { 10, 1, 0, 674 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 1029 },
			["Showhan|nightslayer"] = { 10, 0, 5, 676 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 675 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 1030 },
			["Umàdbro|nightslayer"] = { 8, 2, 14, 1318 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 958 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 778 },
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 1389 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 1391 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 784 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 778 },
			["Hybro|nightslayer"] = { 2, 0, 4, 778 },
			["Paxii|nightslayer"] = { 2, 0, 3, 784 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 783 },
		},
	},
}

