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
	built = 1795179622,
	builtText = "2026-11-20 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 825 },
			["Sapmere|auberdine"] = { 23, 21, -77, 825 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 793 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 876 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 948 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 949 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 892 },
			["Givus|shekzeer"] = { 9, 7, 79, 813 },
			["Topshotta|everlook"] = { 9, 7, 5, 892 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 813 },
			["Ivonsa|garalon"] = { 9, 6, -35, 887 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 940 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 813 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 993 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 916 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 923 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 962 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 939 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 831 },
			["Xpm|everlook"] = { 6, 3, -12, 1053 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 925 },
			["Тнэш|flamegor"] = { 5, 3, 53, 924 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 850 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 829 },
			["Climako|auberdine"] = { 2, 4, 29, 960 },
			["Jefers|auberdine"] = { 2, 4, 29, 961 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 938 },
			["Savexx|shekzeer"] = { 1, 5, -7, 813 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 852 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 939 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 1008 },
			["Paladîon|auberdine"] = { 1, 4, 22, 1076 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 964 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 949 },
			["Charos|norushen"] = { 0, 4, -40, 1025 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 813 },
			["Mopster|norushen"] = { 0, 4, -40, 1037 },
			["Taillung|shekzeer"] = { 3, 1, 8, 958 },
			["Xpu|everlook"] = { 3, 1, 16, 956 },
			["Cavernicola|garalon"] = { 0, 3, -14, 915 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 813 },
			["Kennyk|garalon"] = { 3, 0, 57, 897 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 1243 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 813 },
			["Trolly|shekzeer"] = { 3, 0, 47, 813 },
			["Auxy|garalon"] = { 0, 2, -18, 875 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 813 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 813 },
			["Tenex|norushen"] = { 0, 2, -8, 885 },
			["Zhili|hoptallus"] = { 1, 1, -1, 813 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 813 },
			["Ineo|shekzeer"] = { 0, 1, -8, 993 },
			["Orestis|norushen"] = { 0, 1, -3, 993 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 1173 },
		},
	},
}

