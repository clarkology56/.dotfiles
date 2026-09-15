# Personal working preferences

## Response style

Assume I'm context-switching across multiple worktrees and Claude sessions. I don't have capacity to read a
full essay to extract one decision.

- **Bullets, not prose.** Default to bullet points. Paragraphs only when a bullet would break an argument that
  needs to hold together.
- **Lead with the answer.** Recommendation or conclusion first, reasoning under it. Never build up to it.
- **Cut reasoning I didn't ask for.** One line of why per claim. If I want the full argument I'll ask.
- **Define anything that blocks digestion** — a term, method, flag, or file I'd have to go look up to follow the
  point. One clause inline, not a detour.
- **No recaps.** Don't restate my question, don't summarize what you just said, no closing summary.
- **Say what to do.** End with the action, not a menu of options. If there's a real fork, two options max with a
  recommendation.

Same bar as `pr-review` findings: if you can't name why I need a sentence, cut it.

## How to work

**Models.** Use the strongest model for planning and review, a mid model for executing an agreed plan and
applying findings, a light model for mechanical work. Subagents follow the same rule by task type. Choose the
right model first and manage tokens second — never drop a tier just to save cost.

**Responsive by default.** Build for desktop, tablet, and mobile from the start — not as a pass at the end.
`pr-review` will catch misses, but finding them there means rework.

**Scope.** Decide which improvements to fix now, drop, or note as a follow-up. Dropping is fine and often right.
Small and otherwise likely never to happen → do it now. Large, adds complexity, or really a product decision →
note it for later. If you can't name a symptom someone would notice, drop it. If unsure, ask.

## Committing and pushing

When you have applied changes I asked for and they are verified (tests and linters green), **commit and push
without being asked**. Do not leave finished work sitting in the working tree waiting for permission — treat
"fix it" as authorization to land it on the current feature branch.

- Never push to `master`, never force-push, never `--no-verify`.
- After pushing, if the branch has no PR yet, open one with `create-pr` — as a draft unless the work is
  finished. Don't wait to be asked, and don't ask which it should be; judge it from the state of the work.
- After pushing to a branch that has a PR, run `update-pr` — unless a skill already ran it in its own flow (e.g.
  `pr-review` Phase D). Skip it for mid-stack WIP pushes; run it once the unit of work lands.
- Stage explicitly (`git add <path>`), never `git add -A` / `.` / `commit -a`.
- Don't commit pre-existing uncommitted work that was already in the tree.
- Group into one commit per concern, with a message that says what changed and why — not "address review
  comments".
- If the tree is red, or a change is genuinely destructive/irreversible, stop and ask instead.

This overrides the default "commit or push only when the user asks".

## Tests

**Browser testing.** I run multiple worktrees, each with its own container and port. If the browser won't
connect, troubleshoot before telling me it's unavailable — and tell me if I need to run `mise run up`.

## PR process

**Description structure.** Every PR description you write or update uses these sections, in this order, nested
inside the repo's PR template — not replacing it. Write "None" explicitly rather than omitting a section. This
is the authoritative structure; `create-pr` and `update-pr` both defer to it.

- Goal
- Acceptance criteria
- Product decisions made along the way
- How it was tested
- Follow-ups
- If you're reviewing this fresh

Plus the type block: **bugfix** gets symptom / how to reproduce / root cause / fix; **feature** gets product
context and approach; **refactor** gets what behavior is preserved and how that was verified.

**Stacked PRs.** Splitting a large PR into stacks is my call — don't propose it unless I ask. If we split, the
original PR is closed with its description intact as the shared reference, and each stack gets its own complete
description linking back to it. Keep the original description complete enough to serve that purpose.

**Product decisions** are the judgment calls invisible in the diff — chosen defaults, edge-case behavior, copy,
scope cuts. Add them as they happen; remove them if we reverse them. Write "None" explicitly if there are none.

**Feature flags.** If the PR adds one, the description records its expiration date and owner. A flag without
both is incomplete work.

**Follow-ups** contains only work we intend to do. The goal is as few as possible — otherwise every PR spawns
unlimited others. Write "None" if there are none; on a small PR that's the expected answer. Two kinds, listed as
bullets with enough context to act on:

- **In this stack** — being done before merge.
- **Later** — worth acting on; we'll decide at the end which become GitHub issues.

If a follow-up is complex, add the detail. Removing feature flags is assumed, not a follow-up.

When we agree not to act on something, delete it from Follow-ups and move it to "If you're reviewing this fresh"
with the reason. Nothing we've declined stays in Follow-ups, and nothing we intend to do sits in the fresh-eyes
section. The two lists never overlap — that's what keeps a later reviewer from re-raising a settled item or
missing real work.

**If you're reviewing this fresh** goes last, subtitled "read after your own first pass." It holds:

- Findings we investigated and dismissed
- Anything we considered and agreed not to do (moved here from Follow-ups) — so reviewers don't raise it again
- Where I'm uncertain
- Constraints the diff doesn't explain

Every claim carries its evidence and what would overturn it — never a verdict to accept. Include only what a
competent reviewer would plausibly raise, not a log of everything you considered.

## Installing gems

Your container's firewall doesn't allowlist rubygems.org, so `bundle install` will
always fail from your side. This is by design — don't diagnose it or work around it.
Ask me to run `docker compose exec rails bundle install` from the host; the rails
container shares your bundle volume, so the gems appear for you immediately. Never
fall back to a CI round trip when missing gems are the only blocker.
