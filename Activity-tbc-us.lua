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
	built = 1794077916,
	builtText = "2026-11-07 01:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 1, 0, 166 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 167 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 166 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 167 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 238 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 238 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 190 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 12, 11, 43, 633 },
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 598 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 598 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 613 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 166 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 167 },
			["Aversor|nightslayer"] = { 2, 2, -17, 598 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 687 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 238 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 383 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 238 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 400 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 190 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 633 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 598 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 794 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 793 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 737 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 738 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 809 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 757 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 727 },
			["Leien|nightslayer"] = { 10, 5, 38, 726 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 827 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 829 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 778 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 778 },
			["Exthief|nightslayer"] = { 3, 8, -43, 778 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 778 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 778 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 598 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 613 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 841 },
			["Trû|nightslayer"] = { 4, 4, 10, 789 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 849 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 889 },
			["Swky|nightslayer"] = { 3, 3, 12, 923 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 1210 },
			["Mßison|nightslayer"] = { 2, 3, -10, 1210 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 166 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 167 },
			["Aversor|nightslayer"] = { 2, 2, -17, 598 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 687 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 238 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 383 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 238 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 400 },
			["Hybro|nightslayer"] = { 1, 1, -3, 789 },
			["Arpx|nightslayer"] = { 1, 0, 1, 1055 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 995 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 992 },
			["Yodead|nightslayer"] = { 1, 0, 2, 1041 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 921 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 190 },
		},
	},
}

