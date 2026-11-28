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
	built = 1795885188,
	builtText = "2026-11-28 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lebenn|pagle"] = { 1, 0, 7, 34 },
			["Sombodee|pagle"] = { 1, 0, 2, 16 },
			["Wowamazingcc|raden"] = { 1, 0, 2, 17 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Lebenn|pagle"] = { 1, 0, 7, 34 },
			["Sombodee|pagle"] = { 1, 0, 2, 16 },
			["Wowamazingcc|raden"] = { 1, 0, 2, 17 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lebenn|pagle"] = { 1, 0, 7, 34 },
			["Sombodee|pagle"] = { 1, 0, 2, 16 },
			["Wowamazingcc|raden"] = { 1, 0, 2, 17 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cobrä|pagle"] = { 14, 19, 8, 578 },
			["Skrylur|pagle"] = { 14, 19, 8, 578 },
			["Fktry|raden"] = { 12, 18, 71, 606 },
			["Nf|raden"] = { 12, 18, 23, 606 },
			["Atreyuz|galakras"] = { 18, 10, 16, 568 },
			["Dankenbrew|lei-shen"] = { 18, 10, -1, 568 },
			["Buckup|pagle"] = { 9, 5, 39, 509 },
			["Mikaylaa|raden"] = { 9, 5, 23, 616 },
			["Tamerak|raden"] = { 6, 8, -9, 644 },
			["Pablosanchez|raden"] = { 3, 9, -138, 620 },
			["Laritza|lei-shen"] = { 8, 3, 53, 464 },
			["Phöoba|pagle"] = { 8, 3, 109, 594 },
			["Velmat|pagle"] = { 6, 5, 54, 607 },
			["Inkárri|arugal-au"] = { 4, 4, -10, 686 },
			["Mòónfirebeam|raden"] = { 4, 4, -31, 685 },
			["Healyee|immerseus"] = { 0, 7, -30, 619 },
			["Fingérplay|galakras"] = { 4, 1, 43, 579 },
			["Booku|pagle"] = { 0, 3, -11, 663 },
			["Rëyy|raden"] = { 2, 1, 1, 644 },
			["Technique|raden"] = { 1, 2, -13, 648 },
			["Fctry|raden"] = { 1, 0, 12, 596 },
			["Lebenn|pagle"] = { 1, 0, 7, 34 },
			["Miposhká|raden"] = { 1, 0, 1, 644 },
			["Mistyxo|raden"] = { 1, 0, 10, 597 },
			["Sombodee|pagle"] = { 1, 0, 2, 16 },
			["Wowamazingcc|raden"] = { 1, 0, 2, 17 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Sniperfetzz|pagle"] = { 27, 27, 114, 824 },
			["Tochinoshin|galakras"] = { 27, 27, 69, 858 },
			["Tamerak|raden"] = { 18, 21, -66, 644 },
			["Kelmight|pagle"] = { 17, 21, -3, 772 },
			["Poixon|pagle"] = { 17, 21, -5, 772 },
			["Dankenbrew|lei-shen"] = { 20, 14, -45, 568 },
			["Atreyuz|galakras"] = { 19, 14, -33, 568 },
			["Cobrä|pagle"] = { 14, 19, 8, 578 },
			["Skrylur|pagle"] = { 14, 19, 8, 578 },
			["Fktry|raden"] = { 12, 18, 71, 606 },
			["Nf|raden"] = { 12, 18, 23, 606 },
			["Pablosanchez|raden"] = { 7, 14, -170, 620 },
			["Sheerwill|pagle"] = { 10, 10, 37, 731 },
			["Dankorbs|pagle"] = { 7, 12, -3, 938 },
			["Kxle|raden"] = { 10, 9, -4, 961 },
			["Ecafkcufhi|raden"] = { 9, 7, 2, 961 },
			["Gigawimpx|raden"] = { 6, 9, 2, 938 },
			["Apechamp|raden"] = { 8, 6, 28, 748 },
			["Buckup|pagle"] = { 9, 5, 39, 509 },
			["Kushgodx|raden"] = { 7, 7, -56, 885 },
			["Mikaylaa|raden"] = { 9, 5, 23, 616 },
			["Sponsorz|raden"] = { 8, 6, 79, 760 },
			["Guanyîn|raden"] = { 6, 6, -10, 749 },
			["Radendznuts|raden"] = { 6, 6, -4, 750 },
			["Laritza|lei-shen"] = { 8, 3, 53, 464 },
			["Møonxz|raden"] = { 4, 7, -7, 1028 },
			["Phöoba|pagle"] = { 8, 3, 109, 594 },
			["Velmat|pagle"] = { 6, 5, 54, 607 },
			["Blankis|raden"] = { 5, 4, 43, 732 },
			["Drzynphd|raden"] = { 6, 3, -49, 824 },
			["Teatable|raden"] = { 6, 3, -56, 826 },
			["Dankenelf|pagle"] = { 3, 5, -18, 878 },
			["Inkárri|arugal-au"] = { 4, 4, -10, 686 },
			["Longkidneygg|pagle"] = { 1, 7, 22, 871 },
			["Miposhká|raden"] = { 8, 0, 13, 644 },
			["Mòónfirebeam|raden"] = { 4, 4, -31, 685 },
			["Weknwdatruth|pagle"] = { 5, 3, 34, 982 },
			["Healyee|immerseus"] = { 0, 7, -30, 619 },
			["Lôukî|pagle"] = { 2, 5, 18, 1064 },
			["ßxß|raden"] = { 7, 0, 22, 792 },
			["Chotter|pagle"] = { 5, 1, 68, 1004 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 1004 },
			["Fingérplay|galakras"] = { 4, 1, 43, 579 },
			["Lichkinng|pagle"] = { 1, 4, 0, 800 },
			["Theweave|raden"] = { 5, 0, 18, 947 },
			["Whisper|raden"] = { 2, 3, 46, 1004 },
			["Xander|raden"] = { 5, 0, 26, 927 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 1280 },
			["Electabuzz|raden"] = { 2, 2, 15, 911 },
			["Jimcramer|raden"] = { 2, 2, -9, 824 },
			["Nilio|raden"] = { 0, 4, -20, 942 },
			["Vp|immerseus"] = { 0, 4, 0, 803 },
			["Booku|pagle"] = { 0, 3, -11, 663 },
			["Fatmanscoop|raden"] = { 2, 1, 1, 824 },
			["Firecano|raden"] = { 3, 0, 7, 1031 },
			["Glinna|raden"] = { 1, 2, -7, 1180 },
			["Nvmxxtxx|raden"] = { 3, 0, 11, 1042 },
			["Ohmsnothing|galakras"] = { 0, 3, -6, 1044 },
			["Pisch|arugal-au"] = { 2, 1, 11, 838 },
			["Rëyy|raden"] = { 2, 1, 1, 644 },
			["Technique|raden"] = { 1, 2, -13, 648 },
			["Haolong|raden"] = { 2, 0, 12, 1004 },
			["Palyy|raden"] = { 0, 2, 0, 941 },
			["Prototypeceo|pagle"] = { 1, 1, 19, 1133 },
			["Sombodee|pagle"] = { 2, 0, 13, 16 },
			["Soyinfelíz|raden"] = { 2, 0, 20, 824 },
			["Sponsor|raden"] = { 1, 1, -3, 872 },
			["Youcutebb|raden"] = { 1, 1, 1, 871 },
			["Avium|pagle"] = { 0, 1, 0, 918 },
			["Blankisa|raden"] = { 1, 0, 15, 960 },
			["Drgewch|raden"] = { 1, 0, 11, 767 },
			["Fctry|raden"] = { 1, 0, 12, 596 },
			["Feraldruidd|arugal-au"] = { 0, 1, 0, 890 },
			["Garnaby|pagle"] = { 1, 0, 9, 911 },
			["Jackelinc|pagle"] = { 0, 1, 0, 1184 },
			["Lebenn|pagle"] = { 1, 0, 7, 34 },
			["Mistyxo|raden"] = { 1, 0, 10, 597 },
			["Mwgødx|raden"] = { 1, 0, 19, 888 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 1184 },
			["Qtx|raden"] = { 1, 0, 11, 766 },
			["Wowamazingcc|raden"] = { 1, 0, 2, 17 },
			["Zappytits|galakras"] = { 0, 1, -6, 1205 },
		},
	},
}

