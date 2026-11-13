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
	built = 1794549566,
	builtText = "2026-11-13 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 6, 1, 47, 307 },
			["Сократ|anniversary"] = { 6, 1, 47, 314 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 401 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 400 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 307 },
			["Сократ|anniversary"] = { 18, 14, 0, 314 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 384 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 385 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 468 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 467 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 513 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 506 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 533 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 542 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 388 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 388 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 405 },
			["Bellael|spineshatter"] = { 11, 7, 39, 452 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 627 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 523 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 431 },
			["Primár|spineshatter"] = { 11, 7, -23, 432 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 629 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 524 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 479 },
			["Garad|spineshatter"] = { 4, 8, -37, 405 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 479 },
			["Sylex|spineshatter"] = { 8, 4, 17, 377 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 405 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 647 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 405 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 422 },
			["Doób|spineshatter"] = { 6, 4, 18, 421 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 420 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 435 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 435 },
			["Maxj|spineshatter"] = { 3, 4, 4, 462 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 701 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 585 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 585 },
			["Brubru|spineshatter"] = { 2, 2, 11, 512 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 508 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 670 },
			["Fedowjr|spineshatter"] = { 3, 0, 10, 670 },
			["Hordemustdie|spineshatter"] = { 1, 1, -12, 585 },
			["Magicién|spineshatter"] = { 1, 1, -8, 585 },
			["Doko|spineshatter"] = { 1, 0, 9, 674 },
			["Forksache|spineshatter"] = { 0, 1, -23, 536 },
			["Walida|spineshatter"] = { 1, 0, 9, 674 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 401 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 400 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 307 },
			["Сократ|anniversary"] = { 18, 14, 0, 314 },
			["Gloomybrook|spineshatter"] = { 13, 16, -30, 468 },
			["Patrickwoo|spineshatter"] = { 13, 16, -30, 467 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 384 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 385 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 513 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 506 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 533 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 542 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 388 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 388 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 405 },
			["Bellael|spineshatter"] = { 11, 7, 39, 452 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 627 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 523 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 431 },
			["Primár|spineshatter"] = { 11, 7, -23, 432 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 629 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 524 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 670 },
			["Udrii|spineshatter"] = { 7, 6, -37, 725 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 479 },
			["Garad|spineshatter"] = { 4, 8, -37, 405 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 479 },
			["Sylex|spineshatter"] = { 8, 4, 17, 377 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 405 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 647 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 405 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 422 },
			["Doób|spineshatter"] = { 6, 4, 18, 421 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 420 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 435 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 435 },
			["Maxj|spineshatter"] = { 3, 4, 4, 462 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 701 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 720 },
			["Dewood|spineshatter"] = { 4, 1, -10, 787 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 585 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 786 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 585 },
			["Brubru|spineshatter"] = { 2, 2, 11, 512 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 508 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 670 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 585 },
			["Magicién|spineshatter"] = { 2, 1, 1, 585 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 960 },
			["Iog|spineshatter"] = { 1, 1, -7, 960 },
			["Doko|spineshatter"] = { 1, 0, 9, 674 },
			["Forksache|spineshatter"] = { 0, 1, -23, 536 },
			["Walida|spineshatter"] = { 1, 0, 9, 674 },
		},
	},
}

