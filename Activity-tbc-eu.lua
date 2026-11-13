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
	built = 1794560382,
	builtText = "2026-11-13 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Stupidänimal|spineshatter"] = { 19, 13, -15, 580 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 487 },
			["Сократ|anniversary"] = { 18, 14, 0, 494 },
			["Quernx|spineshatter"] = { 17, 13, -11, 582 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 565 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 565 },
			["Gloomybrook|spineshatter"] = { 10, 13, -38, 648 },
			["Patrickwoo|spineshatter"] = { 10, 13, -38, 647 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 568 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 569 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 586 },
			["Bellael|spineshatter"] = { 11, 7, 39, 633 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 611 },
			["Primár|spineshatter"] = { 11, 7, -23, 612 },
			["Funkyxd|spineshatter"] = { 6, 8, -6, 704 },
			["Twatcatcher|spineshatter"] = { 6, 8, -6, 704 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 659 },
			["Garad|spineshatter"] = { 4, 8, -37, 586 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 659 },
			["Sylex|spineshatter"] = { 8, 4, 17, 557 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 586 },
			["Daddyjoe|spineshatter"] = { 6, 5, -9, 694 },
			["Nguaroth|spineshatter"] = { 6, 5, -9, 686 },
			["Snupydawg|spineshatter"] = { 6, 5, 4, 713 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 586 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 602 },
			["Doób|spineshatter"] = { 6, 4, 18, 602 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 600 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 616 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 616 },
			["Maxj|spineshatter"] = { 3, 4, 4, 642 },
			["Brubru|spineshatter"] = { 2, 2, 11, 692 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 688 },
			["Forksache|spineshatter"] = { 0, 1, -23, 716 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 582 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 580 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 487 },
			["Сократ|anniversary"] = { 18, 14, 0, 494 },
			["Gloomybrook|spineshatter"] = { 13, 16, -30, 648 },
			["Patrickwoo|spineshatter"] = { 13, 16, -30, 647 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 565 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 565 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 694 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 686 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 713 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 722 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 568 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 569 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 586 },
			["Bellael|spineshatter"] = { 11, 7, 39, 633 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 807 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 704 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 611 },
			["Primár|spineshatter"] = { 11, 7, -23, 612 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 809 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 704 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 851 },
			["Udrii|spineshatter"] = { 7, 6, -37, 906 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 659 },
			["Garad|spineshatter"] = { 4, 8, -37, 586 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 659 },
			["Sylex|spineshatter"] = { 8, 4, 17, 557 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 586 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 827 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 586 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 602 },
			["Doób|spineshatter"] = { 6, 4, 18, 602 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 600 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 616 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 616 },
			["Maxj|spineshatter"] = { 3, 4, 4, 642 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 881 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 901 },
			["Dewood|spineshatter"] = { 4, 1, -10, 967 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 766 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 966 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 766 },
			["Brubru|spineshatter"] = { 2, 2, 11, 692 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 688 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 851 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 766 },
			["Magicién|spineshatter"] = { 2, 1, 1, 766 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 1140 },
			["Iog|spineshatter"] = { 1, 1, -7, 1140 },
			["Doko|spineshatter"] = { 1, 0, 9, 854 },
			["Forksache|spineshatter"] = { 0, 1, -23, 716 },
			["Walida|spineshatter"] = { 1, 0, 9, 854 },
		},
	},
}

