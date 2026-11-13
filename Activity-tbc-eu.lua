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
	built = 1794563973,
	builtText = "2026-11-13 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Stupidänimal|spineshatter"] = { 19, 13, -15, 640 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 547 },
			["Сократ|anniversary"] = { 18, 14, 0, 554 },
			["Quernx|spineshatter"] = { 17, 13, -11, 641 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 625 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 625 },
			["Gloomybrook|spineshatter"] = { 10, 13, -38, 708 },
			["Patrickwoo|spineshatter"] = { 10, 13, -38, 707 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 628 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 629 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 646 },
			["Bellael|spineshatter"] = { 11, 7, 39, 693 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 671 },
			["Primár|spineshatter"] = { 11, 7, -23, 672 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 719 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 719 },
			["Sylex|spineshatter"] = { 8, 4, 17, 617 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 646 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 662 },
			["Doób|spineshatter"] = { 6, 4, 18, 661 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 660 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 676 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 675 },
			["Maxj|spineshatter"] = { 3, 4, 4, 702 },
			["Garad|spineshatter"] = { 0, 3, -43, 646 },
			["Tyzin|spineshatter"] = { 0, 3, -43, 646 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 641 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 640 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 547 },
			["Сократ|anniversary"] = { 18, 14, 0, 554 },
			["Gloomybrook|spineshatter"] = { 13, 16, -30, 708 },
			["Patrickwoo|spineshatter"] = { 13, 16, -30, 707 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 625 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 625 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 753 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 746 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 773 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 782 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 628 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 629 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 646 },
			["Bellael|spineshatter"] = { 11, 7, 39, 693 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 867 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 763 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 671 },
			["Primár|spineshatter"] = { 11, 7, -23, 672 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 869 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 764 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 911 },
			["Udrii|spineshatter"] = { 7, 6, -37, 965 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 719 },
			["Garad|spineshatter"] = { 4, 8, -37, 646 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 719 },
			["Sylex|spineshatter"] = { 8, 4, 17, 617 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 646 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 887 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 646 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 662 },
			["Doób|spineshatter"] = { 6, 4, 18, 661 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 660 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 676 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 675 },
			["Maxj|spineshatter"] = { 3, 4, 4, 702 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 941 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 961 },
			["Dewood|spineshatter"] = { 4, 1, -10, 1027 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 826 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 1026 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 826 },
			["Brubru|spineshatter"] = { 2, 2, 11, 752 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 748 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 911 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 826 },
			["Magicién|spineshatter"] = { 2, 1, 1, 826 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 1200 },
			["Iog|spineshatter"] = { 1, 1, -7, 1200 },
			["Doko|spineshatter"] = { 1, 0, 9, 914 },
			["Forksache|spineshatter"] = { 0, 1, -23, 776 },
			["Walida|spineshatter"] = { 1, 0, 9, 914 },
		},
	},
}

