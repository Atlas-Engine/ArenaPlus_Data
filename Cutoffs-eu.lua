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
-- Region eu, season 14, cutoffs last changed 2026-11-04 09:14 PM, last checked 2026-11-05 09:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-11-04 09:14 PM",
	checked = "2026-11-05 09:00 AM",
	checkedEpoch = 1793887217,

	[1] = { r1=2718, gladiator=2482, duelist=2268, rival=1944, challenger=1050 }, -- 2v2
	[2] = { r1=2601, gladiator=2000, duelist=1918, rival=1655, challenger=768 }, -- 3v3
	[3] = { r1=576, gladiator=96, duelist=96, rival=96, challenger=96 }, -- 5v5
	[4] = { r1=2377, duelist=2170, rival=1872, challenger=1525 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=30, gladiator=212, duelist=604, rival=2167 }, -- 2v2
	[2] = { r1=33, gladiator=206, duelist=234, rival=324, challenger=665 }, -- 3v3
	[3] = { r1=19, gladiator=114, duelist=123, rival=123, challenger=123 }, -- 5v5
	[4] = { r1=9, duelist=25, rival=106, challenger=432 }, -- rbg
}
