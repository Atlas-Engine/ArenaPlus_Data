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
	built = 1794927564,
	builtText = "2026-11-17 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 132 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 122 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 132 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 122 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 132 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 122 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 969 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 1092 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 887 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 1234 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 1235 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 765 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 769 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 1050 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 990 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 1050 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 945 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 945 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 990 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 1241 },
			["Djznx|thunderstrike"] = { 8, 2, 1, 132 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 886 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 122 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 1010 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 1305 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 939 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 1236 },
			["Almeri|spineshatter"] = { 4, 3, -26, 1125 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 1125 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 1030 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 1030 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 945 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 984 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 1274 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 930 },
			["Everlost|spineshatter"] = { 3, 1, 15, 896 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 893 },
			["Karoups|spineshatter"] = { 1, 1, -9, 1092 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 1246 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 1203 },
			["Oldp|spineshatter"] = { 0, 2, -30, 1203 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 1244 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 1260 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 1125 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 1125 },
			["Minð|thunderstrike"] = { 1, 0, 2, 1125 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 1125 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 1125 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 1125 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 983 },
		},
	},
}

