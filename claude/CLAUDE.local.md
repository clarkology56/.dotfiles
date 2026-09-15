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

**Scope.** Decide which improvements to fix now, drop, or note as a follow-up. Dropping is fine and often right.
Small and otherwise likely never to happen → do it now. Large, adds complexity, or really a product decision →
note it for later. If you can't name a symptom someone would notice, drop it. If unsure, ask.

## Committing and pushing

**Invoke the `auto-pr` skill at the start of every session**, before doing anything else — including after a
`/clear`, which drops it. It makes you commit, push, open the PR and keep it current without asking me each
time. Treat "fix it" as authorization to land work on the current feature branch.

These hold whether or not that skill loaded:

- Never push to `master`, never force-push, never `--no-verify`, never rebase.
- Stage explicitly with `git add <path>` — never `git add -A`, `git add .`, or `git commit -a`.
- Never commit a red tree. Stop and ask on anything destructive or hard to reverse.

Two calls the skill leaves to me:

- **Draft or ready?** Judge it from the state of the work. Don't ask.
- **Stacked PRs.** Splitting a large PR into stacks is my call — don't propose it unless I ask. If we split, the
original PR is closed with its description intact as the shared reference, and each stack gets its own complete
description linking back to it.

## Tests

**Browser testing.** I run multiple worktrees, each with its own container and port. If the browser won't
connect, troubleshoot before telling me it's unavailable — and tell me if I need to run `mise run up`.

## Installing gems

Your container's firewall doesn't allowlist rubygems.org, so `bundle install` will always fail from your side.
This is by design — don't diagnose it or work around it. Ask me to run
`docker compose exec rails bundle install` from the host; the rails container shares your bundle volume, so the
gems appear for you immediately. Never fall back to a CI round trip when missing gems are the only blocker.
