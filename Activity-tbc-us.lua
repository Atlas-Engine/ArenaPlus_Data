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
	built = 1794488315,
	builtText = "2026-11-12 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 240 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 221 },
			["Oxwm|dreamscythe"] = { 8, 6, -79, 243 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 221 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 240 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 243 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 221 },
			["Amazý|nightslayer"] = { 8, 7, -32, 373 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 374 },
			["Yodead|nightslayer"] = { 9, 4, 23, 401 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 369 },
			["Morepower|nightslayer"] = { 4, 4, -16, 401 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 361 },
			["Arpx|nightslayer"] = { 6, 1, 18, 362 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 401 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 401 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 221 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 362 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 401 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 638 },
			["Rjp|nightslayer"] = { 1, 0, 5, 453 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 687 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 713 },
			["Stoggimeistr|nightslayer"] = { 0, 1, -9, 682 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 240 },
			["Morepower|nightslayer"] = { 14, 5, 5, 401 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 243 },
			["Yodead|nightslayer"] = { 14, 5, 16, 401 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 221 },
			["Amazý|nightslayer"] = { 8, 7, -32, 373 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 374 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 369 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 743 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 361 },
			["Arpx|nightslayer"] = { 6, 1, 18, 362 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 401 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 401 },
			["Booxo|nightslayer"] = { 0, 2, -19, 729 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 221 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 362 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 401 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 682 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 1437 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 638 },
			["Rjp|nightslayer"] = { 1, 0, 5, 453 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 1438 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 687 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 761 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 713 },
		},
	},
}

