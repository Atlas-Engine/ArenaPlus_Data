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

ns.ACTIVITY_BY_REGION["tbc-us"] = {
	built = 1794603513,
	builtText = "2026-11-13 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Yagoona|nightslayer"] = { 8, 1, 3, 161 },
			["Cream|nightslayer"] = { 3, 1, 4, 78 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 76 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 77 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 31 },
			["Shob|nightslayer"] = { 2, 1, 11, 77 },
			["Creationx|nightslayer"] = { 0, 2, -15, 89 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 82 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 92 },
			["Creation|nightslayer"] = { 1, 0, 21, 71 },
			["Kedern|nightslayer"] = { 1, 0, 3, 67 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 83 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 93 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Yagoona|nightslayer"] = { 8, 1, 3, 161 },
			["Cream|nightslayer"] = { 3, 1, 4, 78 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 76 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 77 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 31 },
			["Shob|nightslayer"] = { 2, 1, 11, 77 },
			["Creationx|nightslayer"] = { 0, 2, -15, 89 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 82 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 92 },
			["Creation|nightslayer"] = { 1, 0, 21, 71 },
			["Kedern|nightslayer"] = { 1, 0, 3, 67 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 83 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 93 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Yagoona|nightslayer"] = { 8, 1, 3, 161 },
			["Cream|nightslayer"] = { 3, 1, 4, 78 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 76 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 77 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 701 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 31 },
			["Shob|nightslayer"] = { 2, 1, 11, 77 },
			["Creationx|nightslayer"] = { 0, 2, -15, 89 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 82 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 92 },
			["Creation|nightslayer"] = { 1, 0, 21, 71 },
			["Kedern|nightslayer"] = { 1, 0, 3, 67 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 83 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 93 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 7, 11, -26, 867 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 866 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 895 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 896 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 961 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 962 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 853 },
			["Qantas|nightslayer"] = { 4, 6, -23, 854 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 971 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 972 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 161 },
			["Duudah|nightslayer"] = { 6, 0, 19, 1061 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 1061 },
			["Cream|nightslayer"] = { 3, 1, 4, 78 },
			["Creationw|nightslayer"] = { 2, 2, -32, 1421 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 76 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 77 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 701 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 31 },
			["Shob|nightslayer"] = { 2, 1, 11, 77 },
			["Arpx|nightslayer"] = { 2, 0, 14, 871 },
			["Creationx|nightslayer"] = { 0, 2, -15, 89 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 82 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 871 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 92 },
			["Creation|nightslayer"] = { 1, 0, 21, 71 },
			["Kedern|nightslayer"] = { 1, 0, 3, 67 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 83 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 93 },
		},
	},
}

