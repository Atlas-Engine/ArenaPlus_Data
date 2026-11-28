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

ns.ACTIVITY_BY_REGION["us"] = {
	built = 1795888788,
	builtText = "2026-11-28 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Eixilddam|pagle"] = { 0, 1, -5, 100 },
			["Lebenn|pagle"] = { 1, 0, 7, 94 },
			["Sombodee|pagle"] = { 1, 0, 2, 76 },
			["Wowamazingcc|raden"] = { 1, 0, 2, 77 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Eixilddam|pagle"] = { 0, 1, -5, 100 },
			["Lebenn|pagle"] = { 1, 0, 7, 94 },
			["Sombodee|pagle"] = { 1, 0, 2, 76 },
			["Wowamazingcc|raden"] = { 1, 0, 2, 77 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cobrä|pagle"] = { 14, 19, 8, 638 },
			["Skrylur|pagle"] = { 14, 19, 8, 638 },
			["Fktry|raden"] = { 12, 18, 71, 666 },
			["Nf|raden"] = { 12, 18, 23, 666 },
			["Atreyuz|galakras"] = { 18, 10, 16, 628 },
			["Dankenbrew|lei-shen"] = { 18, 10, -1, 628 },
			["Buckup|pagle"] = { 9, 5, 39, 569 },
			["Mikaylaa|raden"] = { 9, 5, 23, 676 },
			["Tamerak|raden"] = { 6, 8, -9, 704 },
			["Laritza|lei-shen"] = { 8, 3, 53, 524 },
			["Phöoba|pagle"] = { 8, 3, 109, 654 },
			["Pablosanchez|raden"] = { 3, 7, -101, 680 },
			["Velmat|pagle"] = { 4, 4, 18, 667 },
			["Healyee|immerseus"] = { 0, 7, -30, 679 },
			["Fingérplay|galakras"] = { 4, 1, 43, 639 },
			["Rëyy|raden"] = { 2, 1, 1, 704 },
			["Technique|raden"] = { 1, 2, -13, 708 },
			["Eixilddam|pagle"] = { 0, 1, -5, 100 },
			["Fctry|raden"] = { 1, 0, 12, 656 },
			["Lebenn|pagle"] = { 1, 0, 7, 94 },
			["Miposhká|raden"] = { 1, 0, 1, 704 },
			["Mistyxo|raden"] = { 1, 0, 10, 657 },
			["Sombodee|pagle"] = { 1, 0, 2, 76 },
			["Wowamazingcc|raden"] = { 1, 0, 2, 77 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Sniperfetzz|pagle"] = { 27, 27, 114, 884 },
			["Tochinoshin|galakras"] = { 27, 27, 69, 918 },
			["Tamerak|raden"] = { 18, 21, -66, 704 },
			["Kelmight|pagle"] = { 17, 21, -3, 832 },
			["Poixon|pagle"] = { 17, 21, -5, 832 },
			["Dankenbrew|lei-shen"] = { 20, 14, -45, 628 },
			["Atreyuz|galakras"] = { 19, 14, -33, 628 },
			["Cobrä|pagle"] = { 14, 19, 8, 638 },
			["Skrylur|pagle"] = { 14, 19, 8, 638 },
			["Fktry|raden"] = { 12, 18, 71, 666 },
			["Nf|raden"] = { 12, 18, 23, 666 },
			["Pablosanchez|raden"] = { 7, 14, -170, 680 },
			["Sheerwill|pagle"] = { 10, 10, 37, 791 },
			["Dankorbs|pagle"] = { 7, 12, -3, 998 },
			["Kxle|raden"] = { 10, 9, -4, 1021 },
			["Ecafkcufhi|raden"] = { 9, 7, 2, 1021 },
			["Gigawimpx|raden"] = { 6, 9, 2, 998 },
			["Apechamp|raden"] = { 8, 6, 28, 808 },
			["Buckup|pagle"] = { 9, 5, 39, 569 },
			["Kushgodx|raden"] = { 7, 7, -56, 945 },
			["Mikaylaa|raden"] = { 9, 5, 23, 676 },
			["Sponsorz|raden"] = { 8, 6, 79, 820 },
			["Guanyîn|raden"] = { 6, 6, -10, 809 },
			["Radendznuts|raden"] = { 6, 6, -4, 810 },
			["Laritza|lei-shen"] = { 8, 3, 53, 524 },
			["Møonxz|raden"] = { 4, 7, -7, 1088 },
			["Phöoba|pagle"] = { 8, 3, 109, 654 },
			["Velmat|pagle"] = { 6, 5, 54, 667 },
			["Blankis|raden"] = { 5, 4, 43, 792 },
			["Drzynphd|raden"] = { 6, 3, -49, 884 },
			["Teatable|raden"] = { 6, 3, -56, 886 },
			["Dankenelf|pagle"] = { 3, 5, -18, 938 },
			["Inkárri|arugal-au"] = { 4, 4, -10, 746 },
			["Longkidneygg|pagle"] = { 1, 7, 22, 931 },
			["Miposhká|raden"] = { 8, 0, 13, 704 },
			["Mòónfirebeam|raden"] = { 4, 4, -31, 745 },
			["Weknwdatruth|pagle"] = { 5, 3, 34, 1042 },
			["Healyee|immerseus"] = { 0, 7, -30, 679 },
			["Lôukî|pagle"] = { 2, 5, 18, 1124 },
			["ßxß|raden"] = { 7, 0, 22, 852 },
			["Chotter|pagle"] = { 5, 1, 68, 1064 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 1064 },
			["Fingérplay|galakras"] = { 4, 1, 43, 639 },
			["Lichkinng|pagle"] = { 1, 4, 0, 860 },
			["Theweave|raden"] = { 5, 0, 18, 1007 },
			["Whisper|raden"] = { 2, 3, 46, 1064 },
			["Xander|raden"] = { 5, 0, 26, 987 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 1340 },
			["Electabuzz|raden"] = { 2, 2, 15, 971 },
			["Jimcramer|raden"] = { 2, 2, -9, 884 },
			["Nilio|raden"] = { 0, 4, -20, 1002 },
			["Vp|immerseus"] = { 0, 4, 0, 863 },
			["Booku|pagle"] = { 0, 3, -11, 723 },
			["Fatmanscoop|raden"] = { 2, 1, 1, 884 },
			["Firecano|raden"] = { 3, 0, 7, 1091 },
			["Glinna|raden"] = { 1, 2, -7, 1240 },
			["Nvmxxtxx|raden"] = { 3, 0, 11, 1102 },
			["Ohmsnothing|galakras"] = { 0, 3, -6, 1104 },
			["Pisch|arugal-au"] = { 2, 1, 11, 898 },
			["Rëyy|raden"] = { 2, 1, 1, 704 },
			["Technique|raden"] = { 1, 2, -13, 708 },
			["Haolong|raden"] = { 2, 0, 12, 1064 },
			["Palyy|raden"] = { 0, 2, 0, 1001 },
			["Prototypeceo|pagle"] = { 1, 1, 19, 1193 },
			["Sombodee|pagle"] = { 2, 0, 13, 76 },
			["Soyinfelíz|raden"] = { 2, 0, 20, 884 },
			["Sponsor|raden"] = { 1, 1, -3, 932 },
			["Youcutebb|raden"] = { 1, 1, 1, 931 },
			["Avium|pagle"] = { 0, 1, 0, 978 },
			["Blankisa|raden"] = { 1, 0, 15, 1020 },
			["Drgewch|raden"] = { 1, 0, 11, 827 },
			["Eixilddam|pagle"] = { 0, 1, -5, 100 },
			["Fctry|raden"] = { 1, 0, 12, 656 },
			["Feraldruidd|arugal-au"] = { 0, 1, 0, 950 },
			["Garnaby|pagle"] = { 1, 0, 9, 971 },
			["Jackelinc|pagle"] = { 0, 1, 0, 1244 },
			["Lebenn|pagle"] = { 1, 0, 7, 94 },
			["Mistyxo|raden"] = { 1, 0, 10, 657 },
			["Mwgødx|raden"] = { 1, 0, 19, 948 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 1244 },
			["Qtx|raden"] = { 1, 0, 11, 826 },
			["Wowamazingcc|raden"] = { 1, 0, 2, 77 },
			["Zappytits|galakras"] = { 0, 1, -6, 1265 },
		},
	},
}

