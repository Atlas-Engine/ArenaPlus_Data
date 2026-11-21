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

ns.ACTIVITY_BY_REGION["us"] = {
	built = 1795283990,
	builtText = "2026-11-21 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bamboi|pagle"] = { 1, 0, 3, 47 },
			["Horniaf|pagle"] = { 1, 0, 3, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bamboi|pagle"] = { 2, 0, 6, 47 },
			["Horniaf|pagle"] = { 2, 0, 6, 47 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Aarôn|raden"] = { 0, 2, -28, 260 },
			["Bamboi|pagle"] = { 2, 0, 6, 47 },
			["Horniaf|pagle"] = { 2, 0, 6, 47 },
			["Livekirkly|raden"] = { 2, 0, 43, 252 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Skeletonzx|galakras"] = { 12, 3, 41, 480 },
			["Paulmanafort|pagle"] = { 9, 4, 20, 699 },
			["Tastydank|raden"] = { 4, 9, -38, 628 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 612 },
			["Guanyîn|raden"] = { 6, 3, 10, 668 },
			["Livekirkly|raden"] = { 6, 3, 98, 252 },
			["Nilio|raden"] = { 6, 3, 42, 640 },
			["Raijinkumax|pagle"] = { 6, 3, 27, 673 },
			["Lvl|raden"] = { 3, 4, -14, 612 },
			["Swlfty|raden"] = { 6, 1, 12, 432 },
			["Verdex|raden"] = { 3, 4, 1, 612 },
			["Sheerwill|pagle"] = { 6, 0, 31, 564 },
			["Chotter|pagle"] = { 0, 5, -18, 679 },
			["Following|pagle"] = { 3, 2, 22, 519 },
			["Lockiecan|pagle"] = { 0, 5, 0, 694 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 502 },
			["Lunchmeat|nazgrim"] = { 1, 3, -19, 432 },
			["Fullcream|galakras"] = { 1, 2, 0, 651 },
			["Aarôn|raden"] = { 0, 2, -28, 260 },
			["Bamboi|pagle"] = { 2, 0, 6, 47 },
			["Carnilumen|pagle"] = { 1, 1, 9, 432 },
			["Horniaf|pagle"] = { 2, 0, 6, 47 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 411 },
			["Polutropos|galakras"] = { 0, 2, -24, 612 },
			["Trapfiendx|raden"] = { 1, 0, 11, 562 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 410 },
		},
		[2] = {
			["Tastydank|raden"] = { 1, 0, 95, 628 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Jugganar|raden"] = { 22, 14, 100, 874 },
			["Kelmight|pagle"] = { 14, 21, 25, 792 },
			["Poixon|pagle"] = { 14, 21, 20, 792 },
			["Highwaymanx|pagle"] = { 13, 14, 41, 774 },
			["Blankisa|raden"] = { 11, 10, 91, 766 },
			["Boena|pagle"] = { 7, 9, 4, 737 },
			["Tamerak|raden"] = { 7, 9, -46, 774 },
			["Jonwald|pagle"] = { 6, 9, 42, 762 },
			["Mcjeezyy|pagle"] = { 6, 9, 42, 761 },
			["Skeletonzx|galakras"] = { 12, 3, 41, 480 },
			["Monktty|lei-shen"] = { 7, 7, -29, 750 },
			["Nebuboom|nazgrim"] = { 7, 7, 47, 889 },
			["Paulmanafort|pagle"] = { 10, 4, 30, 699 },
			["Tastydank|raden"] = { 4, 9, -38, 628 },
			["Teatable|raden"] = { 11, 2, -11, 792 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 612 },
			["Dankshots|lei-shen"] = { 10, 1, 96, 792 },
			["Guanyîn|raden"] = { 6, 5, 4, 668 },
			["Bamboi|pagle"] = { 7, 3, 40, 47 },
			["Cobrä|pagle"] = { 5, 5, 19, 733 },
			["Horniaf|pagle"] = { 7, 3, 40, 47 },
			["Lunchmeat|nazgrim"] = { 2, 8, -48, 432 },
			["Nurfme|raden"] = { 10, 0, 55, 792 },
			["Skrylur|pagle"] = { 5, 5, 19, 733 },
			["Swlfty|raden"] = { 9, 1, 34, 432 },
			["Glinna|raden"] = { 4, 5, 47, 806 },
			["Livekirkly|raden"] = { 6, 3, 98, 252 },
			["Nilio|raden"] = { 6, 3, 42, 640 },
			["Raijinkumax|pagle"] = { 6, 3, 27, 673 },
			["Sugarbear|raden"] = { 9, 0, 48, 904 },
			["Branco|raden"] = { 6, 2, -10, 792 },
			["Fctry|raden"] = { 3, 4, 46, 865 },
			["Lvl|raden"] = { 3, 4, -14, 612 },
			["Tjax|raden"] = { 2, 5, 19, 962 },
			["Verdex|raden"] = { 3, 4, 1, 612 },
			["Xzww|pagle"] = { 2, 5, 22, 945 },
			["Youcutebb|raden"] = { 4, 3, 76, 820 },
			["Çlix|pagle"] = { 1, 5, -1, 1099 },
			["Fatmanscoop|raden"] = { 2, 4, -6, 792 },
			["Sheerwill|pagle"] = { 6, 0, 31, 564 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 1100 },
			["Theweave|raden"] = { 4, 2, 32, 880 },
			["Chotter|pagle"] = { 0, 5, -18, 679 },
			["Following|pagle"] = { 3, 2, 22, 519 },
			["Lockiecan|pagle"] = { 0, 5, 0, 694 },
			["Sponsorz|raden"] = { 1, 4, 16, 848 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 502 },
			["Drgspit|pagle"] = { 2, 2, 16, 972 },
			["Rettmonk|raden"] = { 0, 4, -61, 754 },
			["Saintjuan|raden"] = { 1, 3, -6, 870 },
			["Slumpfoo|raden"] = { 1, 3, -17, 731 },
			["Stonêd|raden"] = { 2, 2, 42, 974 },
			["Xntrixxz|arugal-au"] = { 0, 4, -63, 752 },
			["Fullcream|galakras"] = { 1, 2, 0, 651 },
			["Technique|raden"] = { 1, 2, -10, 887 },
			["Aarôn|raden"] = { 0, 2, -28, 260 },
			["Bistwo|raden"] = { 0, 2, -26, 792 },
			["Booku|pagle"] = { 1, 1, 17, 738 },
			["Carnilumen|pagle"] = { 1, 1, 9, 432 },
			["Clayia|raden"] = { 1, 1, 2, 732 },
			["Drlovee|benediction"] = { 1, 1, 20, 796 },
			["Edshearin|pagle"] = { 0, 2, -6, 1355 },
			["Electabuzz|raden"] = { 0, 2, -13, 816 },
			["Euspy|raden"] = { 2, 0, 48, 1339 },
			["Imperïa|pagle"] = { 1, 1, 0, 1028 },
			["Longswôrd|pagle"] = { 2, 0, 31, 1152 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 411 },
			["Nvmxxtxx|raden"] = { 0, 2, -17, 918 },
			["Polutropos|galakras"] = { 0, 2, -24, 612 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 1063 },
			["Apechamp|raden"] = { 0, 1, -11, 876 },
			["Blankis|raden"] = { 0, 1, -5, 1033 },
			["Larvá|raden"] = { 0, 1, -10, 919 },
			["Miposhká|raden"] = { 0, 1, -15, 926 },
			["Nebupeach|nazgrim"] = { 0, 1, -7, 870 },
			["Thebucket|raden"] = { 0, 1, 0, 822 },
			["Trapfiendx|raden"] = { 1, 0, 11, 562 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 410 },
		},
		[2] = {
			["Leownaa|pagle"] = { 1, 0, 21, 733 },
			["Tastydank|raden"] = { 1, 0, 95, 628 },
		},
	},
}

