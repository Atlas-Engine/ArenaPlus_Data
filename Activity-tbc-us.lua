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
	built = 1793969914,
	builtText = "2026-11-06 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Flexrage|nightslayer"] = { 6, 0, 38, 41 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 41 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Flexrage|nightslayer"] = { 6, 0, 38, 41 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 41 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 41 },
			["Trû|nightslayer"] = { 2, 0, 9, 173 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 6, 0, 12, 242 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 41 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 41 },
			["Swky|nightslayer"] = { 6, 0, 12, 247 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 221 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 221 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 312 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 41 },
			["Peladini|nightslayer"] = { 1, 1, 6, 221 },
			["Trû|nightslayer"] = { 2, 0, 9, 173 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 419 },
			["Onit|nightslayer"] = { 8, 7, 14, 487 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 461 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 465 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 534 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 535 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 637 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 581 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 242 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 41 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 41 },
			["Swky|nightslayer"] = { 6, 0, 12, 247 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 675 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 554 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 556 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 221 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 562 },
			["Tycat|nightslayer"] = { 2, 2, -19, 675 },
			["Lestát|nightslayer"] = { 2, 1, 10, 492 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 221 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 401 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 581 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 312 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 606 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 41 },
			["Peladini|nightslayer"] = { 1, 1, 6, 221 },
			["Trû|nightslayer"] = { 2, 0, 9, 173 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 481 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 581 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 460 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 419 },
			["Onit|nightslayer"] = { 8, 7, 14, 487 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 461 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 465 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 534 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 535 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 637 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 581 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 1121 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 242 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 41 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 41 },
			["Swky|nightslayer"] = { 6, 0, 12, 247 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 1260 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 675 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 554 },
			["Fremi|nightslayer"] = { 3, 1, 25, 1210 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 556 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 221 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 562 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 1259 },
			["Tycat|nightslayer"] = { 2, 2, -19, 675 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 1210 },
			["Lestát|nightslayer"] = { 2, 1, 10, 492 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 221 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 401 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 581 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 312 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 606 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 41 },
			["Peladini|nightslayer"] = { 1, 1, 6, 221 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 1121 },
			["Sunnyslow|nightslayer"] = { 2, 0, 10, 1195 },
			["Trû|nightslayer"] = { 2, 0, 9, 173 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 1187 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 481 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 581 },
			["Tbalc|nightslayer"] = { 1, 0, 4, 1301 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 460 },
		},
	},
}

