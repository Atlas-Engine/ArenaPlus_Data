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
	built = 1794671914,
	builtText = "2026-11-14 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 401 },
			["Xczv|dreamscythe"] = { 23, 8, 123, 482 },
			["Mopz|nightslayer"] = { 4, 3, -7, 718 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 670 },
			["Astias|nightslayer"] = { 3, 2, 0, 550 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 506 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 506 },
			["Qantas|nightslayer"] = { 1, 1, -18, 719 },
			["Adooken|nightslayer"] = { 0, 1, -9, 401 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 676 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 567 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 672 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 673 },
		},
		[3] = {
			["Ryzp|nightslayer"] = { 6, 0, 3, 703 },
			["Hybro|nightslayer"] = { 5, 0, 11, 690 },
			["Paxii|nightslayer"] = { 5, 0, 9, 702 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 704 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 401 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 482 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 1063 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 721 },
			["Mopz|nightslayer"] = { 7, 5, 19, 718 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 761 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 761 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 1121 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 1121 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 1301 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 670 },
			["Astias|nightslayer"] = { 3, 2, 0, 550 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 506 },
			["Cream|nightslayer"] = { 3, 1, 4, 1218 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 761 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 506 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 1216 },
			["Tycat|nightslayer"] = { 4, 0, 10, 761 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 1217 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 1171 },
			["Shob|nightslayer"] = { 2, 1, 11, 1217 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 720 },
			["Creationx|nightslayer"] = { 0, 2, -15, 1229 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 1222 },
			["Frotted|nightslayer"] = { 0, 2, -41, 761 },
			["Losticus|nightslayer"] = { 2, 0, 16, 1121 },
			["Qantas|nightslayer"] = { 1, 1, -18, 719 },
			["Swácked|nightslayer"] = { 0, 2, -21, 1121 },
			["Adooken|nightslayer"] = { 0, 1, -9, 401 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 1232 },
			["Creation|nightslayer"] = { 1, 0, 21, 1211 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 1121 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 1121 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 676 },
			["Kedern|nightslayer"] = { 1, 0, 3, 1207 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 567 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 672 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 1223 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 1233 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 673 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 690 },
			["Paxii|nightslayer"] = { 9, 0, 14, 702 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 703 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 1121 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 704 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 761 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 1121 },
		},
	},
}

