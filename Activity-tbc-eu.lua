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
	built = 1794146375,
	builtText = "2026-11-08 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gushers|spineshatter"] = { 2, 0, 9, 45 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 49 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 158 },
			["Gushers|spineshatter"] = { 2, 0, 9, 45 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 49 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 158 },
			["Gushers|spineshatter"] = { 2, 0, 9, 45 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 49 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 26, 26, 91, 481 },
			["Brubru|spineshatter"] = { 33, 16, 25, 462 },
			["Lorsh|spineshatter"] = { 33, 16, 125, 464 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 481 },
			["Evaberger|spineshatter"] = { 5, 7, 6, 679 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 158 },
			["Gushers|spineshatter"] = { 2, 0, 9, 45 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 49 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 38, 28, -103, 462 },
			["Lifeburst|spineshatter"] = { 28, 27, 109, 481 },
			["Ellilol|thunderstrike"] = { 28, 23, -34, 766 },
			["Shadøwsfall|thunderstrike"] = { 28, 23, -34, 786 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 464 },
			["Drainèr|spineshatter"] = { 19, 12, 16, 815 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 679 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 481 },
			["Brandyford|thunderstrike"] = { 12, 10, 27, 935 },
			["Dapqueue|spineshatter"] = { 17, 4, 68, 1195 },
			["Fedow|spineshatter"] = { 13, 8, 3, 843 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 829 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 821 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 885 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 944 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 853 },
			["Tsukiyou|thunderstrike"] = { 11, 6, 68, 158 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 819 },
			["Grimroll|thunderstrike"] = { 11, 4, 4, 1170 },
			["Shadowpapa|spineshatter"] = { 7, 7, -49, 1006 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 853 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 955 },
			["Primár|spineshatter"] = { 6, 5, 13, 955 },
			["Dominus|spineshatter"] = { 8, 2, 29, 1245 },
			["Koeter|spineshatter"] = { 6, 4, 26, 1005 },
			["Tamár|spineshatter"] = { 6, 4, 25, 1005 },
			["Yarz|spineshatter"] = { 6, 4, -37, 1065 },
			["Ânälkras|spineshatter"] = { 6, 3, 24, 931 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 882 },
			["Ctrlaltdad|thunderstrike"] = { 4, 5, -33, 1028 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 883 },
			["Notagainqt|spineshatter"] = { 3, 6, -51, 1245 },
			["Ungnevird|thunderstrike"] = { 4, 5, -54, 1028 },
			["Zanven|spineshatter"] = { 3, 6, -58, 1285 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 840 },
			["Jostix|spineshatter"] = { 4, 4, 8, 831 },
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 1398 },
			["Emodsy|spineshatter"] = { 3, 4, -12, 1171 },
			["Stonedness|spineshatter"] = { 6, 1, 58, 1310 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 955 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 957 },
			["Bjornesmag|thunderstrike"] = { 4, 2, 9, 1263 },
			["Darkmid|spineshatter"] = { 3, 3, -27, 1046 },
			["Gushers|spineshatter"] = { 3, 3, -11, 45 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 1382 },
			["Reesey|thunderstrike"] = { 4, 2, -8, 1245 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 820 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 1052 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 1354 },
			["Haftijr|spineshatter"] = { 2, 2, 5, 1040 },
			["Jayserk|spineshatter"] = { 2, 2, -1, 1038 },
			["Saefs|spineshatter"] = { 2, 2, -1, 1040 },
			["Talenshiv|spineshatter"] = { 1, 3, -21, 1315 },
			["Gampen|spineshatter"] = { 2, 1, 15, 1172 },
			["Raìns|spineshatter"] = { 3, 0, 20, 1012 },
			["Subiteks|spineshatter"] = { 2, 1, 9, 1035 },
			["Venthyrlol|spineshatter"] = { 2, 1, 6, 1040 },
			["Monumént|spineshatter"] = { 0, 2, -19, 1180 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 49 },
			["Whiteq|spineshatter"] = { 0, 2, -19, 1180 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 1372 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 1372 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 705 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 885 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 885 },
			["Maviax|spineshatter"] = { 1, 0, 10, 1182 },
			["Pipøup|spineshatter"] = { 1, 0, 10, 1183 },
			["Punisherx|spineshatter"] = { 0, 1, -17, 1065 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 1425 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 1425 },
		},
		[2] = {
			["Blessedlol|spineshatter"] = { 1, 0, 3, 1026 },
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 1006 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 885 },
		},
	},
}

