# ArenaPlus Data

The ladder, title cutoffs, class/spec list and gear that
[ArenaPlus](https://github.com/Atlas-Engine/ArenaPlus) reads.

**This is not a standalone addon.** It has no interface and no slash commands,
and installing it on its own does nothing. Your addon manager pulls it in
alongside ArenaPlus.

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

## Why it updates so often

Because it is only data. Every release is a fresh snapshot of the ladder — no
code changes, so there is nothing in an update that can break. Take them
whenever suits; ArenaPlus works with whatever snapshot you happen to have.

## Freshness

An addon cannot reach the network — every player reads a file that was shipped
to them. So this is a snapshot, not a live feed, and it is only as current as
the last time your addon manager updated it. Once it has, `/reload` in game
picks it up without restarting.

**So set it to update on its own. In the CurseForge app: right-click
ArenaPlus_Data → Install Settings → Automatic.**

This is republished every half hour. Left on manual it falls behind silently —
nothing breaks and nothing warns you, you simply read a ladder from whenever you
last updated. Since every release is data and no code, there is nothing in one
that can break, and no reason to hold it back.

Your own rating and rank are always live and come from the game itself, not from
here.
