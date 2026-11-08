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
	built = 1794157165,
	builtText = "2026-11-08 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Zralog|spineshatter"] = { 3, 3, -18, 19 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 5, 2, 1, 164 },
			["Сократ|anniversary"] = { 5, 2, 1, 164 },
			["Zralog|spineshatter"] = { 3, 3, -18, 19 },
			["Fedow|spineshatter"] = { 1, 0, 13, 73 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 73 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 60 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 60 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 5, 2, 1, 164 },
			["Сократ|anniversary"] = { 5, 2, 1, 164 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 338 },
			["Zralog|spineshatter"] = { 3, 3, -18, 19 },
			["Gushers|spineshatter"] = { 2, 0, 9, 224 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 229 },
			["Fedow|spineshatter"] = { 1, 0, 13, 73 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 73 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 60 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 60 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 16, 15, 69, 661 },
			["Brubru|spineshatter"] = { 15, 14, -82, 642 },
			["Lorsh|spineshatter"] = { 15, 14, -40, 643 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 661 },
			["Пиноккио|anniversary"] = { 5, 2, 1, 164 },
			["Сократ|anniversary"] = { 5, 2, 1, 164 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 338 },
			["Zralog|spineshatter"] = { 3, 3, -18, 19 },
			["Gushers|spineshatter"] = { 2, 0, 9, 224 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 229 },
			["Fedow|spineshatter"] = { 1, 0, 13, 73 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 73 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 60 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 60 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 37, 20, -3, 642 },
			["Lifeburst|spineshatter"] = { 28, 27, 109, 661 },
			["Ellilol|thunderstrike"] = { 28, 23, -34, 946 },
			["Shadøwsfall|thunderstrike"] = { 28, 23, -34, 966 },
			["Lorsh|spineshatter"] = { 33, 17, 118, 643 },
			["Evaberger|spineshatter"] = { 13, 15, 39, 859 },
			["Drainèr|spineshatter"] = { 16, 11, -11, 995 },
			["Woodmanx|spineshatter"] = { 15, 12, 128, 661 },
			["Brandyford|thunderstrike"] = { 12, 10, 27, 1115 },
			["Dapqueue|spineshatter"] = { 17, 4, 68, 1375 },
			["Bannedbyai|spineshatter"] = { 10, 10, -35, 1009 },
			["Stupidänimal|spineshatter"] = { 10, 10, -32, 1001 },
			["Carrÿ|spineshatter"] = { 5, 13, -101, 1064 },
			["Fedow|spineshatter"] = { 11, 7, -3, 73 },
			["Stungødx|spineshatter"] = { 5, 13, -42, 1124 },
			["Sunodaix|spineshatter"] = { 9, 8, 50, 1033 },
			["Tsukiyou|thunderstrike"] = { 11, 6, 68, 338 },
			["Xnatry|spineshatter"] = { 11, 6, -4, 999 },
			["Grimroll|thunderstrike"] = { 11, 4, 4, 1350 },
			["Shadowpapa|spineshatter"] = { 7, 7, -49, 1186 },
			["Druidcoachxx|spineshatter"] = { 8, 5, 11, 1033 },
			["Imgæy|spineshatter"] = { 6, 5, 2, 1135 },
			["Primár|spineshatter"] = { 6, 5, 13, 1135 },
			["Dominus|spineshatter"] = { 8, 2, 29, 1424 },
			["Koeter|spineshatter"] = { 6, 4, 26, 1185 },
			["Tamár|spineshatter"] = { 6, 4, 25, 1185 },
			["Yarz|spineshatter"] = { 6, 4, -37, 1244 },
			["Clozapine|spineshatter"] = { 6, 3, 35, 1062 },
			["Ctrlaltdad|thunderstrike"] = { 4, 5, -33, 1208 },
			["Fnrxz|spineshatter"] = { 6, 3, 36, 1063 },
			["Notagainqt|spineshatter"] = { 3, 6, -51, 1424 },
			["Ungnevird|thunderstrike"] = { 4, 5, -54, 1208 },
			["Crankshãft|spineshatter"] = { 4, 4, 8, 1019 },
			["Jostix|spineshatter"] = { 4, 4, 8, 1011 },
			["Tobirino|thunderstrike"] = { 4, 3, 25, 1135 },
			["Töppis|thunderstrike"] = { 4, 3, 24, 1136 },
			["Пиноккио|anniversary"] = { 5, 2, 1, 164 },
			["Сократ|anniversary"] = { 5, 2, 1, 164 },
			["Darkmid|spineshatter"] = { 3, 3, -27, 1226 },
			["Gushers|spineshatter"] = { 3, 3, -11, 224 },
			["Zralog|spineshatter"] = { 3, 3, -18, 19 },
			["Haftijr|spineshatter"] = { 3, 2, 20, 73 },
			["Lebsterr|spineshatter"] = { 1, 4, -47, 1000 },
			["Jayserk|spineshatter"] = { 2, 2, -1, 1218 },
			["Saefs|spineshatter"] = { 2, 2, -1, 1219 },
			["Weatherboy|spineshatter"] = { 1, 3, -30, 1232 },
			["Emodsy|spineshatter"] = { 2, 1, 9, 1351 },
			["Gampen|spineshatter"] = { 2, 1, 15, 1352 },
			["Raìns|spineshatter"] = { 3, 0, 20, 1192 },
			["Reesey|thunderstrike"] = { 2, 1, -12, 1424 },
			["Subiteks|spineshatter"] = { 2, 1, 9, 1215 },
			["Venthyrlol|spineshatter"] = { 2, 1, 6, 1220 },
			["Ânälkras|spineshatter"] = { 0, 2, -27, 1111 },
			["Monumént|spineshatter"] = { 0, 2, -19, 1360 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 229 },
			["Whiteq|spineshatter"] = { 0, 2, -19, 1360 },
			["Davedosx|spineshatter"] = { 0, 1, -10, 884 },
			["Dogwoman|spineshatter"] = { 0, 1, -10, 1064 },
			["Håftbefehl|spineshatter"] = { 0, 1, -7, 1064 },
			["Maviax|spineshatter"] = { 1, 0, 10, 1362 },
			["Pipøup|spineshatter"] = { 1, 0, 10, 1362 },
			["Punisherx|spineshatter"] = { 0, 1, -17, 1244 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 60 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 60 },
		},
		[2] = {
			["Blessedlol|spineshatter"] = { 1, 0, 3, 1206 },
			["Shadowpapa|spineshatter"] = { 0, 1, -12, 1186 },
			["Veronelol|spineshatter"] = { 1, 0, 8, 1064 },
		},
	},
}

