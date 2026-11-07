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
	built = 1794074314,
	builtText = "2026-11-07 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 106 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 178 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 107 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 178 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 130 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 2, 3, -8, 106 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 107 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 178 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 323 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 178 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 340 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 130 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 538 },
			["Allenstout|nightslayer"] = { 19, 14, 89, 573 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 677 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 678 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 667 },
			["Leien|nightslayer"] = { 10, 5, 38, 666 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 718 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 718 },
			["Exthief|nightslayer"] = { 3, 8, -43, 718 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 718 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 697 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 718 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 538 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 553 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 106 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 107 },
			["Aversor|nightslayer"] = { 2, 2, -17, 538 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 627 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 178 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 323 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 178 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 340 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 130 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 573 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 538 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 734 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 733 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 677 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 678 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 749 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 697 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 667 },
			["Leien|nightslayer"] = { 10, 5, 38, 666 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 767 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 769 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 718 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 718 },
			["Exthief|nightslayer"] = { 3, 8, -43, 718 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 718 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 718 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 538 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 553 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 781 },
			["Trû|nightslayer"] = { 4, 4, 10, 729 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 789 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 829 },
			["Swky|nightslayer"] = { 3, 3, 12, 863 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 1150 },
			["Mßison|nightslayer"] = { 2, 3, -10, 1150 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 106 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 107 },
			["Aversor|nightslayer"] = { 2, 2, -17, 538 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 627 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 178 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 323 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 178 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 1421 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 340 },
			["Hybro|nightslayer"] = { 1, 1, -3, 729 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 1421 },
			["Arpx|nightslayer"] = { 1, 0, 1, 995 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 935 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 931 },
			["Yodead|nightslayer"] = { 1, 0, 2, 981 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 861 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 130 },
		},
	},
}

