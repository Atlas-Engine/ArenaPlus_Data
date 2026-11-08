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
	built = 1794149976,
	builtText = "2026-11-08 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 5, 2, 1, 45 },
			["Сократ|anniversary"] = { 5, 2, 1, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 5, 2, 1, 45 },
			["Сократ|anniversary"] = { 5, 2, 1, 45 },
			["Gushers|spineshatter"] = { 2, 0, 9, 105 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 109 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 5, 2, 1, 45 },
			["Сократ|anniversary"] = { 5, 2, 1, 45 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 218 },
			["Gushers|spineshatter"] = { 2, 0, 9, 105 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 109 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 16, 15, 69, 541 },
			["Brubru|spineshatter"] = { 15, 14, -82, 522 },
			["Lorsh|spineshatter"] = { 15, 14, -40, 524 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 541 },
			["Пиноккио|anniversary"] = { 5, 2, 1, 45 },
			["Сократ|anniversary"] = { 5, 2, 1, 45 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 218 },
			["Gushers|spineshatter"] = { 2, 0, 9, 105 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 109 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 38, 25, -66, 522 },
			["Lifeburst|spineshatter"] = { 28, 27, 109, 541 },
			["Ellilol|thunderstrike"] = { 28, 23, -34, 826 },
			["Shadøwsfall|thunderstrike"] = { 28, 23, -34, 846 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 524 },
			["Drainèr|spineshatter"] = { 19, 12, 16, 875 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 739 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 541 },
			["Brandyford|thunderstrike"] = { 12, 10, 27, 995 },
			["Dapqueue|spineshatter"] = { 17, 4, 68, 1255 },
			["Fedow|spineshatter"] = { 13, 8, 3, 903 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 889 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 881 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 945 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 1004 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 913 },
			["Tsukiyou|thunderstrike"] = { 11, 6, 68, 218 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 879 },
			["Grimroll|thunderstrike"] = { 11, 4, 4, 1230 },
			["Shadowpapa|spineshatter"] = { 7, 7, -49, 1066 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 913 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 1015 },
			["Primár|spineshatter"] = { 6, 5, 13, 1015 },
			["Dominus|spineshatter"] = { 8, 2, 29, 1305 },
			["Koeter|spineshatter"] = { 6, 4, 26, 1065 },
			["Tamár|spineshatter"] = { 6, 4, 25, 1065 },
			["Yarz|spineshatter"] = { 6, 4, -37, 1125 },
			["Ânälkras|spineshatter"] = { 6, 3, 24, 991 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 942 },
			["Ctrlaltdad|thunderstrike"] = { 4, 5, -33, 1088 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 943 },
			["Notagainqt|spineshatter"] = { 3, 6, -51, 1305 },
			["Ungnevird|thunderstrike"] = { 4, 5, -54, 1088 },
			["Zanven|spineshatter"] = { 3, 6, -58, 1345 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 900 },
			["Jostix|spineshatter"] = { 4, 4, 8, 891 },
			["Emodsy|spineshatter"] = { 3, 4, -12, 1231 },
			["Stonedness|spineshatter"] = { 6, 1, 58, 1370 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 1015 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 1017 },
			["Пиноккио|anniversary"] = { 5, 2, 1, 45 },
			["Сократ|anniversary"] = { 5, 2, 1, 45 },
			["Bjornesmag|thunderstrike"] = { 4, 2, 9, 1323 },
			["Darkmid|spineshatter"] = { 3, 3, -27, 1106 },
			["Gushers|spineshatter"] = { 3, 3, -11, 105 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 880 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 1112 },
			["Haftijr|spineshatter"] = { 2, 2, 5, 1100 },
			["Jayserk|spineshatter"] = { 2, 2, -1, 1098 },
			["Saefs|spineshatter"] = { 2, 2, -1, 1100 },
			["Talenshiv|spineshatter"] = { 1, 3, -21, 1375 },
			["Gampen|spineshatter"] = { 2, 1, 15, 1232 },
			["Raìns|spineshatter"] = { 3, 0, 20, 1072 },
			["Reesey|thunderstrike"] = { 2, 1, -12, 1305 },
			["Subiteks|spineshatter"] = { 2, 1, 9, 1095 },
			["Venthyrlol|spineshatter"] = { 2, 1, 6, 1100 },
			["Monumént|spineshatter"] = { 0, 2, -19, 1240 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 109 },
			["Whiteq|spineshatter"] = { 0, 2, -19, 1240 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 1432 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 1432 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 765 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 945 },
			["Druidcoachx|spineshatter"] = { 1, 0, 11, 1414 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 945 },
			["Maviax|spineshatter"] = { 1, 0, 10, 1242 },
			["Pipøup|spineshatter"] = { 1, 0, 10, 1243 },
			["Punisherx|spineshatter"] = { 0, 1, -17, 1125 },
		},
		[2] = {
			["Blessedlol|spineshatter"] = { 1, 0, 3, 1086 },
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 1066 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 945 },
		},
	},
}

