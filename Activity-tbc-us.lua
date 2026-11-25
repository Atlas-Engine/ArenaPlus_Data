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
	built = 1795568314,
	builtText = "2026-11-24 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 1, 1, -19, 91 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 1, 1, -19, 91 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 1, 1, -19, 91 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 950 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 940 },
			["Restokind|nightslayer"] = { 12, 10, 20, 1213 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 1160 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 940 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 940 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 1097 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 1040 },
			["Coneily|nightslayer"] = { 7, 3, 27, 1230 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 1202 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 940 },
			["Jackular|nightslayer"] = { 3, 7, -42, 1067 },
			["Probear|nightslayer"] = { 6, 4, 44, 971 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 1120 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 1230 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 1213 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 1300 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 1170 },
			["Rjp|nightslayer"] = { 5, 1, 8, 1171 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 1340 },
			["Tycat|nightslayer"] = { 4, 0, 0, 1354 },
			["Largefish|nightslayer"] = { 1, 2, 18, 1120 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 1278 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 1300 },
			["Jamzki|nightslayer"] = { 1, 1, -19, 91 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 1270 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 1270 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 1300 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 1111 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 972 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 968 },
			["Probear|nightslayer"] = { 5, 0, 5, 971 },
			["Showhan|nightslayer"] = { 5, 0, 0, 966 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 1300 },
		},
	},
}

