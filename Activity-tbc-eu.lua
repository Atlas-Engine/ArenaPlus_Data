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
	built = 1794567582,
	builtText = "2026-11-13 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Stupidänimal|spineshatter"] = { 19, 13, -15, 700 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 607 },
			["Сократ|anniversary"] = { 18, 14, 0, 614 },
			["Quernx|spineshatter"] = { 17, 13, -11, 702 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 685 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 685 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 688 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 689 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 706 },
			["Sylex|spineshatter"] = { 8, 4, 17, 677 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 706 },
			["Garad|spineshatter"] = { 0, 3, -43, 706 },
			["Tyzin|spineshatter"] = { 0, 3, -43, 706 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 702 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 700 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 607 },
			["Сократ|anniversary"] = { 18, 14, 0, 614 },
			["Gloomybrook|spineshatter"] = { 13, 16, -30, 768 },
			["Patrickwoo|spineshatter"] = { 13, 16, -30, 767 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 685 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 685 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 814 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 806 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 833 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 842 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 688 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 689 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 706 },
			["Bellael|spineshatter"] = { 11, 7, 39, 753 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 927 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 824 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 731 },
			["Primár|spineshatter"] = { 11, 7, -23, 732 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 929 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 824 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 971 },
			["Udrii|spineshatter"] = { 7, 6, -37, 1026 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 779 },
			["Garad|spineshatter"] = { 4, 8, -37, 706 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 779 },
			["Sylex|spineshatter"] = { 8, 4, 17, 677 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 706 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 947 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 706 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 722 },
			["Doób|spineshatter"] = { 6, 4, 18, 722 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 720 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 736 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 736 },
			["Maxj|spineshatter"] = { 3, 4, 4, 762 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 1001 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 1021 },
			["Dewood|spineshatter"] = { 4, 1, -10, 1087 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 886 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 1086 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 886 },
			["Brubru|spineshatter"] = { 2, 2, 11, 812 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 808 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 971 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 886 },
			["Magicién|spineshatter"] = { 2, 1, 1, 886 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 1260 },
			["Iog|spineshatter"] = { 1, 1, -7, 1260 },
			["Doko|spineshatter"] = { 1, 0, 9, 974 },
			["Forksache|spineshatter"] = { 0, 1, -23, 836 },
			["Walida|spineshatter"] = { 1, 0, 9, 974 },
		},
	},
}

