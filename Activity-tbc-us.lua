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
	built = 1794513514,
	builtText = "2026-11-12 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 660 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 641 },
			["Oxwm|dreamscythe"] = { 8, 6, -79, 663 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 641 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 660 },
			["Morepower|nightslayer"] = { 14, 5, 5, 821 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 663 },
			["Yodead|nightslayer"] = { 14, 5, 16, 821 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 641 },
			["Amazý|nightslayer"] = { 8, 7, -32, 793 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 794 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 789 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 1163 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 781 },
			["Arpx|nightslayer"] = { 6, 1, 18, 782 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 821 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 821 },
			["Booxo|nightslayer"] = { 0, 2, -19, 1149 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 641 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 782 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 821 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 1102 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 1058 },
			["Rjp|nightslayer"] = { 1, 0, 5, 873 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 1107 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 1181 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 1133 },
		},
	},
}

