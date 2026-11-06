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
	built = 1793973564,
	builtText = "2026-11-06 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Vitaøne|spineshatter"] = { 0, 2, -33, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Vitaøne|spineshatter"] = { 0, 2, -33, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Vitaøne|spineshatter"] = { 0, 2, -33, 101 },
			["Undralol|thunderstrike"] = { 0, 1, -7, 704 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Vidykravicka|thunderstrike"] = { 57, 36, 119, 827 },
			["Rubyjunior|thunderstrike"] = { 37, 27, -100, 1042 },
			["Daisyqt|spineshatter"] = { 30, 27, 89, 812 },
			["Izabelyrg|spineshatter"] = { 30, 27, -5, 811 },
			["Demetsky|spineshatter"] = { 30, 26, -7, 855 },
			["Sutlucco|spineshatter"] = { 30, 26, -7, 859 },
			["Senikss|thunderstrike"] = { 23, 16, 48, 827 },
			["Anhedønia|spineshatter"] = { 20, 15, 21, 971 },
			["Bluebelle|spineshatter"] = { 20, 15, 21, 971 },
			["Bannedbyai|spineshatter"] = { 21, 11, 52, 956 },
			["Stupidänimal|spineshatter"] = { 21, 11, 74, 926 },
			["Gtwoge|spineshatter"] = { 12, 13, -44, 888 },
			["Shapx|spineshatter"] = { 12, 13, -46, 884 },
			["Druidcoachx|spineshatter"] = { 15, 9, -170, 907 },
			["Garad|spineshatter"] = { 12, 12, -30, 824 },
			["Reasonicus|spineshatter"] = { 16, 8, 66, 782 },
			["Shâpeshifty|spineshatter"] = { 13, 11, -52, 1102 },
			["Spectatorpov|spineshatter"] = { 13, 11, -52, 1102 },
			["Tyzin|spineshatter"] = { 12, 12, -26, 824 },
			["Vincentxd|spineshatter"] = { 16, 8, 32, 764 },
			["Nutellaskurk|spineshatter"] = { 9, 14, -75, 999 },
			["Xolaire|spineshatter"] = { 9, 14, -84, 1014 },
			["Cordycepsxx|thunderstrike"] = { 14, 8, 64, 776 },
			["Tauntcruise|thunderstrike"] = { 14, 8, 46, 776 },
			["Aegia|spineshatter"] = { 10, 11, 36, 920 },
			["Allyoubro|spineshatter"] = { 12, 9, 17, 929 },
			["Velerath|spineshatter"] = { 12, 9, 68, 1035 },
			["Prlee|spineshatter"] = { 12, 8, 33, 1035 },
			["Drainèr|spineshatter"] = { 8, 11, -79, 884 },
			["Karolxgodx|spineshatter"] = { 10, 9, 83, 928 },
			["Norbertpl|spineshatter"] = { 10, 9, 83, 929 },
			["Xnatry|spineshatter"] = { 8, 11, -91, 884 },
			["Baqera|thunderstrike"] = { 10, 8, 126, 810 },
			["Crazyhomeles|thunderstrike"] = { 10, 8, 126, 869 },
			["Imgæy|spineshatter"] = { 9, 8, 17, 943 },
			["Brandyford|thunderstrike"] = { 13, 3, 89, 906 },
			["Broimmortal|spineshatter"] = { 6, 9, -14, 1105 },
			["Desm|spineshatter"] = { 6, 9, -63, 1104 },
			["Snobillacin|spineshatter"] = { 9, 6, 114, 919 },
			["Uweboll|spineshatter"] = { 9, 6, 29, 884 },
			["Chainlinkx|spineshatter"] = { 8, 6, 1, 1323 },
			["Sindrix|spineshatter"] = { 8, 6, 1, 1323 },
			["Fedow|spineshatter"] = { 9, 4, 61, 992 },
			["Predatorxd|spineshatter"] = { 9, 4, 88, 1023 },
			["Rli|spineshatter"] = { 4, 9, -47, 995 },
			["Summerjam|spineshatter"] = { 4, 9, -40, 988 },
			["Tvveet|spineshatter"] = { 7, 5, -28, 963 },
			["Alisanne|spineshatter"] = { 5, 5, 18, 1311 },
			["Argho|spineshatter"] = { 5, 5, 0, 975 },
			["Buddx|spineshatter"] = { 5, 5, 0, 944 },
			["Dewood|spineshatter"] = { 7, 3, 34, 910 },
			["Matum|spineshatter"] = { 8, 2, 45, 921 },
			["Norwoodseven|spineshatter"] = { 7, 3, -51, 884 },
			["Sheezlong|spineshatter"] = { 5, 5, 18, 1244 },
			["Soulfacter|spineshatter"] = { 8, 2, 47, 1013 },
			["Thegreyold|spineshatter"] = { 7, 3, 36, 911 },
			["Tsap|spineshatter"] = { 5, 5, -31, 788 },
			["Blacklogic|thunderstrike"] = { 5, 4, 24, 1064 },
			["Decodex|thunderstrike"] = { 5, 4, 24, 1064 },
			["Crankshãft|spineshatter"] = { 6, 2, 48, 1244 },
			["Evev|spineshatter"] = { 7, 1, 9, 1202 },
			["Jasondelulu|spineshatter"] = { 7, 1, 22, 1202 },
			["Jebx|spineshatter"] = { 6, 2, 60, 1244 },
			["Maliamu|spineshatter"] = { 6, 2, 49, 860 },
			["Telyar|spineshatter"] = { 3, 5, -16, 990 },
			["Tocadiscoo|spineshatter"] = { 6, 2, 59, 865 },
			["Uranaji|spineshatter"] = { 3, 5, -18, 896 },
			["Adpt|spineshatter"] = { 4, 3, 31, 1144 },
			["Chopchopmdfk|spineshatter"] = { 4, 3, 28, 1144 },
			["Bananagram|spineshatter"] = { 4, 2, 7, 1115 },
			["Jaguár|spineshatter"] = { 4, 2, 7, 1115 },
			["Knackypwp|spineshatter"] = { 4, 2, 64, 1046 },
			["Skillexe|thunderstrike"] = { 2, 4, -37, 884 },
			["Stonedness|spineshatter"] = { 4, 2, 50, 1047 },
			["Undralol|thunderstrike"] = { 1, 5, -70, 704 },
			["Xionc|thunderstrike"] = { 2, 4, -25, 884 },
			["Añt|spineshatter"] = { 4, 1, 26, 1321 },
			["Koeter|spineshatter"] = { 1, 4, -39, 920 },
			["Simplerøgue|spineshatter"] = { 4, 1, 31, 1328 },
			["Bjornesmag|thunderstrike"] = { 2, 2, 0, 1051 },
			["Kirlynn|spineshatter"] = { 2, 2, -14, 1023 },
			["Mercatore|spineshatter"] = { 4, 0, 34, 1239 },
			["Nutcracky|spineshatter"] = { 3, 1, -2, 1299 },
			["Ânälkras|spineshatter"] = { 1, 2, -3, 1092 },
			["Dotgyneco|thunderstrike"] = { 0, 3, -25, 1295 },
			["Minð|thunderstrike"] = { 0, 3, -43, 1290 },
			["Natturall|spineshatter"] = { 1, 2, -4, 1092 },
			["Neore|thunderstrike"] = { 1, 2, -20, 884 },
			["Pinkwidow|spineshatter"] = { 1, 2, -10, 1284 },
			["Ronchonx|spineshatter"] = { 2, 1, -14, 1244 },
			["Thpi|spineshatter"] = { 2, 1, -12, 1244 },
			["Waldhafen|thunderstrike"] = { 1, 2, -6, 884 },
			["Wyrmhide|spineshatter"] = { 1, 2, -18, 884 },
			["Olaketal|spineshatter"] = { 1, 1, 0, 1034 },
			["Pørksláyer|spineshatter"] = { 1, 1, 3, 1036 },
			["Vitaøne|spineshatter"] = { 0, 2, -33, 101 },
			["Babawarhammr|spineshatter"] = { 0, 1, -1, 1157 },
			["Beastdemon|spineshatter"] = { 1, 0, 2, 1177 },
			["Deathdragonx|spineshatter"] = { 1, 0, 2, 1179 },
			["Kamilzhgpl|spineshatter"] = { 0, 1, -19, 1064 },
			["Rootyibaws|spineshatter"] = { 0, 1, -19, 1241 },
		},
		[3] = {
			["Avada|thunderstrike"] = { 0, 1, -10, 966 },
			["Brandyford|thunderstrike"] = { 0, 1, -10, 906 },
			["Brokenpriezt|spineshatter"] = { 1, 0, 7, 948 },
			["Bungaa|thunderstrike"] = { 0, 1, -9, 974 },
			["Kentx|spineshatter"] = { 1, 0, 7, 961 },
			["Polechydes|spineshatter"] = { 1, 0, 7, 952 },
			["Tremorkin|spineshatter"] = { 1, 0, 7, 963 },
			["Tsukiyou|thunderstrike"] = { 0, 1, -10, 975 },
			["Velicopter|spineshatter"] = { 1, 0, 7, 963 },
		},
	},
}

