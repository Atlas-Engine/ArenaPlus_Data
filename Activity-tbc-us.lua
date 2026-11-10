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
	built = 1794344316,
	builtText = "2026-11-10 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 341 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clayhill|nightslayer"] = { 7, 3, 8, 575 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 575 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 714 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 538 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 538 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 538 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 421 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 718 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 469 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 341 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 341 },
			["Badzor|nightslayer"] = { 1, 0, 2, 474 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 474 },
			["Sunto|nightslayer"] = { 0, 1, -13, 715 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 615 },
			["Probear|nightslayer"] = { 10, 1, 0, 614 },
			["Showhan|nightslayer"] = { 10, 0, 5, 616 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 615 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 718 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 718 },
			["Hybro|nightslayer"] = { 2, 0, 4, 718 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 898 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 898 },
			["Erinthoss|nightslayer"] = { 7, 11, 11, 1231 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 1230 },
			["Exthief|nightslayer"] = { 15, 2, 82, 866 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 858 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 1030 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 1061 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 1078 },
			["Creationw|nightslayer"] = { 9, 7, 25, 1078 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 1174 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 1071 },
			["Swky|nightslayer"] = { 8, 6, -103, 1156 },
			["Tycat|nightslayer"] = { 11, 3, 56, 1071 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 341 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 948 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 949 },
			["Bazook|nightslayer"] = { 9, 1, 0, 1361 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 898 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 575 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 934 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 1079 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 575 },
			["Frotted|nightslayer"] = { 8, 2, 56, 1128 },
			["Jackular|nightslayer"] = { 6, 4, 15, 862 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 1078 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 1048 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 940 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 941 },
			["Mopz|nightslayer"] = { 8, 2, 56, 1048 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 1078 },
			["Riggity|nightslayer"] = { 6, 4, 13, 864 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 944 },
			["Tryactin|nightslayer"] = { 6, 4, 45, 1333 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 714 },
			["Xanniepakiow|nightslayer"] = { 6, 4, 47, 1333 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 538 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 538 },
			["Astias|nightslayer"] = { 5, 3, 67, 1258 },
			["Dwg|nightslayer"] = { 5, 3, 66, 1258 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 538 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 1300 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 1258 },
			["Jamzki|nightslayer"] = { 4, 2, 3, 1258 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 421 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 1328 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 1326 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 1438 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 1078 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 1314 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 1317 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 1335 },
			["Antho|nightslayer"] = { 1, 1, -10, 1258 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 718 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 469 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 341 },
			["Pogger|nightslayer"] = { 1, 1, -23, 1355 },
			["Skulls|nightslayer"] = { 1, 1, -10, 1258 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 1258 },
			["Badzor|nightslayer"] = { 1, 0, 2, 474 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 1335 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 1078 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 474 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 1258 },
			["Sunto|nightslayer"] = { 0, 1, -13, 715 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 615 },
			["Probear|nightslayer"] = { 10, 1, 0, 614 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 969 },
			["Showhan|nightslayer"] = { 10, 0, 5, 616 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 615 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 970 },
			["Umàdbro|nightslayer"] = { 8, 2, 14, 1258 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 898 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 718 },
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 1329 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 1331 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 724 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 718 },
			["Hybro|nightslayer"] = { 2, 0, 4, 718 },
			["Paxii|nightslayer"] = { 2, 0, 3, 724 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 723 },
		},
	},
}

