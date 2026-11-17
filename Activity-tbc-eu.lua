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
	built = 1794884374,
	builtText = "2026-11-16 09:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 46 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 49 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 46 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 49 },
			["Lifeburst|spineshatter"] = { 10, 2, 43, 168 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 166 },
			["Everlost|spineshatter"] = { 3, 1, 15, 176 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 173 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 14, 6, 17, 168 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 46 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 49 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 331 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 331 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 270 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 270 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 166 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 219 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 310 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 310 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 226 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 265 },
			["Izabelyrg|spineshatter"] = { 3, 3, 4, 249 },
			["Mdmaxlockx|spineshatter"] = { 4, 2, 33, 290 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 210 },
			["Everlost|spineshatter"] = { 3, 1, 15, 176 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 173 },
			["Eaxlow|thunderstrike"] = { 2, 0, 6, 226 },
			["Seeyalolz|thunderstrike"] = { 2, 0, 8, 226 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 263 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 249 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 372 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 168 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 514 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 515 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 46 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 49 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 331 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 270 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 331 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 226 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 226 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 270 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 521 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 166 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 290 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 586 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 219 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 516 },
			["Almeri|spineshatter"] = { 4, 3, -26, 406 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 406 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 310 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 310 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 226 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 265 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 554 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 210 },
			["Everlost|spineshatter"] = { 3, 1, 15, 176 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 173 },
			["Karoups|spineshatter"] = { 1, 1, -9, 372 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 526 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 483 },
			["Oldp|spineshatter"] = { 0, 2, -30, 483 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 525 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 540 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 406 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 406 },
			["Minð|thunderstrike"] = { 1, 0, 2, 406 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 406 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 406 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 406 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 263 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 249 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 372 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 168 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 514 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 515 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 46 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 49 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 331 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 270 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 331 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 226 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 226 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 270 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 521 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 166 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 290 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 586 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 219 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 516 },
			["Almeri|spineshatter"] = { 4, 3, -26, 406 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 406 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 310 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 310 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 226 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 265 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 554 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 210 },
			["Everlost|spineshatter"] = { 3, 1, 15, 176 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 173 },
			["Karoups|spineshatter"] = { 1, 1, -9, 372 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 526 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 483 },
			["Oldp|spineshatter"] = { 0, 2, -30, 483 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 525 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 540 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 406 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 406 },
			["Minð|thunderstrike"] = { 1, 0, 2, 406 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 406 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 406 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 406 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 263 },
		},
	},
}

