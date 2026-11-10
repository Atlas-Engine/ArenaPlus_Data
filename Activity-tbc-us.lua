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
	built = 1794333516,
	builtText = "2026-11-10 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 161 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 358 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 358 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 358 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 241 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 289 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 161 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 161 },
			["Badzor|nightslayer"] = { 1, 0, 2, 294 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 294 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 5, 68, 718 },
			["Puchikong|nightslayer"] = { 18, 5, 86, 718 },
			["Exthief|nightslayer"] = { 15, 2, 82, 686 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 678 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 161 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 718 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 395 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 395 },
			["Jackular|nightslayer"] = { 6, 4, 15, 682 },
			["Riggity|nightslayer"] = { 6, 4, 13, 684 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 534 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 358 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 358 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 358 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 241 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 538 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 289 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 161 },
			["Badzor|nightslayer"] = { 1, 0, 2, 294 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 294 },
			["Sunto|nightslayer"] = { 0, 1, -13, 535 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 435 },
			["Probear|nightslayer"] = { 10, 1, 0, 434 },
			["Showhan|nightslayer"] = { 10, 0, 5, 436 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 435 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 718 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 538 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 544 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 538 },
			["Hybro|nightslayer"] = { 2, 0, 4, 538 },
			["Paxii|nightslayer"] = { 2, 0, 3, 544 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 543 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 718 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 718 },
			["Erinthoss|nightslayer"] = { 7, 11, 11, 1051 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 1050 },
			["Exthief|nightslayer"] = { 15, 2, 82, 686 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 678 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 850 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 881 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 898 },
			["Creationw|nightslayer"] = { 9, 7, 25, 898 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 994 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 891 },
			["Swky|nightslayer"] = { 8, 6, -103, 976 },
			["Tycat|nightslayer"] = { 11, 3, 56, 891 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 161 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 768 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 769 },
			["Bazook|nightslayer"] = { 9, 1, 0, 1181 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 718 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 395 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 754 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 899 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 395 },
			["Frotted|nightslayer"] = { 8, 2, 56, 948 },
			["Jackular|nightslayer"] = { 6, 4, 15, 682 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 898 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 868 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 760 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 761 },
			["Mopz|nightslayer"] = { 8, 2, 56, 868 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 898 },
			["Riggity|nightslayer"] = { 6, 4, 13, 684 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 764 },
			["Tryactin|nightslayer"] = { 6, 4, 45, 1153 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 534 },
			["Xanniepakiow|nightslayer"] = { 6, 4, 47, 1153 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 358 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 358 },
			["Astias|nightslayer"] = { 5, 3, 67, 1078 },
			["Dwg|nightslayer"] = { 5, 3, 66, 1078 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 358 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 1120 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 1078 },
			["Jamzki|nightslayer"] = { 4, 2, 3, 1078 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 241 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 1148 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 1146 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 1258 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 898 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 1134 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 1137 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 1155 },
			["Antho|nightslayer"] = { 1, 1, -10, 1078 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 538 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 289 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 161 },
			["Pogger|nightslayer"] = { 1, 1, -23, 1175 },
			["Skulls|nightslayer"] = { 1, 1, -10, 1078 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 1078 },
			["Badzor|nightslayer"] = { 1, 0, 2, 294 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 1155 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 898 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 294 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 1078 },
			["Sunto|nightslayer"] = { 0, 1, -13, 535 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 435 },
			["Probear|nightslayer"] = { 10, 1, 0, 434 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 789 },
			["Showhan|nightslayer"] = { 10, 0, 5, 436 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 435 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 790 },
			["Umàdbro|nightslayer"] = { 8, 2, 14, 1078 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 718 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 538 },
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 1149 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 1151 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 544 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 538 },
			["Hybro|nightslayer"] = { 2, 0, 4, 538 },
			["Paxii|nightslayer"] = { 2, 0, 3, 544 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 543 },
		},
	},
}

