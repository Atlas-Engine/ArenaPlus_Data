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
	built = 1794931163,
	builtText = "2026-11-17 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 192 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 182 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 192 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 182 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 1029 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 1152 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 947 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 1294 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 1295 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 825 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 829 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 1110 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 1050 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 1110 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 1005 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 1005 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 1050 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 1301 },
			["Djznx|thunderstrike"] = { 8, 2, 1, 192 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 946 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 182 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 1070 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 1365 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 999 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 1296 },
			["Almeri|spineshatter"] = { 4, 3, -26, 1185 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 1185 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 1090 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 1090 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 1005 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 1044 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 1334 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 990 },
			["Everlost|spineshatter"] = { 3, 1, 15, 956 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 953 },
			["Karoups|spineshatter"] = { 1, 1, -9, 1152 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 1306 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 1263 },
			["Oldp|spineshatter"] = { 0, 2, -30, 1263 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 1304 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 1319 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 1185 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 1185 },
			["Minð|thunderstrike"] = { 1, 0, 2, 1185 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 1185 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 1185 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 1185 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 1043 },
		},
	},
}

