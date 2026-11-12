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
	built = 1794499118,
	builtText = "2026-11-12 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 420 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 423 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 401 },
			["Amazý|nightslayer"] = { 8, 7, -32, 553 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 554 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 549 },
			["Morepower|nightslayer"] = { 4, 4, -16, 581 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 541 },
			["Yodead|nightslayer"] = { 4, 4, -7, 581 },
			["Arpx|nightslayer"] = { 6, 1, 18, 542 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 581 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 581 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 401 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 542 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 581 },
			["Rjp|nightslayer"] = { 1, 0, 5, 633 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 420 },
			["Morepower|nightslayer"] = { 14, 5, 5, 581 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 423 },
			["Yodead|nightslayer"] = { 14, 5, 16, 581 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 401 },
			["Amazý|nightslayer"] = { 8, 7, -32, 553 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 554 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 549 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 923 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 541 },
			["Arpx|nightslayer"] = { 6, 1, 18, 542 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 581 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 581 },
			["Booxo|nightslayer"] = { 0, 2, -19, 909 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 401 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 542 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 581 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 862 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 818 },
			["Rjp|nightslayer"] = { 1, 0, 5, 633 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 867 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 941 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 893 },
		},
	},
}

