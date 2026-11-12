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
	built = 1794495515,
	builtText = "2026-11-12 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 360 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 341 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 360 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 363 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 341 },
			["Amazý|nightslayer"] = { 8, 7, -32, 493 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 494 },
			["Yodead|nightslayer"] = { 9, 4, 23, 521 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 489 },
			["Morepower|nightslayer"] = { 4, 4, -16, 521 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 481 },
			["Arpx|nightslayer"] = { 6, 1, 18, 482 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 521 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 521 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 341 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 482 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 521 },
			["Rjp|nightslayer"] = { 1, 0, 5, 573 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 360 },
			["Morepower|nightslayer"] = { 14, 5, 5, 521 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 363 },
			["Yodead|nightslayer"] = { 14, 5, 16, 521 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 341 },
			["Amazý|nightslayer"] = { 8, 7, -32, 493 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 494 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 489 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 863 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 481 },
			["Arpx|nightslayer"] = { 6, 1, 18, 482 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 521 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 521 },
			["Booxo|nightslayer"] = { 0, 2, -19, 849 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 341 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 482 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 521 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 802 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 758 },
			["Rjp|nightslayer"] = { 1, 0, 5, 573 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 807 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 881 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 833 },
		},
	},
}

