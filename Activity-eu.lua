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

ns.ACTIVITY_BY_REGION["eu"] = {
	built = 1795618829,
	builtText = "2026-11-25 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 3, 16, 5 },
			["Commitment|shekzeer"] = { 3, 1, 15, 40 },
			["Kakalocko|shekzeer"] = { 0, 3, -14, 47 },
			["Noneedground|shekzeer"] = { 3, 0, 63, 47 },
			["Zhili|hoptallus"] = { 0, 3, -12, 47 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 29 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 3, 16, 5 },
			["Commitment|shekzeer"] = { 4, 1, 26, 40 },
			["Kakalocko|shekzeer"] = { 0, 3, -14, 47 },
			["Noneedground|shekzeer"] = { 3, 0, 63, 47 },
			["Zhili|hoptallus"] = { 0, 3, -12, 47 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 29 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 31 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 3, 16, 5 },
			["Commitment|shekzeer"] = { 4, 1, 26, 40 },
			["Kakalocko|shekzeer"] = { 0, 3, -14, 47 },
			["Noneedground|shekzeer"] = { 3, 0, 63, 47 },
			["Zhili|hoptallus"] = { 0, 3, -12, 47 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 29 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 31 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 3, 16, 5 },
			["Commitment|shekzeer"] = { 4, 1, 26, 40 },
			["Kakalocko|shekzeer"] = { 0, 3, -14, 47 },
			["Noneedground|shekzeer"] = { 3, 0, 63, 47 },
			["Zhili|hoptallus"] = { 0, 3, -12, 47 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 29 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 31 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 19, 19, -34, 5 },
			["Marlkx|shekzeer"] = { 15, 14, 20, 938 },
			["Commitment|shekzeer"] = { 9, 11, -9, 40 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 1016 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 899 },
			["Betix|shekzeer"] = { 6, 10, -42, 952 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 1012 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 907 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 879 },
			["Srtx|shekzeer"] = { 5, 8, -47, 848 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 1009 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 944 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 1009 },
			["Xpa|everlook"] = { 7, 5, 36, 968 },
			["Zok|shekzeer"] = { 5, 7, -44, 899 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 1113 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 1056 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 1036 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 1057 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 1036 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 1188 },
			["Huanita|shekzeer"] = { 7, 1, 52, 970 },
			["Idontflinch|garalon"] = { 7, 1, 45, 1113 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 971 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 874 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 1182 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 1113 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 767 },
			["Savexx|shekzeer"] = { 2, 4, -32, 844 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 894 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 1129 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 1010 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 933 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 1113 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 1151 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 1121 },
			["Rv|shekzeer"] = { 3, 2, 39, 1359 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 1360 },
			["Tslx|shekzeer"] = { 3, 2, 19, 886 },
			["Apologies|shekzeer"] = { 2, 2, -43, 767 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 1185 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 1116 },
			["Domnox|auberdine"] = { 0, 3, -7, 990 },
			["Kakalocko|shekzeer"] = { 0, 3, -14, 47 },
			["Noneedground|shekzeer"] = { 3, 0, 63, 47 },
			["Orestis|norushen"] = { 0, 3, -6, 1293 },
			["Sapmere|auberdine"] = { 0, 3, -7, 991 },
			["Zhili|hoptallus"] = { 0, 3, -12, 47 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 933 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 1144 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 933 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 1116 },
			["Monklife|garalon"] = { 0, 2, 0, 1011 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 1168 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 29 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 1011 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 874 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 767 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 31 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 1288 },
			["Элементовик|flamegor"] = { 0, 1, -13, 1052 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 1113 },
			["Dukhdan|garalon"] = { 19, 0, 75, 1113 },
			["Luckynova|garalon"] = { 19, 0, 97, 1285 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 1113 },
			["Voljix|shekzeer"] = { 19, 0, 101, 1113 },
			["Голмаш|flamegor"] = { 0, 19, -30, 1113 },
		},
	},
}

