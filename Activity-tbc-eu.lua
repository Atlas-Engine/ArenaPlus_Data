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
	built = 1794153586,
	builtText = "2026-11-08 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Fedow|spineshatter"] = { 1, 0, 13, 14 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 14 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 5, 2, 1, 105 },
			["Сократ|anniversary"] = { 5, 2, 1, 105 },
			["Gushers|spineshatter"] = { 2, 0, 9, 165 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 169 },
			["Fedow|spineshatter"] = { 1, 0, 13, 14 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 14 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 5, 2, 1, 105 },
			["Сократ|anniversary"] = { 5, 2, 1, 105 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 278 },
			["Gushers|spineshatter"] = { 2, 0, 9, 165 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 169 },
			["Fedow|spineshatter"] = { 1, 0, 13, 14 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 14 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 16, 15, 69, 601 },
			["Brubru|spineshatter"] = { 15, 14, -82, 582 },
			["Lorsh|spineshatter"] = { 15, 14, -40, 584 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 601 },
			["Пиноккио|anniversary"] = { 5, 2, 1, 105 },
			["Сократ|anniversary"] = { 5, 2, 1, 105 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 278 },
			["Gushers|spineshatter"] = { 2, 0, 9, 165 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 169 },
			["Fedow|spineshatter"] = { 1, 0, 13, 14 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 14 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 37, 20, -3, 582 },
			["Lifeburst|spineshatter"] = { 28, 27, 109, 601 },
			["Ellilol|thunderstrike"] = { 28, 23, -34, 886 },
			["Shadøwsfall|thunderstrike"] = { 28, 23, -34, 906 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 584 },
			["Drainèr|spineshatter"] = { 19, 12, 16, 935 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 799 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 601 },
			["Brandyford|thunderstrike"] = { 12, 10, 27, 1055 },
			["Fedow|spineshatter"] = { 14, 8, 16, 14 },
			["Dapqueue|spineshatter"] = { 17, 4, 68, 1315 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 949 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 941 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 1005 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 1064 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 973 },
			["Tsukiyou|thunderstrike"] = { 11, 6, 68, 278 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 939 },
			["Grimroll|thunderstrike"] = { 11, 4, 4, 1290 },
			["Shadowpapa|spineshatter"] = { 7, 7, -49, 1127 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 973 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 1075 },
			["Primár|spineshatter"] = { 6, 5, 13, 1075 },
			["Dominus|spineshatter"] = { 8, 2, 29, 1365 },
			["Koeter|spineshatter"] = { 6, 4, 26, 1125 },
			["Tamár|spineshatter"] = { 6, 4, 25, 1125 },
			["Yarz|spineshatter"] = { 6, 4, -37, 1185 },
			["Ânälkras|spineshatter"] = { 6, 3, 24, 1051 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 1002 },
			["Ctrlaltdad|thunderstrike"] = { 4, 5, -33, 1148 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 1003 },
			["Notagainqt|spineshatter"] = { 3, 6, -51, 1365 },
			["Ungnevird|thunderstrike"] = { 4, 5, -54, 1148 },
			["Zanven|spineshatter"] = { 3, 6, -58, 1405 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 960 },
			["Jostix|spineshatter"] = { 4, 4, 8, 951 },
			["Emodsy|spineshatter"] = { 3, 4, -12, 1291 },
			["Stonedness|spineshatter"] = { 6, 1, 58, 1430 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 1075 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 1077 },
			["Пиноккио|anniversary"] = { 5, 2, 1, 105 },
			["Сократ|anniversary"] = { 5, 2, 1, 105 },
			["Bjornesmag|thunderstrike"] = { 4, 2, 9, 1383 },
			["Darkmid|spineshatter"] = { 3, 3, -27, 1167 },
			["Gushers|spineshatter"] = { 3, 3, -11, 165 },
			["Haftijr|spineshatter"] = { 3, 2, 20, 14 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 940 },
			["Jayserk|spineshatter"] = { 2, 2, -1, 1159 },
			["Saefs|spineshatter"] = { 2, 2, -1, 1160 },
			["Talenshiv|spineshatter"] = { 1, 3, -21, 1436 },
			["Weatherboy|spineshatter"] = { 1, 3, -30, 1172 },
			["Gampen|spineshatter"] = { 2, 1, 15, 1292 },
			["Raìns|spineshatter"] = { 3, 0, 20, 1132 },
			["Reesey|thunderstrike"] = { 2, 1, -12, 1365 },
			["Subiteks|spineshatter"] = { 2, 1, 9, 1155 },
			["Venthyrlol|spineshatter"] = { 2, 1, 6, 1160 },
			["Monumént|spineshatter"] = { 0, 2, -19, 1301 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 169 },
			["Whiteq|spineshatter"] = { 0, 2, -19, 1301 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 825 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 1005 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 1005 },
			["Maviax|spineshatter"] = { 1, 0, 10, 1302 },
			["Pipøup|spineshatter"] = { 1, 0, 10, 1303 },
			["Punisherx|spineshatter"] = { 0, 1, -17, 1185 },
		},
		[2] = {
			["Blessedlol|spineshatter"] = { 1, 0, 3, 1146 },
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 1127 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 1005 },
		},
	},
}

