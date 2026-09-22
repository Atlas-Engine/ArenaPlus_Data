-- Shipped as its own addon so the ladder can be republished without reshipping
-- the code: this file was half of every ArenaPlus release.
--
-- Two addons cannot see each other's namespace, so the tables go on a global
-- and ArenaPlus copies them across as it loads. Same reason ArenaPlusAPI is a
-- global -- see the note above it in ArenaPlus\Core.lua.
--
-- The local keeps its name so the generated body below needs no changes.
ArenaPlusData = ArenaPlusData or {}
local ns = ArenaPlusData

-- Arena title cutoffs, written by tools\UpdateFromBlizzard.ps1 from Blizzard's
-- own API. Do not edit by hand: rerun the script to refresh.
--
-- Region eu, season 14, cutoffs last changed 2026-09-21 09:14 PM, last checked 2026-09-22 01:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-21 09:14 PM",
	checked = "2026-09-22 01:00 AM",
	checkedEpoch = 1790053206,

	[1] = { r1=2578, gladiator=2337, duelist=2200, rival=1868, challenger=1045 }, -- 2v2
	[2] = { r1=2439, gladiator=1724, duelist=1669, rival=1553, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2090, rival=1858, challenger=1516 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=28, gladiator=191, duelist=510, rival=1880 }, -- 2v2
	[2] = { r1=31, gladiator=202, duelist=226, rival=283, challenger=544 }, -- 3v3
	[3] = { r1=20 }, -- 5v5
	[4] = { r1=5, duelist=23, rival=101, challenger=434 }, -- rbg
}
