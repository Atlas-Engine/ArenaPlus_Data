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
	built = 1794139164,
	builtText = "2026-11-08 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 38 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 38 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 4, 3, -2, 342 },
			["Lorsh|spineshatter"] = { 4, 3, 5, 343 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 38 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 28, 27, 109, 361 },
			["Brubru|spineshatter"] = { 33, 16, 25, 342 },
			["Lorsh|spineshatter"] = { 33, 16, 125, 343 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 559 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 361 },
			["Ellilol|thunderstrike"] = { 5, 7, -61, 646 },
			["Shadøwsfall|thunderstrike"] = { 5, 7, -61, 666 },
			["Drainèr|spineshatter"] = { 6, 5, -11, 695 },
			["Bannedbyai|spineshatter"] = { 4, 3, 6, 709 },
			["Stupidänimal|spineshatter"] = { 4, 3, 6, 701 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 38 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 700 },
			["Xnatry|spineshatter"] = { 3, 0, 21, 699 },
			["Crankshãft|spineshatter"] = { 1, 0, 14, 719 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 584 },
			["Jostix|spineshatter"] = { 1, 0, 14, 711 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 38, 28, -103, 342 },
			["Lifeburst|spineshatter"] = { 28, 27, 109, 361 },
			["Ellilol|thunderstrike"] = { 28, 23, -34, 646 },
			["Shadøwsfall|thunderstrike"] = { 28, 23, -34, 666 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 343 },
			["Drainèr|spineshatter"] = { 19, 12, 16, 695 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 559 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 361 },
			["Brandyford|thunderstrike"] = { 12, 10, 27, 815 },
			["Dapqueue|spineshatter"] = { 17, 4, 68, 1075 },
			["Fedow|spineshatter"] = { 13, 8, 3, 723 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 709 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 701 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 764 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 824 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 733 },
			["Tsukiyou|thunderstrike"] = { 11, 6, 68, 38 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 699 },
			["Grimroll|thunderstrike"] = { 11, 4, 4, 1050 },
			["Shadowpapa|spineshatter"] = { 7, 7, -49, 886 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 733 },
			["Ânälkras|spineshatter"] = { 9, 3, 33, 811 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 835 },
			["Primár|spineshatter"] = { 6, 5, 13, 835 },
			["Dominus|spineshatter"] = { 8, 2, 29, 1124 },
			["Koeter|spineshatter"] = { 6, 4, 26, 885 },
			["Stonedness|spineshatter"] = { 9, 1, 68, 1189 },
			["Tamár|spineshatter"] = { 6, 4, 25, 884 },
			["Yarz|spineshatter"] = { 6, 4, -37, 944 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 762 },
			["Ctrlaltdad|thunderstrike"] = { 4, 5, -33, 908 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 763 },
			["Notagainqt|spineshatter"] = { 3, 6, -51, 1124 },
			["Ungnevird|thunderstrike"] = { 4, 5, -54, 908 },
			["Zanven|spineshatter"] = { 3, 6, -58, 1165 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 719 },
			["Jostix|spineshatter"] = { 4, 4, 8, 711 },
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 1278 },
			["Emodsy|spineshatter"] = { 3, 4, -12, 1051 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 835 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 836 },
			["Bjornesmag|thunderstrike"] = { 4, 2, 9, 1142 },
			["Darkmid|spineshatter"] = { 3, 3, -27, 926 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 1261 },
			["Reesey|thunderstrike"] = { 4, 2, -8, 1124 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 700 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 932 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 1234 },
			["Gushers|spineshatter"] = { 1, 3, -20, 825 },
			["Haftijr|spineshatter"] = { 2, 2, 5, 920 },
			["Jayserk|spineshatter"] = { 2, 2, -1, 918 },
			["Saefs|spineshatter"] = { 2, 2, -1, 919 },
			["Talenshiv|spineshatter"] = { 1, 3, -21, 1195 },
			["Gampen|spineshatter"] = { 2, 1, 15, 1052 },
			["Raìns|spineshatter"] = { 3, 0, 20, 892 },
			["Subiteks|spineshatter"] = { 2, 1, 9, 915 },
			["Venthyrlol|spineshatter"] = { 2, 1, 6, 919 },
			["Monumént|spineshatter"] = { 0, 2, -19, 1060 },
			["Whiteq|spineshatter"] = { 0, 2, -19, 1060 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 1252 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 1252 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 584 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 764 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 764 },
			["Maviax|spineshatter"] = { 1, 0, 10, 1062 },
			["Pipøup|spineshatter"] = { 1, 0, 10, 1062 },
			["Punisherx|spineshatter"] = { 0, 1, -17, 944 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 1304 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 1304 },
		},
		[2] = {
			["Blessedlol|spineshatter"] = { 1, 0, 3, 906 },
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 886 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 764 },
		},
	},
}

