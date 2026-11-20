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
	built = 1795172425,
	builtText = "2026-11-20 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 673 },
			["Domnox|auberdine"] = { 19, 18, -86, 705 },
			["Sapmere|auberdine"] = { 19, 18, -84, 705 },
			["Givus|shekzeer"] = { 9, 7, 79, 693 },
			["Ithildrin|mirage-raceway"] = { 6, 6, 19, 693 },
			["Filmarisa|shekzeer"] = { 7, 4, 34, 693 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 710 },
			["Savexx|shekzeer"] = { 1, 5, -7, 693 },
			["Vrctx|shekzeer"] = { 4, 0, 26, 711 },
			["Kakalocko|shekzeer"] = { 1, 2, -10, 693 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 693 },
			["Trolly|shekzeer"] = { 3, 0, 47, 693 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 693 },
			["Deepshelter|shekzeer"] = { 0, 2, -17, 693 },
			["Zhili|hoptallus"] = { 1, 1, -1, 693 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 693 },
			["Cherryontop|shekzeer"] = { 0, 1, 0, 693 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 705 },
			["Sapmere|auberdine"] = { 23, 21, -77, 705 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 673 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 756 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 828 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 829 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 772 },
			["Givus|shekzeer"] = { 9, 7, 79, 693 },
			["Topshotta|everlook"] = { 9, 7, 5, 772 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 693 },
			["Ivonsa|garalon"] = { 9, 6, -35, 767 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 820 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 693 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 873 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 796 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 803 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 842 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 819 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 711 },
			["Xpm|everlook"] = { 6, 3, -12, 933 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 805 },
			["Тнэш|flamegor"] = { 5, 3, 53, 804 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 730 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 710 },
			["Climako|auberdine"] = { 2, 4, 29, 840 },
			["Jefers|auberdine"] = { 2, 4, 29, 841 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 818 },
			["Savexx|shekzeer"] = { 1, 5, -7, 693 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 732 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 819 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 888 },
			["Paladîon|auberdine"] = { 1, 4, 22, 956 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 844 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 829 },
			["Charos|norushen"] = { 0, 4, -40, 905 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 693 },
			["Mopster|norushen"] = { 0, 4, -40, 918 },
			["Taillung|shekzeer"] = { 3, 1, 8, 838 },
			["Xpu|everlook"] = { 3, 1, 16, 836 },
			["Cavernicola|garalon"] = { 0, 3, -14, 795 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 693 },
			["Kennyk|garalon"] = { 3, 0, 57, 777 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 1123 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 693 },
			["Trolly|shekzeer"] = { 3, 0, 47, 693 },
			["Auxy|garalon"] = { 0, 2, -18, 755 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 693 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 693 },
			["Tenex|norushen"] = { 0, 2, -8, 765 },
			["Zhili|hoptallus"] = { 1, 1, -1, 693 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 693 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 1413 },
			["Filmar|shekzeer"] = { 1, 0, 23, 1413 },
			["Ineo|shekzeer"] = { 0, 1, -8, 873 },
			["Orestis|norushen"] = { 0, 1, -3, 873 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 1053 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 1413 },
		},
	},
}

