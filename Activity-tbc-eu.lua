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
	built = 1794545960,
	builtText = "2026-11-12 11:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Stupidänimal|spineshatter"] = { 19, 13, -15, 340 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 247 },
			["Сократ|anniversary"] = { 18, 14, 0, 254 },
			["Quernx|spineshatter"] = { 17, 13, -11, 341 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 324 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 325 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 328 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 328 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 345 },
			["Sylex|spineshatter"] = { 8, 4, 17, 317 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 345 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 360 },
			["Garad|spineshatter"] = { 0, 3, -43, 345 },
			["Tyzin|spineshatter"] = { 0, 3, -43, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 341 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 340 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 247 },
			["Сократ|anniversary"] = { 18, 14, 0, 254 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 324 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 325 },
			["Gloomybrook|spineshatter"] = { 11, 15, -43, 407 },
			["Patrickwoo|spineshatter"] = { 11, 15, -43, 407 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 453 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 446 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 473 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 481 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 328 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 328 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 345 },
			["Bellael|spineshatter"] = { 11, 7, 39, 392 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 567 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 463 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 371 },
			["Primár|spineshatter"] = { 11, 7, -23, 372 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 569 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 464 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 610 },
			["Udrii|spineshatter"] = { 7, 6, -37, 665 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 419 },
			["Garad|spineshatter"] = { 4, 8, -37, 345 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 419 },
			["Sylex|spineshatter"] = { 8, 4, 17, 317 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 345 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 587 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 345 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 362 },
			["Doób|spineshatter"] = { 6, 4, 18, 361 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 360 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 375 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 375 },
			["Maxj|spineshatter"] = { 3, 4, 4, 401 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 641 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 660 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 525 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 525 },
			["Brubru|spineshatter"] = { 2, 2, 11, 451 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 448 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 610 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 525 },
			["Magicién|spineshatter"] = { 2, 1, 1, 525 },
			["Doko|spineshatter"] = { 1, 0, 9, 614 },
			["Forksache|spineshatter"] = { 0, 1, -23, 476 },
			["Walida|spineshatter"] = { 1, 0, 9, 614 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 19, 17, -72, 341 },
			["Stupidänimal|spineshatter"] = { 19, 17, -82, 340 },
			["Пиноккио|anniversary"] = { 18, 14, 0, 247 },
			["Сократ|anniversary"] = { 18, 14, 0, 254 },
			["Gloomybrook|spineshatter"] = { 13, 16, -30, 407 },
			["Patrickwoo|spineshatter"] = { 13, 16, -30, 407 },
			["Reasonicus|spineshatter"] = { 14, 14, -29, 324 },
			["Vincentxd|spineshatter"] = { 14, 14, -32, 325 },
			["Daddyjoe|spineshatter"] = { 12, 9, -30, 453 },
			["Nguaroth|spineshatter"] = { 12, 9, -30, 446 },
			["Snupydawg|spineshatter"] = { 11, 9, 18, 473 },
			["Zazazazaa|spineshatter"] = { 11, 9, 18, 481 },
			["Bimbolo|spineshatter"] = { 10, 9, 40, 328 },
			["Izabelyrg|spineshatter"] = { 10, 9, 29, 328 },
			["Asdfghjklzxc|spineshatter"] = { 11, 7, 81, 345 },
			["Bellael|spineshatter"] = { 11, 7, 39, 392 },
			["Ellilol|thunderstrike"] = { 9, 9, -49, 567 },
			["Funkyxd|spineshatter"] = { 9, 9, 19, 463 },
			["Imgæy|spineshatter"] = { 11, 7, -44, 371 },
			["Primár|spineshatter"] = { 11, 7, -23, 372 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 569 },
			["Twatcatcher|spineshatter"] = { 9, 9, 19, 464 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 610 },
			["Udrii|spineshatter"] = { 7, 6, -37, 665 },
			["Bananagram|spineshatter"] = { 6, 6, -2, 419 },
			["Garad|spineshatter"] = { 4, 8, -37, 345 },
			["Jaguár|spineshatter"] = { 6, 6, -3, 419 },
			["Sylex|spineshatter"] = { 8, 4, 17, 317 },
			["Tyzin|spineshatter"] = { 4, 8, -37, 345 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 587 },
			["Alisanne|spineshatter"] = { 7, 3, 96, 345 },
			["Cosmoboy|spineshatter"] = { 6, 4, 18, 362 },
			["Doób|spineshatter"] = { 6, 4, 18, 361 },
			["Sheezlong|spineshatter"] = { 7, 3, 96, 360 },
			["Ilovejade|spineshatter"] = { 6, 1, -16, 375 },
			["Invinciblexx|spineshatter"] = { 6, 1, -16, 375 },
			["Maxj|spineshatter"] = { 3, 4, 4, 401 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 641 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 660 },
			["Dewood|spineshatter"] = { 4, 1, -10, 727 },
			["Drainèr|spineshatter"] = { 4, 1, 2, 525 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 726 },
			["Xnatry|spineshatter"] = { 4, 1, 11, 525 },
			["Brubru|spineshatter"] = { 2, 2, 11, 451 },
			["Lorsh|spineshatter"] = { 2, 2, 11, 448 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 610 },
			["Hordemustdie|spineshatter"] = { 2, 1, -5, 525 },
			["Magicién|spineshatter"] = { 2, 1, 1, 525 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 900 },
			["Iog|spineshatter"] = { 1, 1, -7, 900 },
			["Doko|spineshatter"] = { 1, 0, 9, 614 },
			["Forksache|spineshatter"] = { 0, 1, -23, 476 },
			["Walida|spineshatter"] = { 1, 0, 9, 614 },
		},
	},
}

