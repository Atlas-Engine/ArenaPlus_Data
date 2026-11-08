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
	built = 1794128364,
	builtText = "2026-11-08 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 4, 3, -2, 162 },
			["Lorsh|spineshatter"] = { 4, 3, 5, 163 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 16, 15, 69, 181 },
			["Brubru|spineshatter"] = { 15, 14, -82, 162 },
			["Lorsh|spineshatter"] = { 15, 14, -40, 163 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 181 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 28, 27, 109, 181 },
			["Brubru|spineshatter"] = { 35, 18, 27, 162 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 163 },
			["Ellilol|thunderstrike"] = { 19, 14, 58, 466 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, 58, 486 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 379 },
			["Drainèr|spineshatter"] = { 16, 11, -11, 515 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 181 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 529 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 521 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 584 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 644 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 553 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 519 },
			["Fedow|spineshatter"] = { 8, 7, -32, 543 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 553 },
			["Shadowpapa|spineshatter"] = { 6, 7, -57, 706 },
			["Brandyford|thunderstrike"] = { 5, 6, -28, 635 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 655 },
			["Primár|spineshatter"] = { 6, 5, 13, 655 },
			["Tsukiyou|thunderstrike"] = { 7, 4, 73, 696 },
			["Koeter|spineshatter"] = { 6, 4, 26, 705 },
			["Tamár|spineshatter"] = { 6, 4, 25, 704 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 582 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 583 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 539 },
			["Jostix|spineshatter"] = { 4, 4, 8, 531 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 655 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 656 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 520 },
			["Gushers|spineshatter"] = { 1, 3, -20, 645 },
			["Raìns|spineshatter"] = { 3, 0, 20, 712 },
			["Ânälkras|spineshatter"] = { 0, 2, -27, 631 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 404 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 584 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 584 },
		},
		[2] = {
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 706 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 584 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 40, 28, -98, 162 },
			["Lifeburst|spineshatter"] = { 28, 27, 109, 181 },
			["Ellilol|thunderstrike"] = { 28, 23, -34, 466 },
			["Shadøwsfall|thunderstrike"] = { 28, 23, -34, 486 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 163 },
			["Drainèr|spineshatter"] = { 19, 12, 16, 515 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 379 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 181 },
			["Brandyford|thunderstrike"] = { 12, 10, 27, 635 },
			["Dapqueue|spineshatter"] = { 17, 4, 68, 895 },
			["Fedow|spineshatter"] = { 13, 8, 3, 543 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 529 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 521 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 584 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 644 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 553 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 519 },
			["Grimroll|thunderstrike"] = { 11, 4, 4, 870 },
			["Shadowpapa|spineshatter"] = { 7, 7, -49, 706 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 553 },
			["Ânälkras|spineshatter"] = { 9, 3, 33, 631 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 655 },
			["Primár|spineshatter"] = { 6, 5, 13, 655 },
			["Tsukiyou|thunderstrike"] = { 7, 4, 73, 696 },
			["Dominus|spineshatter"] = { 8, 2, 29, 944 },
			["Koeter|spineshatter"] = { 6, 4, 26, 705 },
			["Stonedness|spineshatter"] = { 9, 1, 68, 1009 },
			["Tamár|spineshatter"] = { 6, 4, 25, 704 },
			["Yarz|spineshatter"] = { 6, 4, -37, 764 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 582 },
			["Ctrlaltdad|thunderstrike"] = { 4, 5, -33, 728 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 583 },
			["Notagainqt|spineshatter"] = { 3, 6, -51, 944 },
			["Ungnevird|thunderstrike"] = { 4, 5, -54, 728 },
			["Zanven|spineshatter"] = { 3, 6, -58, 985 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 539 },
			["Jostix|spineshatter"] = { 4, 4, 8, 531 },
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 1098 },
			["Emodsy|spineshatter"] = { 3, 4, -12, 871 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 655 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 656 },
			["Bjornesmag|thunderstrike"] = { 4, 2, 9, 962 },
			["Darkmid|spineshatter"] = { 3, 3, -27, 746 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 1081 },
			["Reesey|thunderstrike"] = { 4, 2, -8, 944 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 520 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 752 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 1054 },
			["Gushers|spineshatter"] = { 1, 3, -20, 645 },
			["Haftijr|spineshatter"] = { 2, 2, 5, 740 },
			["Jayserk|spineshatter"] = { 2, 2, -1, 738 },
			["Saefs|spineshatter"] = { 2, 2, -1, 739 },
			["Talenshiv|spineshatter"] = { 1, 3, -21, 1015 },
			["Gampen|spineshatter"] = { 2, 1, 15, 872 },
			["Raìns|spineshatter"] = { 3, 0, 20, 712 },
			["Subiteks|spineshatter"] = { 2, 1, 9, 735 },
			["Venthyrlol|spineshatter"] = { 2, 1, 6, 739 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 1379 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 1304 },
			["Monumént|spineshatter"] = { 0, 2, -19, 880 },
			["Oldp|spineshatter"] = { 1, 1, -18, 1381 },
			["Whiteq|spineshatter"] = { 0, 2, -19, 880 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 1072 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 1072 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 404 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 584 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 584 },
			["Maviax|spineshatter"] = { 1, 0, 10, 882 },
			["Pipøup|spineshatter"] = { 1, 0, 10, 882 },
			["Punisherx|spineshatter"] = { 0, 1, -17, 764 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 1124 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 1124 },
		},
		[2] = {
			["Blessedlol|spineshatter"] = { 1, 0, 3, 726 },
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 706 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 584 },
		},
	},
}

