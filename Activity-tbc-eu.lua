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
	built = 1794905963,
	builtText = "2026-11-17 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lifeburst|spineshatter"] = { 14, 6, 17, 527 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 405 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 409 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 690 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 690 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 630 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 630 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 526 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 579 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 670 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 670 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 585 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 624 },
			["Izabelyrg|spineshatter"] = { 3, 3, 4, 609 },
			["Mdmaxlockx|spineshatter"] = { 4, 2, 33, 650 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 570 },
			["Everlost|spineshatter"] = { 3, 1, 15, 536 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 533 },
			["Eaxlow|thunderstrike"] = { 2, 0, 6, 585 },
			["Seeyalolz|thunderstrike"] = { 2, 0, 8, 585 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 623 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 609 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 732 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 527 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 874 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 875 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 405 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 409 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 690 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 630 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 690 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 585 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 585 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 630 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 881 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 526 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 650 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 945 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 579 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 876 },
			["Almeri|spineshatter"] = { 4, 3, -26, 765 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 765 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 670 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 670 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 585 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 624 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 914 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 570 },
			["Everlost|spineshatter"] = { 3, 1, 15, 536 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 533 },
			["Karoups|spineshatter"] = { 1, 1, -9, 732 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 886 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 843 },
			["Oldp|spineshatter"] = { 0, 2, -30, 843 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 884 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 899 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 765 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 765 },
			["Minð|thunderstrike"] = { 1, 0, 2, 765 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 765 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 765 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 765 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 623 },
		},
	},
}

