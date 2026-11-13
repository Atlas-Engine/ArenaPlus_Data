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
	built = 1794570877,
	builtText = "2026-11-13 06:54 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 6, 1, 47, 662 },
			["Сократ|anniversary"] = { 6, 1, 47, 669 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 757 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 755 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 662 },
			["Сократ|anniversary"] = { 18, 14, 0, 669 },
			["Gloomybrook|spineshatter"] = { 13, 16, -30, 823 },
			["Patrickwoo|spineshatter"] = { 13, 16, -30, 822 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 740 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 740 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 869 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 861 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 888 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 897 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 743 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 744 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 761 },
			["Bellael|spineshatter"] = { 11, 7, 39, 808 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 982 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 878 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 786 },
			["Primár|spineshatter"] = { 11, 7, -23, 787 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 984 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 879 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 1026 },
			["Udrii|spineshatter"] = { 7, 6, -37, 1080 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 834 },
			["Garad|spineshatter"] = { 4, 8, -37, 761 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 834 },
			["Sylex|spineshatter"] = { 8, 4, 17, 732 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 761 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 1002 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 761 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 777 },
			["Doób|spineshatter"] = { 6, 4, 18, 776 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 775 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 791 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 791 },
			["Maxj|spineshatter"] = { 3, 4, 4, 817 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 1056 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 1076 },
			["Dewood|spineshatter"] = { 4, 1, -10, 1142 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 941 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 1141 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 941 },
			["Brubru|spineshatter"] = { 2, 2, 11, 867 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 863 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 1026 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 941 },
			["Magicién|spineshatter"] = { 2, 1, 1, 941 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 1315 },
			["Iog|spineshatter"] = { 1, 1, -7, 1315 },
			["Doko|spineshatter"] = { 1, 0, 9, 1029 },
			["Forksache|spineshatter"] = { 0, 1, -23, 891 },
			["Walida|spineshatter"] = { 1, 0, 9, 1029 },
		},
	},
}

