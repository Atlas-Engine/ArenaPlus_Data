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
	built = 1794081513,
	builtText = "2026-11-07 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 226 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 298 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 227 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 298 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 250 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 12, 11, 43, 693 },
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 658 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 658 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 673 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 226 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 227 },
			["Aversor|nightslayer"] = { 2, 2, -17, 658 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 298 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 443 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 298 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 460 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 250 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 693 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 658 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 854 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 853 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 797 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 798 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 869 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 816 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 787 },
			["Leien|nightslayer"] = { 10, 5, 38, 786 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 887 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 889 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 838 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 838 },
			["Exthief|nightslayer"] = { 3, 8, -43, 838 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 838 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 838 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 658 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 673 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 901 },
			["Trû|nightslayer"] = { 4, 4, 10, 849 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 909 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 949 },
			["Swky|nightslayer"] = { 3, 3, 12, 983 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 1270 },
			["Mßison|nightslayer"] = { 2, 3, -10, 1270 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 226 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 227 },
			["Aversor|nightslayer"] = { 2, 2, -17, 658 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 747 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 298 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 443 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 298 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 460 },
			["Hybro|nightslayer"] = { 1, 1, -3, 849 },
			["Arpx|nightslayer"] = { 1, 0, 1, 1115 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 1055 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 1051 },
			["Yodead|nightslayer"] = { 1, 0, 2, 1101 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 981 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 250 },
		},
	},
}

