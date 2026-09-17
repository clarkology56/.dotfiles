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

## Installing gems and npm packages

Your container's firewall blocks rubygems.org, so `bundle install` never works from your
side. This is by design — don't diagnose it, don't look for alternatives, don't suggest
running it yourself.

When `Gemfile.lock` or `package-lock.json` changes (merging master, switching branches,
adding a dependency), ask me to run these on the host, from the worktree directory:

    mise exec -- docker compose exec rails bundle install
    mise exec -- docker compose exec rails npm ci

Facts to rely on rather than re-derive:

- The service is `rails`, not `app`.
- The `mise exec --` prefix supplies COMPOSE_FILE and COMPOSE_PROJECT_NAME; bare
  `docker compose` in the worktree resolves the app's own docker-compose.yml and fails.
- mise tasks are defined in the wrapper repo one level above the worktree, which is not
  mounted into your container — `mise tasks` will show nothing useful from your side.
- The rails container shares your /usr/local/bundle volume, so installed gems appear for
  you immediately, no restart needed.

Never fall back to a CI round trip when missing dependencies are the only blocker.

## Running system tests

You can run system tests from your own container. Two env vars are missing from your
environment; supply them on the command line:

    CI=true APP_HOST=$(hostname -i | awk '{print $1}') bundle exec rails test test/system/<file>.rb

- **`APP_HOST`** — without it Capybara advertises your container's hostname, which is an
  auto-generated container ID. Docker's DNS resolves service names and aliases, not those,
  so the browser can't reach you and every test dies navigating to sign_in. Your container
  is a `docker compose run` one-off with no stable DNS name, so the IP is the only option.
- **`CI=true`** — raises the Playwright timeout from 5s to 15s. A cold Capybara boot here
  takes longer than 5s. Headlessness is NOT the issue; don't chase `HEADLESS_SYSTEM_TESTS`.
- **`PLAYWRIGHT_HOST`** is already correct in your environment — never override it.
- One file per run, per the repo's testing rules. Expect 25-30s each.
- The first run after a cold boot can still time out. Retry once before investigating.

The browser lives in this worktree's own `playwright` container (not a shared one) and is
watchable at http://vnc.<worktree-slug>.localhost. In browser URLs, `rails` means this
worktree's Rails dev server — a sibling container in the same compose project.
