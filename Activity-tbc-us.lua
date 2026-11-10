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
	built = 1794340711,
	builtText = "2026-11-10 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 281 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 281 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clayhill|nightslayer"] = { 7, 3, 8, 515 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 515 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 653 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 478 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 478 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 478 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 361 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 658 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 409 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 281 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 281 },
			["Badzor|nightslayer"] = { 1, 0, 2, 414 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 414 },
			["Sunto|nightslayer"] = { 0, 1, -13, 654 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 555 },
			["Probear|nightslayer"] = { 10, 1, 0, 554 },
			["Showhan|nightslayer"] = { 10, 0, 5, 556 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 555 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 658 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 663 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 658 },
			["Hybro|nightslayer"] = { 2, 0, 4, 658 },
			["Paxii|nightslayer"] = { 2, 0, 3, 664 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 663 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 838 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 838 },
			["Erinthoss|nightslayer"] = { 7, 11, 11, 1171 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 1170 },
			["Exthief|nightslayer"] = { 15, 2, 82, 806 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 798 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 970 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 1000 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 1018 },
			["Creationw|nightslayer"] = { 9, 7, 25, 1018 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 1114 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 1011 },
			["Swky|nightslayer"] = { 8, 6, -103, 1096 },
			["Tycat|nightslayer"] = { 11, 3, 56, 1011 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 281 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 888 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 888 },
			["Bazook|nightslayer"] = { 9, 1, 0, 1300 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 838 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 515 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 874 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 1019 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 515 },
			["Frotted|nightslayer"] = { 8, 2, 56, 1068 },
			["Jackular|nightslayer"] = { 6, 4, 15, 802 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 1018 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 988 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 880 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 880 },
			["Mopz|nightslayer"] = { 8, 2, 56, 988 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 1018 },
			["Riggity|nightslayer"] = { 6, 4, 13, 804 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 884 },
			["Tryactin|nightslayer"] = { 6, 4, 45, 1273 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 653 },
			["Xanniepakiow|nightslayer"] = { 6, 4, 47, 1273 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 478 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 478 },
			["Astias|nightslayer"] = { 5, 3, 67, 1198 },
			["Dwg|nightslayer"] = { 5, 3, 66, 1198 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 478 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 1240 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 1198 },
			["Jamzki|nightslayer"] = { 4, 2, 3, 1198 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 361 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 1268 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 1266 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 1378 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 1018 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 1254 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 1257 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 1275 },
			["Antho|nightslayer"] = { 1, 1, -10, 1198 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 658 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 409 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 281 },
			["Pogger|nightslayer"] = { 1, 1, -23, 1295 },
			["Skulls|nightslayer"] = { 1, 1, -10, 1198 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 1198 },
			["Badzor|nightslayer"] = { 1, 0, 2, 414 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 1275 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 1018 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 414 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 1198 },
			["Sunto|nightslayer"] = { 0, 1, -13, 654 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 555 },
			["Probear|nightslayer"] = { 10, 1, 0, 554 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 909 },
			["Showhan|nightslayer"] = { 10, 0, 5, 556 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 555 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 910 },
			["Umàdbro|nightslayer"] = { 8, 2, 14, 1198 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 838 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 658 },
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 1269 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 1271 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 663 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 658 },
			["Hybro|nightslayer"] = { 2, 0, 4, 658 },
			["Paxii|nightslayer"] = { 2, 0, 3, 664 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 663 },
		},
	},
}

