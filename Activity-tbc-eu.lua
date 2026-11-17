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
	built = 1794877159,
	builtText = "2026-11-16 07:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 10, 2, 43, 47 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 46 },
			["Meanetrik|thunderstrike"] = { 1, 5, -35, 9 },
			["Everlost|spineshatter"] = { 3, 1, 15, 56 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 53 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 14, 6, 17, 47 },
			["Meanetrik|thunderstrike"] = { 2, 10, -92, 9 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 149 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 149 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 46 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 99 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 105 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 144 },
			["Izabelyrg|spineshatter"] = { 3, 3, 4, 129 },
			["Mdmaxlockx|spineshatter"] = { 4, 2, 33, 170 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 90 },
			["Everlost|spineshatter"] = { 3, 1, 15, 56 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 53 },
			["Eaxlow|thunderstrike"] = { 2, 0, 6, 105 },
			["Seeyalolz|thunderstrike"] = { 2, 0, 8, 105 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 142 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 129 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 252 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 47 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 210 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 210 },
			["Meanetrik|thunderstrike"] = { 2, 10, -92, 9 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 105 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 105 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 149 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 149 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 46 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 170 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 99 },
			["Almeri|spineshatter"] = { 4, 3, -26, 285 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 285 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 190 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 190 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 105 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 144 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 90 },
			["Everlost|spineshatter"] = { 3, 1, 15, 56 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 53 },
			["Karoups|spineshatter"] = { 1, 1, -9, 252 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 285 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 285 },
			["Minð|thunderstrike"] = { 1, 0, 2, 285 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 285 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 285 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 285 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 142 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 129 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 252 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 47 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 394 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 395 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 210 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 149 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 210 },
			["Meanetrik|thunderstrike"] = { 2, 10, -92, 9 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 105 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 105 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 149 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 401 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 46 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 170 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 465 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 99 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 396 },
			["Almeri|spineshatter"] = { 4, 3, -26, 285 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 285 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 190 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 190 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 105 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 144 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 434 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 90 },
			["Everlost|spineshatter"] = { 3, 1, 15, 56 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 53 },
			["Karoups|spineshatter"] = { 1, 1, -9, 252 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 405 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 363 },
			["Oldp|spineshatter"] = { 0, 2, -30, 363 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 404 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 419 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 285 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 285 },
			["Minð|thunderstrike"] = { 1, 0, 2, 285 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 285 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 285 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 285 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 142 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 129 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 252 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 47 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 394 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 395 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 210 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 149 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 210 },
			["Meanetrik|thunderstrike"] = { 2, 10, -92, 9 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 105 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 105 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 149 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 401 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 46 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 170 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 465 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 99 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 396 },
			["Almeri|spineshatter"] = { 4, 3, -26, 285 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 285 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 190 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 190 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 105 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 144 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 434 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 90 },
			["Everlost|spineshatter"] = { 3, 1, 15, 56 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 53 },
			["Karoups|spineshatter"] = { 1, 1, -9, 252 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 405 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 363 },
			["Oldp|spineshatter"] = { 0, 2, -30, 363 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 404 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 419 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 285 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 285 },
			["Minð|thunderstrike"] = { 1, 0, 2, 285 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 285 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 285 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 285 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 142 },
		},
	},
}

