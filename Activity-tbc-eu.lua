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
	built = 1794880766,
	builtText = "2026-11-16 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 14, 6, 17, 107 },
			["Meanetrik|thunderstrike"] = { 2, 10, -92, 69 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 106 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 159 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 165 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 150 },
			["Everlost|spineshatter"] = { 3, 1, 15, 116 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 113 },
			["Eaxlow|thunderstrike"] = { 2, 0, 6, 165 },
			["Seeyalolz|thunderstrike"] = { 2, 0, 8, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 189 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 312 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 107 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 270 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 270 },
			["Meanetrik|thunderstrike"] = { 2, 10, -92, 69 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 165 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 165 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 210 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 210 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 106 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 159 },
			["Almeri|spineshatter"] = { 4, 3, -26, 345 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 345 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 250 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 250 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 165 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 204 },
			["Mdmaxlockx|spineshatter"] = { 4, 2, 33, 230 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 150 },
			["Everlost|spineshatter"] = { 3, 1, 15, 116 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 113 },
			["Karoups|spineshatter"] = { 1, 1, -9, 312 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 345 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 345 },
			["Minð|thunderstrike"] = { 1, 0, 2, 345 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 345 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 345 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 345 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 203 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 189 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 312 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 107 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 454 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 455 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 270 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 210 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 270 },
			["Meanetrik|thunderstrike"] = { 2, 10, -92, 69 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 165 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 165 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 210 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 461 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 106 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 230 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 525 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 159 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 456 },
			["Almeri|spineshatter"] = { 4, 3, -26, 345 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 345 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 250 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 250 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 165 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 204 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 494 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 150 },
			["Everlost|spineshatter"] = { 3, 1, 15, 116 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 113 },
			["Karoups|spineshatter"] = { 1, 1, -9, 312 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 466 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 423 },
			["Oldp|spineshatter"] = { 0, 2, -30, 423 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 464 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 480 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 345 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 345 },
			["Minð|thunderstrike"] = { 1, 0, 2, 345 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 345 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 345 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 345 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 203 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 189 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 312 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 107 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 454 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 455 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 270 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 210 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 270 },
			["Meanetrik|thunderstrike"] = { 2, 10, -92, 69 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 165 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 165 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 210 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 461 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 106 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 230 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 525 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 159 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 456 },
			["Almeri|spineshatter"] = { 4, 3, -26, 345 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 345 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 250 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 250 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 165 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 204 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 494 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 150 },
			["Everlost|spineshatter"] = { 3, 1, 15, 116 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 113 },
			["Karoups|spineshatter"] = { 1, 1, -9, 312 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 466 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 423 },
			["Oldp|spineshatter"] = { 0, 2, -30, 423 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 464 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 480 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 345 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 345 },
			["Minð|thunderstrike"] = { 1, 0, 2, 345 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 345 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 345 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 345 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 203 },
		},
	},
}

