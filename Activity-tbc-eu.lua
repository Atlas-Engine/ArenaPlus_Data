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

ns.ACTIVITY_BY_REGION["tbc-eu"] = {
	built = 1794131961,
	builtText = "2026-11-08 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 16, 15, 69, 241 },
			["Brubru|spineshatter"] = { 15, 14, -82, 222 },
			["Lorsh|spineshatter"] = { 15, 14, -40, 223 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 241 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 28, 27, 109, 241 },
			["Brubru|spineshatter"] = { 35, 18, 27, 222 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 223 },
			["Ellilol|thunderstrike"] = { 19, 14, 58, 526 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, 58, 546 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 439 },
			["Drainèr|spineshatter"] = { 16, 11, -11, 575 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 241 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 589 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 581 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 644 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 703 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 613 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 578 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 613 },
			["Brandyford|thunderstrike"] = { 5, 6, -28, 695 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 715 },
			["Primár|spineshatter"] = { 6, 5, 13, 715 },
			["Fedow|spineshatter"] = { 5, 5, -30, 603 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 642 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 643 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 599 },
			["Jostix|spineshatter"] = { 4, 4, 8, 591 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 715 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 716 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 579 },
			["Gushers|spineshatter"] = { 1, 3, -20, 705 },
			["Ânälkras|spineshatter"] = { 0, 2, -27, 691 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 464 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 644 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 644 },
		},
		[2] = {
			["Veronelol|spineshatter"] = { 1, 0, 8, 644 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 40, 28, -98, 222 },
			["Lifeburst|spineshatter"] = { 28, 27, 109, 241 },
			["Ellilol|thunderstrike"] = { 28, 23, -34, 526 },
			["Shadøwsfall|thunderstrike"] = { 28, 23, -34, 546 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 223 },
			["Drainèr|spineshatter"] = { 19, 12, 16, 575 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 439 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 241 },
			["Brandyford|thunderstrike"] = { 12, 10, 27, 695 },
			["Dapqueue|spineshatter"] = { 17, 4, 68, 955 },
			["Fedow|spineshatter"] = { 13, 8, 3, 603 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 589 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 581 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 644 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 703 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 613 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 578 },
			["Grimroll|thunderstrike"] = { 11, 4, 4, 930 },
			["Shadowpapa|spineshatter"] = { 7, 7, -49, 766 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 613 },
			["Ânälkras|spineshatter"] = { 9, 3, 33, 691 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 715 },
			["Primár|spineshatter"] = { 6, 5, 13, 715 },
			["Tsukiyou|thunderstrike"] = { 7, 4, 73, 756 },
			["Dominus|spineshatter"] = { 8, 2, 29, 1004 },
			["Koeter|spineshatter"] = { 6, 4, 26, 765 },
			["Stonedness|spineshatter"] = { 9, 1, 68, 1069 },
			["Tamár|spineshatter"] = { 6, 4, 25, 764 },
			["Yarz|spineshatter"] = { 6, 4, -37, 824 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 642 },
			["Ctrlaltdad|thunderstrike"] = { 4, 5, -33, 788 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 643 },
			["Notagainqt|spineshatter"] = { 3, 6, -51, 1004 },
			["Ungnevird|thunderstrike"] = { 4, 5, -54, 788 },
			["Zanven|spineshatter"] = { 3, 6, -58, 1045 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 599 },
			["Jostix|spineshatter"] = { 4, 4, 8, 591 },
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 1158 },
			["Emodsy|spineshatter"] = { 3, 4, -12, 931 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 715 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 716 },
			["Bjornesmag|thunderstrike"] = { 4, 2, 9, 1022 },
			["Darkmid|spineshatter"] = { 3, 3, -27, 806 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 1141 },
			["Reesey|thunderstrike"] = { 4, 2, -8, 1004 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 579 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 811 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 1114 },
			["Gushers|spineshatter"] = { 1, 3, -20, 705 },
			["Haftijr|spineshatter"] = { 2, 2, 5, 800 },
			["Jayserk|spineshatter"] = { 2, 2, -1, 798 },
			["Saefs|spineshatter"] = { 2, 2, -1, 799 },
			["Talenshiv|spineshatter"] = { 1, 3, -21, 1075 },
			["Gampen|spineshatter"] = { 2, 1, 15, 932 },
			["Raìns|spineshatter"] = { 3, 0, 20, 772 },
			["Subiteks|spineshatter"] = { 2, 1, 9, 795 },
			["Venthyrlol|spineshatter"] = { 2, 1, 6, 799 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 1439 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 1364 },
			["Monumént|spineshatter"] = { 0, 2, -19, 940 },
			["Whiteq|spineshatter"] = { 0, 2, -19, 940 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 1132 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 1132 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 464 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 644 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 644 },
			["Maviax|spineshatter"] = { 1, 0, 10, 942 },
			["Pipøup|spineshatter"] = { 1, 0, 10, 942 },
			["Punisherx|spineshatter"] = { 0, 1, -17, 824 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 1184 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 1184 },
		},
		[2] = {
			["Blessedlol|spineshatter"] = { 1, 0, 3, 785 },
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 766 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 644 },
		},
	},
}

