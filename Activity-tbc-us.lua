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
	built = 1794067113,
	builtText = "2026-11-07 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 3, 0, 18, 58 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 58 },
			["Namkijun|nightslayer"] = { 0, 2, -8, 58 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 10 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 3, 0, 18, 58 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 58 },
			["Namkijun|nightslayer"] = { 0, 2, -8, 58 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 143 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 10 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 3, 0, 18, 58 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 203 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 58 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 220 },
			["Namkijun|nightslayer"] = { 0, 2, -8, 58 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 143 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 10 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 453 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 418 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 557 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 558 },
			["Fanthom|nightslayer"] = { 11, 11, -18, 614 },
			["Redubbed|nightslayer"] = { 11, 11, -18, 613 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 629 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 547 },
			["Leien|nightslayer"] = { 10, 5, 38, 546 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 647 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 649 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 598 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 598 },
			["Exthief|nightslayer"] = { 3, 8, -43, 598 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 598 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 576 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 598 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 418 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 433 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 661 },
			["Trû|nightslayer"] = { 4, 4, 10, 609 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 669 },
			["Aversor|nightslayer"] = { 2, 2, -17, 418 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 507 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 58 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 203 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 58 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 220 },
			["Hybro|nightslayer"] = { 1, 1, -3, 609 },
			["Namkijun|nightslayer"] = { 0, 2, -8, 58 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 143 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 709 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 10 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 453 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 418 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 614 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 613 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 557 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 558 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 629 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 576 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 547 },
			["Leien|nightslayer"] = { 10, 5, 38, 546 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 647 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 649 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 598 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 598 },
			["Exthief|nightslayer"] = { 3, 8, -43, 598 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 598 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 598 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 418 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 433 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 661 },
			["Jodaldal|nightslayer"] = { 7, 1, 34, 58 },
			["Sunnyslow|nightslayer"] = { 7, 1, 4, 58 },
			["Trû|nightslayer"] = { 4, 4, 10, 609 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 669 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 709 },
			["Swky|nightslayer"] = { 3, 3, 12, 743 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 1030 },
			["Mßison|nightslayer"] = { 2, 3, -10, 1030 },
			["Aversor|nightslayer"] = { 2, 2, -17, 418 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 507 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 203 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 1301 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 220 },
			["Hybro|nightslayer"] = { 1, 1, -3, 609 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 1301 },
			["Namkijun|nightslayer"] = { 0, 2, -8, 58 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 143 },
			["Arpx|nightslayer"] = { 1, 0, 1, 875 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 815 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 811 },
			["Yodead|nightslayer"] = { 1, 0, 2, 861 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 741 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 10 },
		},
	},
}

