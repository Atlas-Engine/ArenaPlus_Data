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
	built = 1795881587,
	builtText = "2026-11-28 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cobrä|pagle"] = { 14, 19, 8, 518 },
			["Skrylur|pagle"] = { 14, 19, 8, 518 },
			["Fktry|raden"] = { 12, 18, 71, 546 },
			["Nf|raden"] = { 12, 18, 23, 546 },
			["Atreyuz|galakras"] = { 18, 10, 16, 508 },
			["Dankenbrew|lei-shen"] = { 18, 10, -1, 508 },
			["Buckup|pagle"] = { 9, 5, 39, 449 },
			["Mikaylaa|raden"] = { 9, 5, 23, 556 },
			["Pablosanchez|raden"] = { 3, 11, -165, 560 },
			["Tamerak|raden"] = { 6, 8, -9, 584 },
			["Sheerwill|pagle"] = { 7, 6, 30, 671 },
			["Laritza|lei-shen"] = { 8, 3, 53, 404 },
			["Phöoba|pagle"] = { 8, 3, 109, 534 },
			["Velmat|pagle"] = { 6, 5, 54, 547 },
			["Guanyîn|raden"] = { 5, 5, -12, 689 },
			["Radendznuts|raden"] = { 5, 5, -7, 690 },
			["Blankis|raden"] = { 5, 4, 43, 672 },
			["Inkárri|arugal-au"] = { 4, 4, -10, 626 },
			["Mòónfirebeam|raden"] = { 4, 4, -31, 625 },
			["Apechamp|raden"] = { 3, 4, -7, 688 },
			["Healyee|immerseus"] = { 0, 7, -30, 559 },
			["Sponsorz|raden"] = { 3, 4, 18, 700 },
			["Kelmight|pagle"] = { 1, 5, -21, 712 },
			["Poixon|pagle"] = { 1, 5, -21, 712 },
			["Fingérplay|galakras"] = { 4, 1, 43, 519 },
			["Booku|pagle"] = { 0, 3, -11, 603 },
			["Rëyy|raden"] = { 2, 1, 1, 584 },
			["Technique|raden"] = { 1, 2, -13, 588 },
			["Drgewch|raden"] = { 1, 0, 11, 707 },
			["Fctry|raden"] = { 1, 0, 12, 536 },
			["Miposhká|raden"] = { 1, 0, 1, 584 },
			["Mistyxo|raden"] = { 1, 0, 10, 537 },
			["Qtx|raden"] = { 1, 0, 11, 706 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Sniperfetzz|pagle"] = { 27, 27, 114, 764 },
			["Tochinoshin|galakras"] = { 27, 27, 69, 798 },
			["Tamerak|raden"] = { 18, 21, -66, 584 },
			["Kelmight|pagle"] = { 17, 21, -3, 712 },
			["Poixon|pagle"] = { 17, 21, -5, 712 },
			["Dankenbrew|lei-shen"] = { 20, 14, -45, 508 },
			["Atreyuz|galakras"] = { 19, 14, -33, 508 },
			["Cobrä|pagle"] = { 14, 19, 8, 518 },
			["Skrylur|pagle"] = { 14, 19, 8, 518 },
			["Fktry|raden"] = { 12, 18, 71, 546 },
			["Nf|raden"] = { 12, 18, 23, 546 },
			["Pablosanchez|raden"] = { 7, 14, -170, 560 },
			["Sheerwill|pagle"] = { 10, 10, 37, 671 },
			["Dankorbs|pagle"] = { 7, 12, -3, 878 },
			["Kxle|raden"] = { 10, 9, -4, 901 },
			["Ecafkcufhi|raden"] = { 9, 7, 2, 901 },
			["Gigawimpx|raden"] = { 6, 9, 2, 878 },
			["Apechamp|raden"] = { 8, 6, 28, 688 },
			["Buckup|pagle"] = { 9, 5, 39, 449 },
			["Kushgodx|raden"] = { 7, 7, -56, 825 },
			["Mikaylaa|raden"] = { 9, 5, 23, 556 },
			["Sponsorz|raden"] = { 8, 6, 79, 700 },
			["Guanyîn|raden"] = { 6, 6, -10, 689 },
			["Radendznuts|raden"] = { 6, 6, -4, 690 },
			["Laritza|lei-shen"] = { 8, 3, 53, 404 },
			["Møonxz|raden"] = { 4, 7, -7, 968 },
			["Phöoba|pagle"] = { 8, 3, 109, 534 },
			["Velmat|pagle"] = { 6, 5, 54, 547 },
			["Blankis|raden"] = { 5, 4, 43, 672 },
			["Drzynphd|raden"] = { 6, 3, -49, 764 },
			["Teatable|raden"] = { 6, 3, -56, 766 },
			["Dankenelf|pagle"] = { 3, 5, -18, 818 },
			["Inkárri|arugal-au"] = { 4, 4, -10, 626 },
			["Longkidneygg|pagle"] = { 1, 7, 22, 811 },
			["Miposhká|raden"] = { 8, 0, 13, 584 },
			["Mòónfirebeam|raden"] = { 4, 4, -31, 625 },
			["Weknwdatruth|pagle"] = { 5, 3, 34, 922 },
			["Healyee|immerseus"] = { 0, 7, -30, 559 },
			["Lôukî|pagle"] = { 2, 5, 18, 1004 },
			["ßxß|raden"] = { 7, 0, 22, 732 },
			["Chotter|pagle"] = { 5, 1, 68, 944 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 944 },
			["Fingérplay|galakras"] = { 4, 1, 43, 519 },
			["Lichkinng|pagle"] = { 1, 4, 0, 740 },
			["Theweave|raden"] = { 5, 0, 18, 887 },
			["Whisper|raden"] = { 2, 3, 46, 944 },
			["Xander|raden"] = { 5, 0, 26, 867 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 1220 },
			["Electabuzz|raden"] = { 2, 2, 15, 851 },
			["Jimcramer|raden"] = { 2, 2, -9, 764 },
			["Nilio|raden"] = { 0, 4, -20, 882 },
			["Vp|immerseus"] = { 0, 4, 0, 743 },
			["Booku|pagle"] = { 0, 3, -11, 603 },
			["Fatmanscoop|raden"] = { 2, 1, 1, 764 },
			["Firecano|raden"] = { 3, 0, 7, 971 },
			["Glinna|raden"] = { 1, 2, -7, 1120 },
			["Nvmxxtxx|raden"] = { 3, 0, 11, 982 },
			["Ohmsnothing|galakras"] = { 0, 3, -6, 984 },
			["Pisch|arugal-au"] = { 2, 1, 11, 778 },
			["Rëyy|raden"] = { 2, 1, 1, 584 },
			["Technique|raden"] = { 1, 2, -13, 588 },
			["Haolong|raden"] = { 2, 0, 12, 944 },
			["Palyy|raden"] = { 0, 2, 0, 881 },
			["Prototypeceo|pagle"] = { 1, 1, 19, 1073 },
			["Soyinfelíz|raden"] = { 2, 0, 20, 764 },
			["Sponsor|raden"] = { 1, 1, -3, 812 },
			["Youcutebb|raden"] = { 1, 1, 1, 811 },
			["Avium|pagle"] = { 0, 1, 0, 858 },
			["Blankisa|raden"] = { 1, 0, 15, 900 },
			["Drgewch|raden"] = { 1, 0, 11, 707 },
			["Fctry|raden"] = { 1, 0, 12, 536 },
			["Feraldruidd|arugal-au"] = { 0, 1, 0, 830 },
			["Garnaby|pagle"] = { 1, 0, 9, 851 },
			["Jackelinc|pagle"] = { 0, 1, 0, 1124 },
			["Mistyxo|raden"] = { 1, 0, 10, 537 },
			["Mwgødx|raden"] = { 1, 0, 19, 828 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 1124 },
			["Qtx|raden"] = { 1, 0, 11, 706 },
			["Sombodee|pagle"] = { 1, 0, 11, 867 },
			["Zappytits|galakras"] = { 0, 1, -6, 1145 },
		},
	},
}

