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

ns.ACTIVITY_BY_REGION["us"] = {
	built = 1795111191,
	builtText = "2026-11-19 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Crepes|pagle"] = { 4, 0, 8, 43 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 5, 0, 20, 125 },
			["Crepes|pagle"] = { 4, 0, 8, 43 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 72 },
			["Destrotensei|pagle"] = { 0, 2, -2, 64 },
			["Untaked|pagle"] = { 0, 1, -4, 102 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 5, 0, 20, 125 },
			["Crepes|pagle"] = { 4, 0, 8, 43 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 72 },
			["Destrotensei|pagle"] = { 0, 2, -2, 64 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 334 },
			["Untaked|pagle"] = { 0, 1, -4, 102 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kamikylol|pagle"] = { 7, 11, -10, 611 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 512 },
			["Stattic|arugal-au"] = { 11, 4, 70, 512 },
			["Musician|raden"] = { 9, 5, 2, 541 },
			["Stealurgirl|raden"] = { 9, 5, 2, 517 },
			["Trapfiendx|raden"] = { 7, 6, 86, 638 },
			["Nilio|raden"] = { 6, 6, -7, 555 },
			["Statticdr|arugal-au"] = { 6, 6, 7, 661 },
			["Zurrago|pagle"] = { 7, 5, -2, 694 },
			["Chotter|pagle"] = { 0, 8, -9, 720 },
			["Polutropos|galakras"] = { 3, 5, -23, 694 },
			["Atiko|galakras"] = { 4, 3, 19, 694 },
			["Crepes|pagle"] = { 6, 0, 16, 43 },
			["Juul|raden"] = { 2, 4, -10, 532 },
			["Maddlexie|pagle"] = { 2, 4, -22, 531 },
			["Moneymay|pagle"] = { 3, 3, 17, 487 },
			["Møønzx|galakras"] = { 5, 0, 20, 125 },
			["Scorched|pagle"] = { 3, 2, 5, 612 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 72 },
			["Destrotensei|pagle"] = { 0, 2, -2, 64 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 334 },
			["Untaked|pagle"] = { 0, 1, -4, 102 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 25, 20, -22, 541 },
			["Stealurgirl|raden"] = { 25, 20, -22, 517 },
			["Kelmight|pagle"] = { 15, 10, 60, 740 },
			["Poixon|pagle"] = { 16, 9, 58, 740 },
			["Møønzx|galakras"] = { 14, 9, 42, 125 },
			["Rektalrager|galakras"] = { 8, 13, -43, 842 },
			["Spreadpres|pagle"] = { 11, 10, -37, 813 },
			["Stàn|immerseus"] = { 11, 10, 11, 813 },
			["Kamikylol|pagle"] = { 8, 12, -1, 611 },
			["Statticdr|arugal-au"] = { 6, 13, -14, 661 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 1414 },
			["Speakington|raden"] = { 12, 4, 118, 756 },
			["Atreyuz|galakras"] = { 9, 6, 9, 747 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 512 },
			["Dankenbrew|lei-shen"] = { 9, 6, -6, 796 },
			["Glinna|raden"] = { 8, 7, -24, 853 },
			["Nazmirr|pagle"] = { 10, 5, 118, 859 },
			["Stattic|arugal-au"] = { 11, 4, 70, 512 },
			["Horniaf|pagle"] = { 6, 7, 6, 884 },
			["Trapfiendx|raden"] = { 7, 6, 86, 638 },
			["Nilio|raden"] = { 6, 6, -7, 555 },
			["Zurrago|pagle"] = { 7, 5, -2, 694 },
			["Imperïa|pagle"] = { 7, 4, 17, 967 },
			["Smokinweedle|raden"] = { 7, 4, 35, 818 },
			["Vseraphim|immerseus"] = { 7, 4, 17, 976 },
			["Youcutebb|raden"] = { 7, 4, 155, 826 },
			["Prettigood|raden"] = { 3, 7, -34, 786 },
			["Tastetheshot|raden"] = { 3, 7, -4, 788 },
			["Apechamp|raden"] = { 1, 7, -51, 736 },
			["Atiko|galakras"] = { 4, 4, 13, 694 },
			["Chotter|pagle"] = { 0, 8, -9, 720 },
			["Dojadruid|raden"] = { 5, 3, 34, 872 },
			["Laraçroft|raden"] = { 5, 3, 29, 872 },
			["Polutropos|galakras"] = { 3, 5, -23, 694 },
			["Praísed|raden"] = { 3, 5, -14, 838 },
			["Sponsorz|raden"] = { 1, 7, 15, 735 },
			["Tharealnerds|pagle"] = { 2, 6, -48, 843 },
			["Tylenolmaxed|raden"] = { 3, 5, -14, 840 },
			["Dojareborn|pagle"] = { 4, 3, 20, 835 },
			["Dunkyb|raden"] = { 4, 3, 18, 841 },
			["Ginastel|raden"] = { 4, 3, 22, 832 },
			["Crepes|pagle"] = { 6, 0, 16, 43 },
			["Hairyarms|raden"] = { 2, 4, 4, 1036 },
			["Juul|raden"] = { 2, 4, -10, 532 },
			["Maddlexie|pagle"] = { 2, 4, -22, 531 },
			["Moneymay|pagle"] = { 3, 3, 17, 487 },
			["Jonwald|pagle"] = { 4, 1, 65, 818 },
			["Mcjeezyy|pagle"] = { 4, 1, 65, 819 },
			["Retmainxd|raden"] = { 2, 3, 2, 940 },
			["Scorched|pagle"] = { 3, 2, 5, 612 },
			["Electabuzz|raden"] = { 2, 2, 24, 1042 },
			["Genuinely|raden"] = { 0, 4, -10, 991 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 72 },
			["Äñtòñçhígûrh|raden"] = { 3, 0, 34, 866 },
			["Chorizero|immerseus"] = { 3, 0, 9, 1286 },
			["Fctry|raden"] = { 2, 1, 31, 740 },
			["Huntardspec|raden"] = { 1, 2, 10, 995 },
			["Kushgodx|raden"] = { 0, 3, -29, 918 },
			["Monuei|raden"] = { 3, 0, 18, 827 },
			["Nyloras|pagle"] = { 3, 0, 17, 998 },
			["Saintjuan|raden"] = { 2, 1, 13, 964 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 1273 },
			["Virtuoso|raden"] = { 3, 0, 34, 866 },
			["Xntrixxz|arugal-au"] = { 3, 0, 5, 797 },
			["Dankendwarf|pagle"] = { 0, 2, -2, 966 },
			["Destrotensei|pagle"] = { 0, 2, -2, 64 },
			["Drlovee|benediction"] = { 2, 0, 37, 892 },
			["Heriberto|pagle"] = { 0, 2, -7, 874 },
			["Jhazito|pagle"] = { 0, 2, -4, 900 },
			["Notgaylordz|raden"] = { 0, 2, 0, 969 },
			["Pglapuñalada|raden"] = { 0, 2, -4, 899 },
			["Putinga|pagle"] = { 0, 2, -13, 918 },
			["Rëyy|raden"] = { 2, 0, 24, 946 },
			["Tamerak|raden"] = { 1, 1, 11, 957 },
			["Thebucket|raden"] = { 0, 2, 0, 985 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 334 },
			["Dankenstein|lei-shen"] = { 0, 1, -8, 955 },
			["Drgewch|raden"] = { 1, 0, 14, 814 },
			["Pablosanchez|raden"] = { 0, 1, -12, 902 },
			["Qtx|raden"] = { 1, 0, 14, 814 },
			["Untaked|pagle"] = { 0, 1, -4, 102 },
		},
	},
}

