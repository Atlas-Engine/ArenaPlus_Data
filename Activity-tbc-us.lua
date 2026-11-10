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
	built = 1794337112,
	builtText = "2026-11-10 01:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 301 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 349 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 221 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 221 },
			["Badzor|nightslayer"] = { 1, 0, 2, 354 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 354 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clayhill|nightslayer"] = { 7, 3, 8, 455 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 455 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 593 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 418 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 418 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 418 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 301 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 598 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 349 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 221 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 221 },
			["Badzor|nightslayer"] = { 1, 0, 2, 354 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 354 },
			["Sunto|nightslayer"] = { 0, 1, -13, 594 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 495 },
			["Probear|nightslayer"] = { 10, 1, 0, 494 },
			["Showhan|nightslayer"] = { 10, 0, 5, 496 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 495 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 598 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 604 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 598 },
			["Hybro|nightslayer"] = { 2, 0, 4, 598 },
			["Paxii|nightslayer"] = { 2, 0, 3, 604 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 603 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 18, 6, 53, 778 },
			["Puchikong|nightslayer"] = { 18, 6, 72, 778 },
			["Erinthoss|nightslayer"] = { 7, 11, 11, 1111 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 1110 },
			["Exthief|nightslayer"] = { 15, 2, 82, 746 },
			["Heartwork|nightslayer"] = { 15, 2, 71, 738 },
			["Kohhan|nightslayer"] = { 9, 8, -21, 910 },
			["Tnyni|nightslayer"] = { 9, 8, -21, 940 },
			["Bajamode|nightslayer"] = { 9, 7, 36, 958 },
			["Creationw|nightslayer"] = { 9, 7, 25, 958 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 1054 },
			["Fannypacker|nightslayer"] = { 11, 3, 56, 951 },
			["Swky|nightslayer"] = { 8, 6, -103, 1036 },
			["Tycat|nightslayer"] = { 11, 3, 56, 951 },
			["Turnpiike|dreamscythe"] = { 6, 7, -77, 221 },
			["Ïxïxïxïx|nightslayer"] = { 3, 9, -48, 828 },
			["Zasekel|nightslayer"] = { 3, 9, -33, 829 },
			["Bazook|nightslayer"] = { 9, 1, 0, 1240 },
			["Bonecrank|dreamscythe"] = { 8, 2, 28, 778 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 455 },
			["Creationlawl|nightslayer"] = { 7, 3, 22, 814 },
			["Erpaderpxx|nightslayer"] = { 4, 6, -27, 959 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 455 },
			["Frotted|nightslayer"] = { 8, 2, 56, 1008 },
			["Jackular|nightslayer"] = { 6, 4, 15, 742 },
			["Kinkysblues|nightslayer"] = { 4, 6, -31, 958 },
			["Lizzygrey|nightslayer"] = { 8, 2, 47, 928 },
			["Manthony|dreamscythe"] = { 6, 4, 45, 820 },
			["Mirpugs|nightslayer"] = { 7, 3, 22, 821 },
			["Mopz|nightslayer"] = { 8, 2, 56, 928 },
			["Redrabbit|nightslayer"] = { 7, 3, 27, 958 },
			["Riggity|nightslayer"] = { 6, 4, 13, 744 },
			["Ssk|dreamscythe"] = { 6, 4, 45, 824 },
			["Tryactin|nightslayer"] = { 6, 4, 45, 1213 },
			["Ulríck|dreamscythe"] = { 9, 1, 68, 593 },
			["Xanniepakiow|nightslayer"] = { 6, 4, 47, 1213 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 418 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 418 },
			["Astias|nightslayer"] = { 5, 3, 67, 1138 },
			["Dwg|nightslayer"] = { 5, 3, 66, 1138 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 418 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 1180 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 1138 },
			["Jamzki|nightslayer"] = { 4, 2, 3, 1138 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 301 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 1208 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 1206 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 1318 },
			["Deezbloomz|nightslayer"] = { 2, 2, -16, 958 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 1194 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 1197 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 1215 },
			["Antho|nightslayer"] = { 1, 1, -10, 1138 },
			["Couchman|dreamscythe"] = { 2, 0, 8, 598 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 349 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 221 },
			["Pogger|nightslayer"] = { 1, 1, -23, 1235 },
			["Skulls|nightslayer"] = { 1, 1, -10, 1138 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 1138 },
			["Badzor|nightslayer"] = { 1, 0, 2, 354 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 1215 },
			["Oldernewb|nightslayer"] = { 0, 1, -5, 958 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 354 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 1138 },
			["Sunto|nightslayer"] = { 0, 1, -13, 594 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 495 },
			["Probear|nightslayer"] = { 10, 1, 0, 494 },
			["Sharkittyy|dreamscythe"] = { 9, 1, 17, 849 },
			["Showhan|nightslayer"] = { 10, 0, 5, 496 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 495 },
			["Swackedx|dreamscythe"] = { 9, 1, 25, 850 },
			["Umàdbro|nightslayer"] = { 8, 2, 14, 1138 },
			["Yuumim|dreamscythe"] = { 9, 1, 48, 778 },
			["Clayhill|nightslayer"] = { 0, 3, -66, 598 },
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 1209 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 1211 },
			["Boogernator|nightslayer"] = { 2, 0, 0, 604 },
			["Bubulle|nightslayer"] = { 2, 0, 4, 598 },
			["Hybro|nightslayer"] = { 2, 0, 4, 598 },
			["Paxii|nightslayer"] = { 2, 0, 3, 604 },
			["Ryzp|nightslayer"] = { 2, 0, 0, 603 },
		},
	},
}

