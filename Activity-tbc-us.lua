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
	built = 1794959914,
	builtText = "2026-11-17 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 701 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 628 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 632 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 701 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 520 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 1322 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 701 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 741 },
			["Ðade|nightslayer"] = { 6, 5, -37, 802 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 1112 },
			["Astiax|nightslayer"] = { 5, 5, -6, 1172 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 628 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 1198 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 753 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 1265 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 803 },
			["Jackular|nightslayer"] = { 5, 5, 21, 1173 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 1241 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 1177 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1201 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 632 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 1221 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 1177 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 1201 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 1241 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 1241 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 1333 },
			["Ichix|nightslayer"] = { 7, 2, 82, 1333 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 1194 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 1194 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 1241 },
			["Caelius|nightslayer"] = { 3, 2, -29, 1241 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 773 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 787 },
			["Pomper|nightslayer"] = { 2, 3, -17, 1241 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 1061 },
			["Astias|nightslayer"] = { 2, 2, 1, 1301 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 1421 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 1303 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 1241 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 1241 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 701 },
			["Konnz|nightslayer"] = { 1, 0, 3, 1408 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 520 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 1407 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 881 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 1188 },
			["Pylol|nightslayer"] = { 4, 0, 5, 881 },
		},
	},
}

