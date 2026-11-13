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
	built = 1794553160,
	builtText = "2026-11-13 01:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 461 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 460 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 367 },
			["Сократ|anniversary"] = { 18, 14, 0, 374 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 444 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 445 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 527 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 527 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 573 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 566 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 593 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 601 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 448 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 448 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 465 },
			["Bellael|spineshatter"] = { 11, 7, 39, 512 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 687 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 583 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 491 },
			["Primár|spineshatter"] = { 11, 7, -23, 492 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 689 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 584 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 539 },
			["Garad|spineshatter"] = { 4, 8, -37, 465 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 539 },
			["Sylex|spineshatter"] = { 8, 4, 17, 437 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 465 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 707 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 465 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 482 },
			["Doób|spineshatter"] = { 6, 4, 18, 481 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 480 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 495 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 495 },
			["Maxj|spineshatter"] = { 3, 4, 4, 521 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 645 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 645 },
			["Brubru|spineshatter"] = { 2, 2, 11, 571 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 568 },
			["Hordemustdie|spineshatter"] = { 1, 1, -12, 645 },
			["Magicién|spineshatter"] = { 1, 1, -8, 645 },
			["Forksache|spineshatter"] = { 0, 1, -23, 596 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 461 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 460 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 367 },
			["Сократ|anniversary"] = { 18, 14, 0, 374 },
			["Gloomybrook|spineshatter"] = { 13, 16, -30, 527 },
			["Patrickwoo|spineshatter"] = { 13, 16, -30, 527 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 444 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 445 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 573 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 566 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 593 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 601 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 448 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 448 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 465 },
			["Bellael|spineshatter"] = { 11, 7, 39, 512 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 687 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 583 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 491 },
			["Primár|spineshatter"] = { 11, 7, -23, 492 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 689 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 584 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 730 },
			["Udrii|spineshatter"] = { 7, 6, -37, 785 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 539 },
			["Garad|spineshatter"] = { 4, 8, -37, 465 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 539 },
			["Sylex|spineshatter"] = { 8, 4, 17, 437 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 465 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 707 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 465 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 482 },
			["Doób|spineshatter"] = { 6, 4, 18, 481 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 480 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 495 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 495 },
			["Maxj|spineshatter"] = { 3, 4, 4, 521 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 761 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 780 },
			["Dewood|spineshatter"] = { 4, 1, -10, 847 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 645 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 846 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 645 },
			["Brubru|spineshatter"] = { 2, 2, 11, 571 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 568 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 730 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 645 },
			["Magicién|spineshatter"] = { 2, 1, 1, 645 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 1020 },
			["Iog|spineshatter"] = { 1, 1, -7, 1020 },
			["Doko|spineshatter"] = { 1, 0, 9, 734 },
			["Forksache|spineshatter"] = { 0, 1, -23, 596 },
			["Walida|spineshatter"] = { 1, 0, 9, 734 },
		},
	},
}

