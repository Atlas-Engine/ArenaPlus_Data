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
	built = 1795161630,
	builtText = "2026-11-20 03:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 525 },
			["Sapmere|auberdine"] = { 23, 21, -77, 526 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 493 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 576 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 648 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 649 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 592 },
			["Givus|shekzeer"] = { 9, 7, 79, 514 },
			["Topshotta|everlook"] = { 9, 7, 5, 592 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 514 },
			["Ivonsa|garalon"] = { 9, 6, -35, 587 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 640 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 514 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 694 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 616 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 663 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 639 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 531 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 625 },
			["Тнэш|flamegor"] = { 5, 3, 53, 624 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 550 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 530 },
			["Marlkx|shekzeer"] = { 6, 1, 64, 623 },
			["Climako|auberdine"] = { 2, 4, 29, 660 },
			["Jefers|auberdine"] = { 2, 4, 29, 661 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 638 },
			["Savexx|shekzeer"] = { 1, 5, -7, 514 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 552 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 639 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 708 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 664 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 649 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 514 },
			["Taillung|shekzeer"] = { 3, 1, 8, 658 },
			["Xpu|everlook"] = { 3, 1, 16, 656 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 514 },
			["Kennyk|garalon"] = { 3, 0, 57, 597 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 514 },
			["Trolly|shekzeer"] = { 3, 0, 47, 514 },
			["Auxy|garalon"] = { 0, 2, -18, 575 },
			["Cavernicola|garalon"] = { 0, 2, -8, 615 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 514 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 514 },
			["Tenex|norushen"] = { 0, 2, -8, 585 },
			["Zhili|hoptallus"] = { 1, 1, -1, 514 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 514 },
			["Ineo|shekzeer"] = { 0, 1, -8, 694 },
			["Orestis|norushen"] = { 0, 1, -3, 694 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 525 },
			["Sapmere|auberdine"] = { 23, 21, -77, 526 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 493 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 576 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 648 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 649 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 592 },
			["Givus|shekzeer"] = { 9, 7, 79, 514 },
			["Topshotta|everlook"] = { 9, 7, 5, 592 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 514 },
			["Ivonsa|garalon"] = { 9, 6, -35, 587 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 640 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 514 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 694 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 616 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 623 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 663 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 639 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 531 },
			["Xpm|everlook"] = { 6, 3, -12, 753 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 625 },
			["Тнэш|flamegor"] = { 5, 3, 53, 624 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 550 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 530 },
			["Climako|auberdine"] = { 2, 4, 29, 660 },
			["Jefers|auberdine"] = { 2, 4, 29, 661 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 638 },
			["Savexx|shekzeer"] = { 1, 5, -7, 514 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 552 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 639 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 708 },
			["Paladîon|auberdine"] = { 1, 4, 22, 776 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 664 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 649 },
			["Charos|norushen"] = { 0, 4, -40, 725 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 514 },
			["Mopster|norushen"] = { 0, 4, -40, 738 },
			["Taillung|shekzeer"] = { 3, 1, 8, 658 },
			["Xpu|everlook"] = { 3, 1, 16, 656 },
			["Cavernicola|garalon"] = { 0, 3, -14, 615 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 514 },
			["Kennyk|garalon"] = { 3, 0, 57, 597 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 943 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 514 },
			["Trolly|shekzeer"] = { 3, 0, 47, 514 },
			["Auxy|garalon"] = { 0, 2, -18, 575 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 514 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 514 },
			["Tenex|norushen"] = { 0, 2, -8, 585 },
			["Zhili|hoptallus"] = { 1, 1, -1, 514 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 514 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 1234 },
			["Filmar|shekzeer"] = { 1, 0, 23, 1234 },
			["Ineo|shekzeer"] = { 0, 1, -8, 694 },
			["Orestis|norushen"] = { 0, 1, -3, 694 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 874 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 1234 },
		},
	},
}

