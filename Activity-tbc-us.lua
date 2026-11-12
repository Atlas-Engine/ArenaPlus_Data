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
	built = 1794509914,
	builtText = "2026-11-12 01:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 600 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 581 },
			["Oxwm|dreamscythe"] = { 8, 6, -79, 603 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 581 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 600 },
			["Morepower|nightslayer"] = { 14, 5, 5, 761 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 603 },
			["Yodead|nightslayer"] = { 14, 5, 16, 761 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 581 },
			["Amazý|nightslayer"] = { 8, 7, -32, 733 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 734 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 729 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 1103 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 721 },
			["Arpx|nightslayer"] = { 6, 1, 18, 722 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 761 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 761 },
			["Booxo|nightslayer"] = { 0, 2, -19, 1089 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 581 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 722 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 761 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 1042 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 998 },
			["Rjp|nightslayer"] = { 1, 0, 5, 813 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 1047 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 1121 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 1073 },
		},
	},
}

