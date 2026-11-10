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
	built = 1794351514,
	builtText = "2026-11-10 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clayhill|nightslayer"] = { 7, 3, 8, 695 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 695 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 658 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 658 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 658 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 541 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 589 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 461 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 461 },
			["Badzor|nightslayer"] = { 1, 0, 2, 594 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 594 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 1018 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 1018 },
			["Erinthoss|nightslayer"] = { 7, 11, 11, 1351 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 1350 },
			["Exthief|nightslayer"] = { 15, 2, 82, 986 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 978 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 1150 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 1180 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 1198 },
			["Creationw|nightslayer"] = { 9, 7, 25, 1198 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 1294 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 1191 },
			["Swky|nightslayer"] = { 8, 6, -103, 1276 },
			["Tycat|nightslayer"] = { 11, 3, 56, 1191 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 461 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 1068 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 1069 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 1018 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 695 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 1054 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 1199 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 695 },
			["Frotted|nightslayer"] = { 8, 2, 56, 1248 },
			["Jackular|nightslayer"] = { 6, 4, 15, 982 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 1198 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 1168 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 1060 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 1061 },
			["Mopz|nightslayer"] = { 8, 2, 56, 1168 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 1198 },
			["Riggity|nightslayer"] = { 6, 4, 13, 984 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 1064 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 834 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 658 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 658 },
			["Astias|nightslayer"] = { 5, 3, 67, 1378 },
			["Dwg|nightslayer"] = { 5, 3, 66, 1378 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 658 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 1420 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 1378 },
			["Jamzki|nightslayer"] = { 4, 2, 3, 1378 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 541 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 1198 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 1434 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 1437 },
			["Antho|nightslayer"] = { 1, 1, -10, 1378 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 838 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 589 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 461 },
			["Skulls|nightslayer"] = { 1, 1, -10, 1378 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 1378 },
			["Badzor|nightslayer"] = { 1, 0, 2, 594 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 1198 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 594 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 1378 },
			["Sunto|nightslayer"] = { 0, 1, -13, 834 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 735 },
			["Probear|nightslayer"] = { 10, 1, 0, 734 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 1089 },
			["Showhan|nightslayer"] = { 10, 0, 5, 736 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 735 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 1090 },
			["Umàdbro|nightslayer"] = { 8, 2, 14, 1378 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 1018 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 838 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 844 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 838 },
			["Hybro|nightslayer"] = { 2, 0, 4, 838 },
			["Paxii|nightslayer"] = { 2, 0, 3, 844 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 843 },
		},
	},
}

