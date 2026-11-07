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
	built = 1794070714,
	builtText = "2026-11-07 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 1, 0, 46 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 46 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 118 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 47 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 118 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 70 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 46 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 47 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 118 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 263 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 118 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 280 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 70 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 513 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 478 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 617 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 618 },
			["Fanthom|nightslayer"] = { 11, 11, -18, 674 },
			["Redubbed|nightslayer"] = { 11, 11, -18, 673 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 689 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 607 },
			["Leien|nightslayer"] = { 10, 5, 38, 606 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 707 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 709 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 658 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 658 },
			["Exthief|nightslayer"] = { 3, 8, -43, 658 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 658 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 637 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 658 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 478 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 493 },
			["Trû|nightslayer"] = { 4, 4, 10, 669 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 46 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 47 },
			["Aversor|nightslayer"] = { 2, 2, -17, 478 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 567 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 118 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 263 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 118 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 280 },
			["Hybro|nightslayer"] = { 1, 1, -3, 669 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 70 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 513 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 478 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 674 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 673 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 617 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 618 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 689 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 637 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 607 },
			["Leien|nightslayer"] = { 10, 5, 38, 606 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 707 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 709 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 658 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 658 },
			["Exthief|nightslayer"] = { 3, 8, -43, 658 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 658 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 658 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 478 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 493 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 721 },
			["Jodaldal|nightslayer"] = { 7, 1, 34, 118 },
			["Sunnyslow|nightslayer"] = { 7, 1, 4, 118 },
			["Trû|nightslayer"] = { 4, 4, 10, 669 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 729 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 769 },
			["Swky|nightslayer"] = { 3, 3, 12, 803 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 1090 },
			["Mßison|nightslayer"] = { 2, 3, -10, 1090 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 46 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 47 },
			["Aversor|nightslayer"] = { 2, 2, -17, 478 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 567 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 263 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 1361 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 280 },
			["Hybro|nightslayer"] = { 1, 1, -3, 669 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 1361 },
			["Arpx|nightslayer"] = { 1, 0, 1, 935 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 875 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 871 },
			["Yodead|nightslayer"] = { 1, 0, 2, 921 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 801 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 70 },
		},
	},
}

