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
	built = 1795082359,
	builtText = "2026-11-19 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 14, 15, -95, 465 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 546 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 653 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 656 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 653 },
			["Nudl|spineshatter"] = { 8, 7, 0, 654 },
			["Izabelyrg|spineshatter"] = { 8, 6, 20, 719 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 568 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 700 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 700 },
			["Brubru|spineshatter"] = { 5, 3, 12, 568 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 538 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 539 },
			["Everlost|spineshatter"] = { 4, 2, 14, 694 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 693 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 602 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 657 },
			["Bananagram|spineshatter"] = { 0, 1, -11, 645 },
			["Saptain|spineshatter"] = { 0, 1, -12, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 24, 21, -89, 465 },
			["Izabelyrg|spineshatter"] = { 25, 17, 58, 719 },
			["Ellilol|thunderstrike"] = { 24, 15, 58, 740 },
			["Shadøwsfall|thunderstrike"] = { 24, 15, 58, 744 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 546 },
			["Xiaohong|spineshatter"] = { 15, 9, 92, 825 },
			["Snobillacin|spineshatter"] = { 8, 15, -68, 769 },
			["Uweboll|spineshatter"] = { 8, 15, -90, 767 },
			["Pinkwidow|spineshatter"] = { 10, 8, 45, 750 },
			["Primár|spineshatter"] = { 10, 6, 25, 825 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 653 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 656 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 653 },
			["Notagainqt|spineshatter"] = { 9, 6, -18, 825 },
			["Nudl|spineshatter"] = { 8, 7, 0, 654 },
			["Bananagram|spineshatter"] = { 6, 8, -16, 645 },
			["Jaguár|spineshatter"] = { 6, 8, -17, 773 },
			["Ezzlord|spineshatter"] = { 6, 7, -40, 952 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 568 },
			["Trippytwinaz|spineshatter"] = { 6, 7, -40, 952 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 700 },
			["Soulmoo|spineshatter"] = { 11, 1, 41, 951 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 700 },
			["Zefrish|spineshatter"] = { 11, 1, 107, 951 },
			["Karoups|spineshatter"] = { 5, 5, -1, 906 },
			["Oldp|spineshatter"] = { 5, 5, 8, 951 },
			["Zanven|spineshatter"] = { 5, 4, 13, 859 },
			["Brubru|spineshatter"] = { 5, 3, 12, 568 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 538 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 539 },
			["Everlost|spineshatter"] = { 4, 2, 14, 694 },
			["Mblol|spineshatter"] = { 4, 2, -22, 1005 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 693 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 768 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 602 },
			["Ilovejade|spineshatter"] = { 2, 1, -22, 882 },
			["Invinciblexx|spineshatter"] = { 2, 1, -22, 881 },
			["Rhythmictwo|spineshatter"] = { 2, 1, -10, 1185 },
			["Zlodey|spineshatter"] = { 2, 1, -10, 1185 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 657 },
			["Doko|spineshatter"] = { 0, 1, -9, 1019 },
			["Koeter|spineshatter"] = { 1, 0, 4, 905 },
			["Saptain|spineshatter"] = { 0, 1, -12, 645 },
			["Skillexe|thunderstrike"] = { 0, 1, -19, 825 },
			["Tamár|spineshatter"] = { 1, 0, 4, 905 },
			["Walida|spineshatter"] = { 0, 1, -9, 1005 },
		},
	},
}

