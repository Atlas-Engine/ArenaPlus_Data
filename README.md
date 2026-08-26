# ArenaPlus Data

The ladder, title cutoffs, class/spec list and gear that
[ArenaPlus](https://github.com/Atlas-Engine/ArenaPlus) reads.

**Nothing in this repository is written by hand.** Every `.lua` file is produced
by the scripts in `ArenaPlus/tools/` from Blizzard's Game Data API and
overwritten wholesale on the next run. Do not edit them; edit the scripts.

## Why it is a separate addon

It used to ship inside ArenaPlus, where it was **half of every release** — about
2.4 MB of tables alongside 2.4 MB of unchanged code. Splitting it means the
ladder can be refreshed as often as it is worth refreshing, without asking
anybody to re-download the addon itself.

## How ArenaPlus reads it

Two addons cannot see each other's namespace, so the tables are left on an
`ArenaPlusData` global and `ArenaPlus\Core.lua` copies them into its own as it
loads. `ArenaPlus.toc` names this addon in `## OptionalDeps` so it loads first.

Optional, not required: without it ArenaPlus still runs, with an empty ladder
and no cutoffs. That is a better failure than an addon that refuses to load.

## Freshness

An addon cannot reach the network — every player reads a file that was shipped
to them. So this is a snapshot, not a live feed, and it is only as current as
the last time your addon manager updated it. Once it has, `/reload` in game
picks it up without restarting.

Your own rating and rank are always live and come from the game itself, not from
here.
