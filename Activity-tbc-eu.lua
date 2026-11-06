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
	built = 1793969962,
	builtText = "2026-11-06 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Vitaøne|spineshatter"] = { 0, 2, -33, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Vitaøne|spineshatter"] = { 0, 2, -33, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Vitaøne|spineshatter"] = { 0, 2, -33, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cordycepsxx|thunderstrike"] = { 10, 6, 50, 716 },
			["Tauntcruise|thunderstrike"] = { 10, 6, 38, 716 },
			["Vincentxd|spineshatter"] = { 9, 2, 9, 704 },
			["Vitaøne|spineshatter"] = { 0, 2, -33, 41 },
			["Undralol|thunderstrike"] = { 0, 1, -7, 644 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Vidykravicka|thunderstrike"] = { 60, 43, 5, 767 },
			["Rubyjunior|thunderstrike"] = { 37, 27, -100, 982 },
			["Daisyqt|spineshatter"] = { 30, 27, 89, 752 },
			["Izabelyrg|spineshatter"] = { 30, 27, -5, 751 },
			["Demetsky|spineshatter"] = { 30, 26, -7, 795 },
			["Sutlucco|spineshatter"] = { 30, 26, -7, 799 },
			["Senikss|thunderstrike"] = { 23, 16, 48, 767 },
			["Anhedønia|spineshatter"] = { 20, 15, 21, 911 },
			["Bluebelle|spineshatter"] = { 20, 15, 21, 911 },
			["Bannedbyai|spineshatter"] = { 21, 11, 52, 896 },
			["Stupidänimal|spineshatter"] = { 21, 11, 74, 866 },
			["Gtwoge|spineshatter"] = { 12, 13, -44, 828 },
			["Shapx|spineshatter"] = { 12, 13, -46, 824 },
			["Druidcoachx|spineshatter"] = { 15, 9, -170, 847 },
			["Garad|spineshatter"] = { 12, 12, -30, 764 },
			["Reasonicus|spineshatter"] = { 16, 8, 66, 722 },
			["Shâpeshifty|spineshatter"] = { 13, 11, -52, 1042 },
			["Spectatorpov|spineshatter"] = { 13, 11, -52, 1042 },
			["Tyzin|spineshatter"] = { 12, 12, -26, 764 },
			["Vincentxd|spineshatter"] = { 16, 8, 32, 704 },
			["Nutellaskurk|spineshatter"] = { 9, 14, -75, 939 },
			["Xolaire|spineshatter"] = { 9, 14, -84, 953 },
			["Cordycepsxx|thunderstrike"] = { 14, 8, 64, 716 },
			["Tauntcruise|thunderstrike"] = { 14, 8, 46, 716 },
			["Aegia|spineshatter"] = { 10, 11, 36, 860 },
			["Allyoubro|spineshatter"] = { 12, 9, 17, 869 },
			["Velerath|spineshatter"] = { 12, 9, 68, 975 },
			["Prlee|spineshatter"] = { 12, 8, 33, 975 },
			["Drainèr|spineshatter"] = { 8, 11, -79, 824 },
			["Karolxgodx|spineshatter"] = { 10, 9, 83, 868 },
			["Norbertpl|spineshatter"] = { 10, 9, 83, 869 },
			["Xnatry|spineshatter"] = { 8, 11, -91, 824 },
			["Baqera|thunderstrike"] = { 10, 8, 126, 750 },
			["Crazyhomeles|thunderstrike"] = { 10, 8, 126, 809 },
			["Imgæy|spineshatter"] = { 9, 8, 17, 883 },
			["Brandyford|thunderstrike"] = { 13, 3, 89, 846 },
			["Broimmortal|spineshatter"] = { 6, 9, -14, 1045 },
			["Desm|spineshatter"] = { 6, 9, -63, 1044 },
			["Snobillacin|spineshatter"] = { 9, 6, 114, 859 },
			["Uweboll|spineshatter"] = { 9, 6, 29, 824 },
			["Chainlinkx|spineshatter"] = { 8, 6, 1, 1263 },
			["Sindrix|spineshatter"] = { 8, 6, 1, 1263 },
			["Fedow|spineshatter"] = { 9, 4, 61, 932 },
			["Predatorxd|spineshatter"] = { 9, 4, 88, 963 },
			["Rli|spineshatter"] = { 4, 9, -47, 935 },
			["Summerjam|spineshatter"] = { 4, 9, -40, 928 },
			["Tvveet|spineshatter"] = { 7, 5, -28, 903 },
			["Alisanne|spineshatter"] = { 5, 5, 18, 1251 },
			["Argho|spineshatter"] = { 5, 5, 0, 915 },
			["Buddx|spineshatter"] = { 5, 5, 0, 884 },
			["Dewood|spineshatter"] = { 7, 3, 34, 850 },
			["Matum|spineshatter"] = { 8, 2, 45, 861 },
			["Norwoodseven|spineshatter"] = { 7, 3, -51, 824 },
			["Sheezlong|spineshatter"] = { 5, 5, 18, 1184 },
			["Soulfacter|spineshatter"] = { 8, 2, 47, 953 },
			["Thegreyold|spineshatter"] = { 7, 3, 36, 851 },
			["Tsap|spineshatter"] = { 5, 5, -31, 728 },
			["Blacklogic|thunderstrike"] = { 5, 4, 24, 1004 },
			["Decodex|thunderstrike"] = { 5, 4, 24, 1004 },
			["Crankshãft|spineshatter"] = { 6, 2, 48, 1184 },
			["Evev|spineshatter"] = { 7, 1, 9, 1142 },
			["Jasondelulu|spineshatter"] = { 7, 1, 22, 1142 },
			["Jebx|spineshatter"] = { 6, 2, 60, 1184 },
			["Maliamu|spineshatter"] = { 6, 2, 49, 800 },
			["Telyar|spineshatter"] = { 3, 5, -16, 930 },
			["Tocadiscoo|spineshatter"] = { 6, 2, 59, 804 },
			["Uranaji|spineshatter"] = { 3, 5, -18, 836 },
			["Adpt|spineshatter"] = { 4, 3, 31, 1084 },
			["Chopchopmdfk|spineshatter"] = { 4, 3, 28, 1084 },
			["Bananagram|spineshatter"] = { 4, 2, 7, 1055 },
			["Jaguár|spineshatter"] = { 4, 2, 7, 1055 },
			["Knackypwp|spineshatter"] = { 4, 2, 64, 986 },
			["Skillexe|thunderstrike"] = { 2, 4, -37, 824 },
			["Stonedness|spineshatter"] = { 4, 2, 50, 987 },
			["Undralol|thunderstrike"] = { 1, 5, -70, 644 },
			["Xionc|thunderstrike"] = { 2, 4, -25, 824 },
			["Añt|spineshatter"] = { 4, 1, 26, 1261 },
			["Koeter|spineshatter"] = { 1, 4, -39, 860 },
			["Simplerøgue|spineshatter"] = { 4, 1, 31, 1268 },
			["Bjornesmag|thunderstrike"] = { 2, 2, 0, 991 },
			["Kirlynn|spineshatter"] = { 2, 2, -14, 963 },
			["Mercatore|spineshatter"] = { 4, 0, 34, 1179 },
			["Nutcracky|spineshatter"] = { 3, 1, -2, 1239 },
			["Ânälkras|spineshatter"] = { 1, 2, -3, 1032 },
			["Dotgyneco|thunderstrike"] = { 0, 3, -25, 1235 },
			["Minð|thunderstrike"] = { 0, 3, -43, 1230 },
			["Natturall|spineshatter"] = { 1, 2, -4, 1032 },
			["Neore|thunderstrike"] = { 1, 2, -20, 824 },
			["Pinkwidow|spineshatter"] = { 1, 2, -10, 1224 },
			["Ronchonx|spineshatter"] = { 2, 1, -14, 1184 },
			["Thpi|spineshatter"] = { 2, 1, -12, 1184 },
			["Waldhafen|thunderstrike"] = { 1, 2, -6, 824 },
			["Wyrmhide|spineshatter"] = { 1, 2, -18, 824 },
			["Cnidr|spineshatter"] = { 2, 0, 16, 1418 },
			["Iog|spineshatter"] = { 2, 0, 18, 1418 },
			["Olaketal|spineshatter"] = { 1, 1, 0, 974 },
			["Pørksláyer|spineshatter"] = { 1, 1, 3, 976 },
			["Vitaøne|spineshatter"] = { 0, 2, -33, 41 },
			["Babawarhammr|spineshatter"] = { 0, 1, -1, 1097 },
			["Beastdemon|spineshatter"] = { 1, 0, 2, 1117 },
			["Deathdragonx|spineshatter"] = { 1, 0, 2, 1119 },
			["Kamilzhgpl|spineshatter"] = { 0, 1, -19, 1004 },
			["Notagainqt|spineshatter"] = { 0, 1, -12, 1413 },
			["Rootyibaws|spineshatter"] = { 0, 1, -19, 1181 },
		},
		[3] = {
			["Avada|thunderstrike"] = { 0, 1, -10, 906 },
			["Brandyford|thunderstrike"] = { 0, 1, -10, 846 },
			["Brokenpriezt|spineshatter"] = { 1, 0, 7, 888 },
			["Bungaa|thunderstrike"] = { 0, 1, -9, 914 },
			["Kentx|spineshatter"] = { 1, 0, 7, 901 },
			["Polechydes|spineshatter"] = { 1, 0, 7, 892 },
			["Tremorkin|spineshatter"] = { 1, 0, 7, 903 },
			["Tsukiyou|thunderstrike"] = { 0, 1, -10, 915 },
			["Velicopter|spineshatter"] = { 1, 0, 7, 903 },
		},
	},
}

