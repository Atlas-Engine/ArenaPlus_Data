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
	built = 1794142772,
	builtText = "2026-11-08 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 98 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 98 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 26, 26, 91, 421 },
			["Brubru|spineshatter"] = { 33, 16, 25, 402 },
			["Lorsh|spineshatter"] = { 33, 16, 125, 404 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 619 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 421 },
			["Ellilol|thunderstrike"] = { 5, 7, -61, 706 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 98 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 38, 28, -103, 402 },
			["Lifeburst|spineshatter"] = { 28, 27, 109, 421 },
			["Ellilol|thunderstrike"] = { 28, 23, -34, 706 },
			["Shadøwsfall|thunderstrike"] = { 28, 23, -34, 726 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 404 },
			["Drainèr|spineshatter"] = { 19, 12, 16, 755 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 619 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 421 },
			["Brandyford|thunderstrike"] = { 12, 10, 27, 875 },
			["Dapqueue|spineshatter"] = { 17, 4, 68, 1135 },
			["Fedow|spineshatter"] = { 13, 8, 3, 783 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 769 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 761 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 825 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 884 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 793 },
			["Tsukiyou|thunderstrike"] = { 11, 6, 68, 98 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 759 },
			["Grimroll|thunderstrike"] = { 11, 4, 4, 1110 },
			["Shadowpapa|spineshatter"] = { 7, 7, -49, 946 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 793 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 895 },
			["Primár|spineshatter"] = { 6, 5, 13, 895 },
			["Dominus|spineshatter"] = { 8, 2, 29, 1185 },
			["Koeter|spineshatter"] = { 6, 4, 26, 945 },
			["Tamár|spineshatter"] = { 6, 4, 25, 945 },
			["Yarz|spineshatter"] = { 6, 4, -37, 1005 },
			["Ânälkras|spineshatter"] = { 6, 3, 24, 871 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 822 },
			["Ctrlaltdad|thunderstrike"] = { 4, 5, -33, 968 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 823 },
			["Notagainqt|spineshatter"] = { 3, 6, -51, 1185 },
			["Ungnevird|thunderstrike"] = { 4, 5, -54, 968 },
			["Zanven|spineshatter"] = { 3, 6, -58, 1225 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 779 },
			["Jostix|spineshatter"] = { 4, 4, 8, 771 },
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 1338 },
			["Emodsy|spineshatter"] = { 3, 4, -12, 1111 },
			["Stonedness|spineshatter"] = { 6, 1, 58, 1250 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 895 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 897 },
			["Bjornesmag|thunderstrike"] = { 4, 2, 9, 1203 },
			["Darkmid|spineshatter"] = { 3, 3, -27, 986 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 1322 },
			["Reesey|thunderstrike"] = { 4, 2, -8, 1185 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 760 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 992 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 1294 },
			["Gushers|spineshatter"] = { 1, 3, -20, 886 },
			["Haftijr|spineshatter"] = { 2, 2, 5, 980 },
			["Jayserk|spineshatter"] = { 2, 2, -1, 978 },
			["Saefs|spineshatter"] = { 2, 2, -1, 980 },
			["Talenshiv|spineshatter"] = { 1, 3, -21, 1255 },
			["Gampen|spineshatter"] = { 2, 1, 15, 1112 },
			["Raìns|spineshatter"] = { 3, 0, 20, 952 },
			["Subiteks|spineshatter"] = { 2, 1, 9, 975 },
			["Venthyrlol|spineshatter"] = { 2, 1, 6, 980 },
			["Monumént|spineshatter"] = { 0, 2, -19, 1120 },
			["Whiteq|spineshatter"] = { 0, 2, -19, 1120 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 1312 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 1312 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 645 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 825 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 825 },
			["Maviax|spineshatter"] = { 1, 0, 10, 1122 },
			["Pipøup|spineshatter"] = { 1, 0, 10, 1123 },
			["Punisherx|spineshatter"] = { 0, 1, -17, 1005 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 1365 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 1365 },
		},
		[2] = {
			["Blessedlol|spineshatter"] = { 1, 0, 3, 966 },
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 946 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 825 },
		},
	},
}

