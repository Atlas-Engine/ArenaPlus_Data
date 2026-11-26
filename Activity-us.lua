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
	built = 1795730391,
	builtText = "2026-11-26 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Carnilumen|pagle"] = { 0, 1, -2, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tamerak|raden"] = { 8, 0, 63, 94 },
			["Dankorbs|pagle"] = { 0, 4, -38, 138 },
			["Retmainxd|raden"] = { 0, 4, -38, 138 },
			["Hueland|raden"] = { 0, 3, -9, 101 },
			["Carnilumen|pagle"] = { 0, 1, -2, 44 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tamerak|raden"] = { 13, 1, 96, 94 },
			["Crepes|pagle"] = { 2, 5, -15, 199 },
			["Dankenstein|lei-shen"] = { 2, 5, -16, 200 },
			["Dankorbs|pagle"] = { 0, 4, -38, 138 },
			["Retmainxd|raden"] = { 0, 4, -38, 138 },
			["Hueland|raden"] = { 0, 3, -9, 101 },
			["Bluntsntits|pagle"] = { 0, 1, -17, 317 },
			["Carnilumen|pagle"] = { 0, 1, -2, 44 },
			["Glinna|raden"] = { 0, 1, -8, 224 },
			["Nilio|raden"] = { 0, 1, -2, 259 },
			["Sombodee|pagle"] = { 1, 0, 18, 283 },
			["Wowamazingcc|raden"] = { 1, 0, 16, 284 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tamerak|raden"] = { 13, 1, 96, 94 },
			["Crepes|pagle"] = { 2, 5, -15, 199 },
			["Dankenstein|lei-shen"] = { 2, 5, -16, 200 },
			["Dankorbs|pagle"] = { 0, 4, -38, 138 },
			["Gooseus|pagle"] = { 4, 0, 32, 600 },
			["Retmainxd|raden"] = { 0, 4, -38, 138 },
			["Skeletonzx|galakras"] = { 4, 0, 15, 600 },
			["Hueland|raden"] = { 0, 3, -9, 101 },
			["Møonxz|raden"] = { 0, 2, -16, 618 },
			["Poizøønzx|galakras"] = { 2, 0, 5, 408 },
			["Bluntsntits|pagle"] = { 0, 1, -17, 317 },
			["Carnilumen|pagle"] = { 0, 1, -2, 44 },
			["Glinna|raden"] = { 0, 1, -8, 224 },
			["Nilio|raden"] = { 0, 1, -2, 259 },
			["Sombodee|pagle"] = { 1, 0, 18, 283 },
			["Wowamazingcc|raden"] = { 1, 0, 16, 284 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 29, 12, 64, 985 },
			["Stealurgirl|raden"] = { 29, 12, 64, 985 },
			["Guanyîn|raden"] = { 14, 13, 68, 802 },
			["Radendznuts|raden"] = { 14, 13, 163, 802 },
			["Xander|raden"] = { 14, 8, 100, 772 },
			["Blunttraumah|immerseus"] = { 5, 11, 1, 1045 },
			["Theweave|raden"] = { 12, 4, 59, 764 },
			["Crepes|pagle"] = { 5, 10, -28, 199 },
			["Dankenstein|lei-shen"] = { 5, 10, -32, 200 },
			["Gørdàwg|pagle"] = { 14, 1, 85, 764 },
			["Mindprison|raden"] = { 14, 1, 59, 764 },
			["Darkferocity|pagle"] = { 5, 9, 100, 944 },
			["Oneeightsèvn|pagle"] = { 5, 9, 98, 961 },
			["Reflex|raden"] = { 6, 8, 123, 807 },
			["Someidiot|raden"] = { 8, 6, 26, 944 },
			["Tamerak|raden"] = { 13, 1, 96, 94 },
			["Dankendwarf|pagle"] = { 5, 8, -52, 952 },
			["Imperïa|pagle"] = { 6, 6, -5, 1196 },
			["Vseraphim|immerseus"] = { 6, 6, -5, 1197 },
			["Wowamazingcc|raden"] = { 6, 6, 17, 284 },
			["Annoyinghunt|immerseus"] = { 5, 6, 28, 936 },
			["Blankisa|raden"] = { 5, 6, 9, 935 },
			["Äñtòñçhígûrh|raden"] = { 2, 8, -62, 764 },
			["Spala|pagle"] = { 5, 5, 1, 764 },
			["Spq|pagle"] = { 3, 7, -47, 801 },
			["Syphonfiltèr|pagle"] = { 4, 6, 43, 1233 },
			["Virtuoso|raden"] = { 2, 8, -62, 836 },
			["Emanuely|pagle"] = { 0, 9, -28, 1155 },
			["Marcão|pagle"] = { 0, 9, -47, 1161 },
			["Mwk|pagle"] = { 2, 7, -64, 944 },
			["Nebupeach|nazgrim"] = { 2, 7, -55, 1021 },
			["Youcutebb|raden"] = { 9, 0, 93, 1043 },
			["Questopresto|nazgrim"] = { 5, 3, 53, 764 },
			["Sombodee|pagle"] = { 4, 4, 16, 283 },
			["Statticw|arugal-au"] = { 5, 3, 36, 785 },
			["Cupidxp|raden"] = { 1, 6, -46, 1213 },
			["Donceno|nazgrim"] = { 2, 5, 1, 1157 },
			["Kxle|raden"] = { 6, 1, -3, 1304 },
			["Prettigood|raden"] = { 4, 3, 2, 1010 },
			["Slumpfoo|raden"] = { 3, 4, -18, 1077 },
			["Sponsor|raden"] = { 7, 0, 52, 1045 },
			["Tastetheshot|raden"] = { 1, 6, -59, 1124 },
			["Trapfiendx|raden"] = { 4, 3, 64, 1017 },
			["Apechamp|raden"] = { 4, 2, 20, 1139 },
			["Çlix|pagle"] = { 1, 5, -9, 1044 },
			["Hueland|raden"] = { 2, 4, 15, 101 },
			["Hustlehard|pagle"] = { 3, 3, 45, 1178 },
			["Xatica|pagle"] = { 3, 3, 11, 1249 },
			["Amazingufo|pagle"] = { 3, 2, 18, 856 },
			["Daddypompum|raden"] = { 3, 2, 70, 924 },
			["Deleteh|pagle"] = { 4, 1, 87, 826 },
			["Mythologic|nazgrim"] = { 4, 1, 35, 1124 },
			["Rimewitch|pagle"] = { 3, 2, 37, 856 },
			["Spongeboby|pagle"] = { 3, 2, 32, 923 },
			["Dankorbs|pagle"] = { 0, 4, -38, 138 },
			["Elkaazz|lei-shen"] = { 0, 4, -12, 1124 },
			["Fingérplay|galakras"] = { 1, 3, -11, 866 },
			["Gooseus|pagle"] = { 4, 0, 32, 600 },
			["Retmainxd|raden"] = { 0, 4, -38, 138 },
			["Rëyy|raden"] = { 2, 2, 10, 993 },
			["Shanktits|galakras"] = { 2, 2, 10, 873 },
			["Skeletonzx|galakras"] = { 4, 0, 15, 600 },
			["Chotter|pagle"] = { 0, 3, -9, 865 },
			["Dat|raden"] = { 1, 2, 23, 853 },
			["Kartika|raden"] = { 1, 2, -12, 944 },
			["Lockiecan|pagle"] = { 0, 3, 0, 867 },
			["Stàn|immerseus"] = { 2, 1, -4, 1092 },
			["Xièxiè|raden"] = { 1, 2, -3, 944 },
			["Zappytits|galakras"] = { 1, 2, -6, 916 },
			["Blinnker|pagle"] = { 0, 2, -11, 1108 },
			["Iljockerll|pagle"] = { 0, 2, 0, 944 },
			["Møonxz|raden"] = { 0, 2, -16, 618 },
			["Nitenurse|pagle"] = { 2, 0, 19, 1169 },
			["Poizøønzx|galakras"] = { 2, 0, 5, 408 },
			["Polutropos|galakras"] = { 1, 1, -1, 969 },
			["Vajra|raden"] = { 1, 1, -5, 969 },
			["Badabign|pagle"] = { 0, 1, -7, 1000 },
			["Bagahbonesx|pagle"] = { 0, 1, -6, 1124 },
			["Bigdkslams|raden"] = { 1, 0, 10, 1082 },
			["Blacksiide|pagle"] = { 0, 1, -12, 1249 },
			["Blinnki|pagle"] = { 0, 1, -3, 1098 },
			["Bluntsntits|pagle"] = { 0, 1, -17, 317 },
			["Carnilumen|pagle"] = { 0, 1, -2, 44 },
			["Glinna|raden"] = { 0, 1, -8, 224 },
			["Iljpll|pagle"] = { 0, 1, -4, 1087 },
			["Kushgodx|raden"] = { 0, 1, -9, 944 },
			["Nilio|raden"] = { 0, 1, -2, 259 },
			["Sandbunny|pagle"] = { 0, 1, -14, 969 },
			["Shatterbust|raden"] = { 1, 0, 15, 944 },
			["ßløømtoðèàth|raden"] = { 1, 0, 15, 944 },
			["Technique|raden"] = { 1, 0, 13, 885 },
		},
	},
}

