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
	built = 1794520713,
	builtText = "2026-11-12 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Creationw|nightslayer"] = { 2, 2, -32, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Creationw|nightslayer"] = { 2, 2, -32, 41 },
			["Duudah|nightslayer"] = { 3, 1, 4, 68 },
			["Vanderden|nightslayer"] = { 3, 1, 3, 86 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Creationw|nightslayer"] = { 2, 2, -32, 41 },
			["Duudah|nightslayer"] = { 3, 1, 4, 68 },
			["Vanderden|nightslayer"] = { 3, 1, 3, 86 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Creationw|nightslayer"] = { 2, 2, -32, 41 },
			["Duudah|nightslayer"] = { 3, 1, 4, 68 },
			["Vanderden|nightslayer"] = { 3, 1, 3, 86 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 780 },
			["Morepower|nightslayer"] = { 14, 5, 5, 941 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 783 },
			["Yodead|nightslayer"] = { 14, 5, 16, 941 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 761 },
			["Amazý|nightslayer"] = { 8, 7, -32, 913 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 914 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 909 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 1283 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 901 },
			["Arpx|nightslayer"] = { 6, 1, 18, 902 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 941 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 941 },
			["Creationw|nightslayer"] = { 2, 2, -32, 41 },
			["Duudah|nightslayer"] = { 3, 1, 4, 68 },
			["Vanderden|nightslayer"] = { 3, 1, 3, 86 },
			["Booxo|nightslayer"] = { 0, 2, -19, 1269 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 761 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 902 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 941 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 1222 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 1178 },
			["Rjp|nightslayer"] = { 1, 0, 5, 993 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 1227 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 1301 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 1253 },
		},
	},
}

