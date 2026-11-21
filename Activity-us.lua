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
	built = 1795280391,
	builtText = "2026-11-21 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bamboi|pagle"] = { 1, 0, 3, 12 },
			["Horniaf|pagle"] = { 1, 0, 3, 24 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bamboi|pagle"] = { 1, 0, 3, 12 },
			["Horniaf|pagle"] = { 1, 0, 3, 24 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Aarôn|raden"] = { 0, 2, -28, 200 },
			["Livekirkly|raden"] = { 2, 0, 43, 192 },
			["Bamboi|pagle"] = { 1, 0, 3, 12 },
			["Horniaf|pagle"] = { 1, 0, 3, 24 },
			["Mòónfirebeam|raden"] = { 1, 0, 8, 351 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 350 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Skeletonzx|galakras"] = { 12, 3, 41, 421 },
			["Paulmanafort|pagle"] = { 9, 4, 20, 639 },
			["Tastydank|raden"] = { 4, 9, -38, 568 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 552 },
			["Cobrä|pagle"] = { 5, 5, 19, 673 },
			["Skrylur|pagle"] = { 5, 5, 19, 673 },
			["Guanyîn|raden"] = { 6, 3, 10, 608 },
			["Livekirkly|raden"] = { 6, 3, 98, 192 },
			["Nilio|raden"] = { 6, 3, 42, 580 },
			["Raijinkumax|pagle"] = { 6, 3, 27, 613 },
			["Boena|pagle"] = { 5, 3, 30, 677 },
			["Monktty|lei-shen"] = { 5, 3, 9, 690 },
			["Lvl|raden"] = { 3, 4, -14, 552 },
			["Swlfty|raden"] = { 6, 1, 12, 372 },
			["Verdex|raden"] = { 3, 4, 1, 552 },
			["Sheerwill|pagle"] = { 6, 0, 31, 504 },
			["Chotter|pagle"] = { 0, 5, -18, 619 },
			["Following|pagle"] = { 3, 2, 22, 459 },
			["Lockiecan|pagle"] = { 0, 5, 0, 634 },
			["Blankisa|raden"] = { 3, 1, 50, 706 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 442 },
			["Highwaymanx|pagle"] = { 2, 2, 8, 714 },
			["Lunchmeat|nazgrim"] = { 1, 3, -19, 372 },
			["Rettmonk|raden"] = { 0, 4, -61, 694 },
			["Slumpfoo|raden"] = { 1, 3, -17, 671 },
			["Fullcream|galakras"] = { 1, 2, 0, 591 },
			["Jonwald|pagle"] = { 0, 3, -25, 702 },
			["Mcjeezyy|pagle"] = { 0, 3, -25, 701 },
			["Aarôn|raden"] = { 0, 2, -28, 200 },
			["Booku|pagle"] = { 1, 1, 17, 678 },
			["Carnilumen|pagle"] = { 1, 1, 9, 372 },
			["Clayia|raden"] = { 1, 1, 2, 672 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 351 },
			["Polutropos|galakras"] = { 0, 2, -24, 552 },
			["Tamerak|raden"] = { 0, 2, -28, 714 },
			["Xntrixxz|arugal-au"] = { 0, 2, -29, 692 },
			["Bamboi|pagle"] = { 1, 0, 3, 12 },
			["Horniaf|pagle"] = { 1, 0, 3, 24 },
			["Trapfiendx|raden"] = { 1, 0, 11, 502 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 350 },
		},
		[2] = {
			["Leownaa|pagle"] = { 1, 0, 21, 673 },
			["Tastydank|raden"] = { 1, 0, 95, 568 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Jugganar|raden"] = { 22, 14, 100, 814 },
			["Kelmight|pagle"] = { 14, 21, 25, 732 },
			["Poixon|pagle"] = { 14, 21, 20, 732 },
			["Highwaymanx|pagle"] = { 13, 14, 41, 714 },
			["Blankisa|raden"] = { 11, 10, 91, 706 },
			["Boena|pagle"] = { 7, 9, 4, 677 },
			["Tamerak|raden"] = { 7, 9, -46, 714 },
			["Jonwald|pagle"] = { 6, 9, 42, 702 },
			["Mcjeezyy|pagle"] = { 6, 9, 42, 701 },
			["Skeletonzx|galakras"] = { 12, 3, 41, 421 },
			["Monktty|lei-shen"] = { 7, 7, -29, 690 },
			["Nebuboom|nazgrim"] = { 7, 7, 47, 829 },
			["Paulmanafort|pagle"] = { 10, 4, 30, 639 },
			["Tastydank|raden"] = { 4, 9, -38, 568 },
			["Teatable|raden"] = { 11, 2, -11, 732 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 552 },
			["Dankshots|lei-shen"] = { 10, 1, 96, 732 },
			["Guanyîn|raden"] = { 6, 5, 4, 608 },
			["Cobrä|pagle"] = { 5, 5, 19, 673 },
			["Lunchmeat|nazgrim"] = { 2, 8, -48, 372 },
			["Nurfme|raden"] = { 10, 0, 55, 732 },
			["Skrylur|pagle"] = { 5, 5, 19, 673 },
			["Swlfty|raden"] = { 9, 1, 34, 372 },
			["Bamboi|pagle"] = { 6, 3, 37, 12 },
			["Glinna|raden"] = { 4, 5, 47, 746 },
			["Horniaf|pagle"] = { 6, 3, 37, 24 },
			["Livekirkly|raden"] = { 6, 3, 98, 192 },
			["Nilio|raden"] = { 6, 3, 42, 580 },
			["Raijinkumax|pagle"] = { 6, 3, 27, 613 },
			["Sugarbear|raden"] = { 9, 0, 48, 844 },
			["Branco|raden"] = { 6, 2, -10, 732 },
			["Fctry|raden"] = { 3, 4, 46, 805 },
			["Lvl|raden"] = { 3, 4, -14, 552 },
			["Tjax|raden"] = { 2, 5, 19, 902 },
			["Verdex|raden"] = { 3, 4, 1, 552 },
			["Xzww|pagle"] = { 2, 5, 22, 885 },
			["Youcutebb|raden"] = { 4, 3, 76, 760 },
			["Çlix|pagle"] = { 1, 5, -1, 1039 },
			["Fatmanscoop|raden"] = { 2, 4, -6, 732 },
			["Sheerwill|pagle"] = { 6, 0, 31, 504 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 1040 },
			["Theweave|raden"] = { 4, 2, 32, 820 },
			["Chotter|pagle"] = { 0, 5, -18, 619 },
			["Following|pagle"] = { 3, 2, 22, 459 },
			["Lockiecan|pagle"] = { 0, 5, 0, 634 },
			["Sponsorz|raden"] = { 1, 4, 16, 788 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 442 },
			["Drgspit|pagle"] = { 2, 2, 16, 912 },
			["Rettmonk|raden"] = { 0, 4, -61, 694 },
			["Saintjuan|raden"] = { 1, 3, -6, 810 },
			["Slumpfoo|raden"] = { 1, 3, -17, 671 },
			["Stonêd|raden"] = { 2, 2, 42, 914 },
			["Xntrixxz|arugal-au"] = { 0, 4, -63, 692 },
			["Fullcream|galakras"] = { 1, 2, 0, 591 },
			["Technique|raden"] = { 1, 2, -10, 827 },
			["Aarôn|raden"] = { 0, 2, -28, 200 },
			["Bistwo|raden"] = { 0, 2, -26, 732 },
			["Booku|pagle"] = { 1, 1, 17, 678 },
			["Carnilumen|pagle"] = { 1, 1, 9, 372 },
			["Clayia|raden"] = { 1, 1, 2, 672 },
			["Drlovee|benediction"] = { 1, 1, 20, 736 },
			["Edshearin|pagle"] = { 0, 2, -6, 1295 },
			["Electabuzz|raden"] = { 0, 2, -13, 756 },
			["Euspy|raden"] = { 2, 0, 48, 1279 },
			["Imperïa|pagle"] = { 1, 1, 0, 968 },
			["Longswôrd|pagle"] = { 2, 0, 31, 1092 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 351 },
			["Nvmxxtxx|raden"] = { 0, 2, -17, 858 },
			["Polutropos|galakras"] = { 0, 2, -24, 552 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 1003 },
			["Apechamp|raden"] = { 0, 1, -11, 816 },
			["Blankis|raden"] = { 0, 1, -5, 973 },
			["Larvá|raden"] = { 0, 1, -10, 859 },
			["Miposhká|raden"] = { 0, 1, -15, 866 },
			["Nebupeach|nazgrim"] = { 0, 1, -7, 810 },
			["Thebucket|raden"] = { 0, 1, 0, 762 },
			["Trapfiendx|raden"] = { 1, 0, 11, 502 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 350 },
		},
		[2] = {
			["Leownaa|pagle"] = { 1, 0, 21, 673 },
			["Tastydank|raden"] = { 1, 0, 95, 568 },
		},
	},
}

