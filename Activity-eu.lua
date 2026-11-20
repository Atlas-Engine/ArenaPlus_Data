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
	built = 1795176022,
	builtText = "2026-11-20 07:00 AM",
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
			["Domnox|auberdine"] = { 23, 21, -80, 765 },
			["Sapmere|auberdine"] = { 23, 21, -77, 765 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 733 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 816 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 888 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 889 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 832 },
			["Givus|shekzeer"] = { 9, 7, 79, 753 },
			["Topshotta|everlook"] = { 9, 7, 5, 832 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 753 },
			["Ivonsa|garalon"] = { 9, 6, -35, 827 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 880 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 753 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 933 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 856 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 863 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 902 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 879 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 771 },
			["Xpm|everlook"] = { 6, 3, -12, 993 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 865 },
			["Тнэш|flamegor"] = { 5, 3, 53, 864 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 790 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 769 },
			["Climako|auberdine"] = { 2, 4, 29, 900 },
			["Jefers|auberdine"] = { 2, 4, 29, 901 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 878 },
			["Savexx|shekzeer"] = { 1, 5, -7, 753 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 792 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 879 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 948 },
			["Paladîon|auberdine"] = { 1, 4, 22, 1016 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 904 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 889 },
			["Charos|norushen"] = { 0, 4, -40, 965 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 753 },
			["Mopster|norushen"] = { 0, 4, -40, 977 },
			["Taillung|shekzeer"] = { 3, 1, 8, 898 },
			["Xpu|everlook"] = { 3, 1, 16, 896 },
			["Cavernicola|garalon"] = { 0, 3, -14, 855 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 753 },
			["Kennyk|garalon"] = { 3, 0, 57, 837 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 1183 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 753 },
			["Trolly|shekzeer"] = { 3, 0, 47, 753 },
			["Auxy|garalon"] = { 0, 2, -18, 815 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 753 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 753 },
			["Tenex|norushen"] = { 0, 2, -8, 825 },
			["Zhili|hoptallus"] = { 1, 1, -1, 753 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 753 },
			["Ineo|shekzeer"] = { 0, 1, -8, 933 },
			["Orestis|norushen"] = { 0, 1, -3, 933 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 1113 },
		},
	},
}

