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
	built = 1794556772,
	builtText = "2026-11-13 02:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 521 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 520 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 427 },
			["Сократ|anniversary"] = { 18, 14, 0, 434 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 505 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 505 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 588 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 587 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 633 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 626 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 653 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 662 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 508 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 509 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 526 },
			["Bellael|spineshatter"] = { 11, 7, 39, 573 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 643 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 551 },
			["Primár|spineshatter"] = { 11, 7, -23, 552 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 644 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 599 },
			["Garad|spineshatter"] = { 4, 8, -37, 526 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 599 },
			["Sylex|spineshatter"] = { 8, 4, 17, 497 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 526 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 526 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 542 },
			["Doób|spineshatter"] = { 6, 4, 18, 541 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 540 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 556 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 555 },
			["Maxj|spineshatter"] = { 3, 4, 4, 582 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 706 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 706 },
			["Brubru|spineshatter"] = { 2, 2, 11, 632 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 628 },
			["Hordemustdie|spineshatter"] = { 1, 1, -12, 706 },
			["Magicién|spineshatter"] = { 1, 1, -8, 706 },
			["Forksache|spineshatter"] = { 0, 1, -23, 656 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 521 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 520 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 427 },
			["Сократ|anniversary"] = { 18, 14, 0, 434 },
			["Gloomybrook|spineshatter"] = { 13, 16, -30, 588 },
			["Patrickwoo|spineshatter"] = { 13, 16, -30, 587 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 505 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 505 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 633 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 626 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 653 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 662 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 508 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 509 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 526 },
			["Bellael|spineshatter"] = { 11, 7, 39, 573 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 747 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 643 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 551 },
			["Primár|spineshatter"] = { 11, 7, -23, 552 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 749 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 644 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 790 },
			["Udrii|spineshatter"] = { 7, 6, -37, 845 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 599 },
			["Garad|spineshatter"] = { 4, 8, -37, 526 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 599 },
			["Sylex|spineshatter"] = { 8, 4, 17, 497 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 526 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 767 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 526 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 542 },
			["Doób|spineshatter"] = { 6, 4, 18, 541 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 540 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 556 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 555 },
			["Maxj|spineshatter"] = { 3, 4, 4, 582 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 821 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 841 },
			["Dewood|spineshatter"] = { 4, 1, -10, 907 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 706 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 906 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 706 },
			["Brubru|spineshatter"] = { 2, 2, 11, 632 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 628 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 791 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 706 },
			["Magicién|spineshatter"] = { 2, 1, 1, 706 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 1080 },
			["Iog|spineshatter"] = { 1, 1, -7, 1080 },
			["Doko|spineshatter"] = { 1, 0, 9, 794 },
			["Forksache|spineshatter"] = { 0, 1, -23, 656 },
			["Walida|spineshatter"] = { 1, 0, 9, 794 },
		},
	},
}

