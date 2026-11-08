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
	built = 1794135577,
	builtText = "2026-11-08 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 16, 15, 69, 301 },
			["Brubru|spineshatter"] = { 15, 14, -82, 282 },
			["Lorsh|spineshatter"] = { 15, 14, -40, 284 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 301 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 28, 27, 109, 301 },
			["Brubru|spineshatter"] = { 35, 18, 27, 282 },
			["Lorsh|spineshatter"] = { 33, 16, 125, 284 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, 58, 606 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 499 },
			["Drainèr|spineshatter"] = { 16, 11, -11, 635 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 301 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 649 },
			["Ellilol|thunderstrike"] = { 8, 12, -72, 586 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 641 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 705 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 673 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 639 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 673 },
			["Fedow|spineshatter"] = { 5, 5, -30, 663 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 702 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 703 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 660 },
			["Jostix|spineshatter"] = { 4, 4, 8, 651 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 640 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 525 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 705 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 705 },
		},
		[2] = {
			["Veronelol|spineshatter"] = { 1, 0, 8, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 40, 28, -98, 282 },
			["Lifeburst|spineshatter"] = { 28, 27, 109, 301 },
			["Ellilol|thunderstrike"] = { 28, 23, -34, 586 },
			["Shadøwsfall|thunderstrike"] = { 28, 23, -34, 606 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 284 },
			["Drainèr|spineshatter"] = { 19, 12, 16, 635 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 499 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 301 },
			["Brandyford|thunderstrike"] = { 12, 10, 27, 755 },
			["Dapqueue|spineshatter"] = { 17, 4, 68, 1015 },
			["Fedow|spineshatter"] = { 13, 8, 3, 663 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 649 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 641 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 705 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 764 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 673 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 639 },
			["Grimroll|thunderstrike"] = { 11, 4, 4, 990 },
			["Shadowpapa|spineshatter"] = { 7, 7, -49, 826 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 673 },
			["Ânälkras|spineshatter"] = { 9, 3, 33, 751 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 775 },
			["Primár|spineshatter"] = { 6, 5, 13, 775 },
			["Tsukiyou|thunderstrike"] = { 7, 4, 73, 816 },
			["Dominus|spineshatter"] = { 8, 2, 29, 1065 },
			["Koeter|spineshatter"] = { 6, 4, 26, 825 },
			["Stonedness|spineshatter"] = { 9, 1, 68, 1130 },
			["Tamár|spineshatter"] = { 6, 4, 25, 825 },
			["Yarz|spineshatter"] = { 6, 4, -37, 885 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 702 },
			["Ctrlaltdad|thunderstrike"] = { 4, 5, -33, 848 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 703 },
			["Notagainqt|spineshatter"] = { 3, 6, -51, 1065 },
			["Ungnevird|thunderstrike"] = { 4, 5, -54, 848 },
			["Zanven|spineshatter"] = { 3, 6, -58, 1105 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 660 },
			["Jostix|spineshatter"] = { 4, 4, 8, 651 },
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 1218 },
			["Emodsy|spineshatter"] = { 3, 4, -12, 991 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 775 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 777 },
			["Bjornesmag|thunderstrike"] = { 4, 2, 9, 1083 },
			["Darkmid|spineshatter"] = { 3, 3, -27, 866 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 1202 },
			["Reesey|thunderstrike"] = { 4, 2, -8, 1065 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 640 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 872 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 1174 },
			["Gushers|spineshatter"] = { 1, 3, -20, 766 },
			["Haftijr|spineshatter"] = { 2, 2, 5, 860 },
			["Jayserk|spineshatter"] = { 2, 2, -1, 858 },
			["Saefs|spineshatter"] = { 2, 2, -1, 860 },
			["Talenshiv|spineshatter"] = { 1, 3, -21, 1135 },
			["Gampen|spineshatter"] = { 2, 1, 15, 992 },
			["Raìns|spineshatter"] = { 3, 0, 20, 832 },
			["Subiteks|spineshatter"] = { 2, 1, 9, 855 },
			["Venthyrlol|spineshatter"] = { 2, 1, 6, 860 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 1425 },
			["Monumént|spineshatter"] = { 0, 2, -19, 1000 },
			["Whiteq|spineshatter"] = { 0, 2, -19, 1000 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 1192 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 1192 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 525 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 705 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 705 },
			["Maviax|spineshatter"] = { 1, 0, 10, 1002 },
			["Pipøup|spineshatter"] = { 1, 0, 10, 1003 },
			["Punisherx|spineshatter"] = { 0, 1, -17, 885 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 1245 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 1245 },
		},
		[2] = {
			["Blessedlol|spineshatter"] = { 1, 0, 3, 846 },
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 826 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 705 },
		},
	},
}

