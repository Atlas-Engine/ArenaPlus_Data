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
	built = 1794574762,
	builtText = "2026-11-13 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 821 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 820 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 727 },
			["Сократ|anniversary"] = { 18, 14, 0, 734 },
			["Gloomybrook|spineshatter"] = { 13, 16, -30, 888 },
			["Patrickwoo|spineshatter"] = { 13, 16, -30, 887 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 804 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 805 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 933 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 926 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 953 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 961 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 808 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 808 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 825 },
			["Bellael|spineshatter"] = { 11, 7, 39, 872 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 1047 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 943 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 851 },
			["Primár|spineshatter"] = { 11, 7, -23, 852 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 1049 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 944 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 1090 },
			["Udrii|spineshatter"] = { 7, 6, -37, 1145 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 899 },
			["Garad|spineshatter"] = { 4, 8, -37, 825 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 899 },
			["Sylex|spineshatter"] = { 8, 4, 17, 797 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 825 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 1067 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 825 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 842 },
			["Doób|spineshatter"] = { 6, 4, 18, 841 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 840 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 855 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 855 },
			["Maxj|spineshatter"] = { 3, 4, 4, 881 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 1121 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 1140 },
			["Dewood|spineshatter"] = { 4, 1, -10, 1207 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 1005 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 1206 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 1005 },
			["Brubru|spineshatter"] = { 2, 2, 11, 931 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 928 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 1090 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 1005 },
			["Magicién|spineshatter"] = { 2, 1, 1, 1005 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 1380 },
			["Iog|spineshatter"] = { 1, 1, -7, 1380 },
			["Doko|spineshatter"] = { 1, 0, 9, 1094 },
			["Forksache|spineshatter"] = { 0, 1, -23, 956 },
			["Walida|spineshatter"] = { 1, 0, 9, 1094 },
		},
	},
}

