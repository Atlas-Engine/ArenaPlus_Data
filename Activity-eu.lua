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
	built = 1795154428,
	builtText = "2026-11-20 01:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 405 },
			["Sapmere|auberdine"] = { 23, 21, -77, 405 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 373 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 456 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 528 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 529 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 472 },
			["Givus|shekzeer"] = { 9, 7, 79, 393 },
			["Topshotta|everlook"] = { 9, 7, 5, 472 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 393 },
			["Ivonsa|garalon"] = { 9, 6, -35, 467 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 520 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 393 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 573 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 496 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 503 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 543 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 519 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 411 },
			["Xpm|everlook"] = { 6, 3, -12, 633 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 505 },
			["Тнэш|flamegor"] = { 5, 3, 53, 504 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 430 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 410 },
			["Climako|auberdine"] = { 2, 4, 29, 540 },
			["Jefers|auberdine"] = { 2, 4, 29, 541 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 518 },
			["Savexx|shekzeer"] = { 1, 5, -7, 393 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 432 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 519 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 588 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 544 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 529 },
			["Charos|norushen"] = { 0, 4, -40, 605 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 393 },
			["Mopster|norushen"] = { 0, 4, -40, 618 },
			["Paladîon|auberdine"] = { 1, 3, 22, 656 },
			["Taillung|shekzeer"] = { 3, 1, 8, 538 },
			["Xpu|everlook"] = { 3, 1, 16, 536 },
			["Cavernicola|garalon"] = { 0, 3, -14, 495 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 393 },
			["Kennyk|garalon"] = { 3, 0, 57, 477 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 393 },
			["Trolly|shekzeer"] = { 3, 0, 47, 393 },
			["Auxy|garalon"] = { 0, 2, -18, 455 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 393 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 393 },
			["Tenex|norushen"] = { 0, 2, -8, 465 },
			["Zhili|hoptallus"] = { 1, 1, -1, 393 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 393 },
			["Ineo|shekzeer"] = { 0, 1, -8, 573 },
			["Orestis|norushen"] = { 0, 1, -3, 573 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 405 },
			["Sapmere|auberdine"] = { 23, 21, -77, 405 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 373 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 456 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 528 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 529 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 472 },
			["Givus|shekzeer"] = { 9, 7, 79, 393 },
			["Topshotta|everlook"] = { 9, 7, 5, 472 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 393 },
			["Ivonsa|garalon"] = { 9, 6, -35, 467 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 520 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 393 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 573 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 496 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 503 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 543 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 519 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 411 },
			["Xpm|everlook"] = { 6, 3, -12, 633 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 505 },
			["Тнэш|flamegor"] = { 5, 3, 53, 504 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 430 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 410 },
			["Climako|auberdine"] = { 2, 4, 29, 540 },
			["Jefers|auberdine"] = { 2, 4, 29, 541 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 518 },
			["Savexx|shekzeer"] = { 1, 5, -7, 393 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 432 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 519 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 588 },
			["Paladîon|auberdine"] = { 1, 4, 22, 656 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 544 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 529 },
			["Charos|norushen"] = { 0, 4, -40, 605 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 393 },
			["Mopster|norushen"] = { 0, 4, -40, 618 },
			["Taillung|shekzeer"] = { 3, 1, 8, 538 },
			["Xpu|everlook"] = { 3, 1, 16, 536 },
			["Cavernicola|garalon"] = { 0, 3, -14, 495 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 393 },
			["Kennyk|garalon"] = { 3, 0, 57, 477 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 823 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 393 },
			["Trolly|shekzeer"] = { 3, 0, 47, 393 },
			["Auxy|garalon"] = { 0, 2, -18, 455 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 393 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 393 },
			["Tenex|norushen"] = { 0, 2, -8, 465 },
			["Zhili|hoptallus"] = { 1, 1, -1, 393 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 393 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 1113 },
			["Filmar|shekzeer"] = { 1, 0, 23, 1113 },
			["Ineo|shekzeer"] = { 0, 1, -8, 573 },
			["Orestis|norushen"] = { 0, 1, -3, 573 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 753 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 1113 },
		},
	},
}

