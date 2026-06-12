---
name: dev-environment-setup
description: "Generate developer environment setup guides and troubleshoot setup issues. Use when the user says 'dev environment', 'setup guide', 'getting started guide', 'developer setup', 'how do I set up the project', 'environment not working', 'cant get the project to run', 'developer onboarding setup', or 'local environment setup'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--project <name>] [--os <macos|linux|windows>] [--mode <generate|troubleshoot>]"
---

# Dev Environment Setup

Generate developer environment setup guides and troubleshoot setup issues for MBL engineering projects. A good dev environment setup guide gets a new engineer running in under 2 hours. A bad one creates a full-day debugging session and a poor first impression. This skill produces setup guides that are step-by-step, testable, and maintained alongside the code.

## When to Use
- A new engineer is joining and needs environment setup documentation
- The existing setup guide is stale (was it last updated when the project started?)
- A specific setup step is failing for multiple engineers
- The project added a new dependency or changed toolchain requirements
- Evaluating environment setup as part of engineering onboarding quality

## MBL Standard Toolchain (Rust/OpenFang)

```bash
# Required tools
rustup    # Rust toolchain manager
cargo     # Rust build tool (comes with rustup)
git       # Version control
just      # Command runner (optional but recommended)
docker    # Container runtime (if services are containerized)

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustup update stable
rustup default stable

# Verify
rustc --version   # Should match workspace Cargo.toml rust-version
cargo --version

# Install cargo tools
cargo install cargo-watch   # Live rebuild on file change
cargo install cargo-audit   # Security vulnerability scan
```

## Troubleshooting Framework

| Symptom | Root Cause | Fix |
|---------|-----------|-----|
| `cargo build` fails with linker error | Missing system library | `brew install pkg-config openssl` (macOS); `apt install pkg-config libssl-dev` (Linux) |
| `wrong toolchain version` | workspace Cargo.toml pinned to different version | `rustup install <version>; rustup override set <version>` in project dir |
| Port already in use | Previous instance still running | `lsof -i :<port>` then `kill <PID>` |
| Database connection refused | DB not running | `docker compose up db -d` or start DB service |
| Missing env vars | `.env` not populated | Copy `.env.example` to `.env`; fill required values |
| Tests pass locally but fail in CI | Different Rust version in CI | Pin CI toolchain to match `rust-toolchain.toml` |

## Output Format

```markdown
# Developer Environment Setup — <Project Name>
**Last updated:** <date> | **Maintained by:** Dr. John Lewis
**OS:** macOS (M-series) / Linux / Windows (WSL2)
**Estimated setup time:** <N> minutes

---

## Prerequisites

Before starting, install these if not already present:

| Tool | Version | Install | Verify |
|------|---------|---------|--------|
| Rust | 1.78+ | `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs \| sh` | `rustc --version` |
| Git | 2.40+ | `brew install git` (macOS) | `git --version` |
| Docker | 24+ | docker.com/desktop | `docker --version` |

---

## Step 1 — Clone the Repository

```bash
git clone git@github.com:drlewis128/<repo>.git
cd <repo>
```

**Expected:** Directory exists with `Cargo.toml` at root.
**If this fails:** Confirm GitHub access (see `#engineering` channel to request access).

---

## Step 2 — Configure Environment Variables

```bash
cp .env.example .env
```

Open `.env` and fill in the required values:

| Variable | Description | Where to Find |
|---------|------------|--------------|
| `CLAUDE_API_KEY` | Anthropic API key | 1Password → MBL Engineering vault |
| `DATABASE_URL` | PostgreSQL connection string | 1Password → MBL Engineering vault |
| `<OTHER_VAR>` | <description> | <source> |

**Expected:** `.env` file exists with all values filled.
**Never commit `.env` to git** — it's in `.gitignore` by design.

---

## Step 3 — Start Supporting Services

```bash
docker compose up -d
```

**Expected:** PostgreSQL (port 5432), Redis (port 6379) containers running.
**Verify:** `docker compose ps` shows all services as "Up".
**If this fails:** Check Docker Desktop is running; verify port 5432 is not in use (`lsof -i :5432`).

---

## Step 4 — Run Database Migrations

```bash
cargo run --bin migrate
```

**Expected:** "All migrations applied successfully"
**If this fails:** Verify `DATABASE_URL` in `.env` is correct; verify DB container is running.

---

## Step 5 — Build and Test

```bash
cargo build --workspace
cargo test --workspace
cargo clippy --workspace --all-targets -- -D warnings
```

**Expected:** All three commands exit 0 with no errors.
**If `cargo build` fails:** See Troubleshooting section below.
**If tests fail:** Run `cargo test <failing-test-name> -- --nocapture` to see output.

---

## Step 6 — Start the Development Server

```bash
cargo run --bin <main-binary>
```

**Expected:** Server running on `http://localhost:8080`
**Verify:** `curl http://localhost:8080/health` returns `{"status": "ok"}`

---

## Verify Everything Is Working

```bash
# Run this to confirm your setup is complete:
curl http://localhost:8080/health
```

Expected output:
```json
{"status": "ok", "version": "0.1.0"}
```

---

## Troubleshooting

### Build fails: linker error / missing library
```bash
# macOS:
brew install pkg-config openssl
export PKG_CONFIG_PATH="$(brew --prefix openssl)/lib/pkgconfig"
cargo build --workspace

# Linux (Ubuntu/Debian):
sudo apt install pkg-config libssl-dev
cargo build --workspace
```

### Port already in use
```bash
lsof -i :8080          # Find the process using port 8080
kill <PID>             # Kill it
cargo run --bin main   # Restart
```

### Tests fail with "connection refused"
Database is not running. Restart with `docker compose up -d`.

---

## Still Stuck?

1. Check `#engineering` in Teams — someone has probably hit the same issue
2. Ask your buddy engineer (assigned in your onboarding plan)
3. File a ticket in Monday.com with the error output — this is a setup guide bug, not your bug
```

## Output Contract
- Every step has a verification command — "expected output" is mandatory, not optional
- Every troubleshooting entry has a specific fix, not "check your configuration"
- Secrets never hardcoded — always reference the secrets manager (1Password)
- "Still stuck" section always present — engineers need an escalation path
- Guide must be tested before publishing — Dr. Lewis or buddy engineer confirms end-to-end run

## System Dependencies
- **Reads from:** Repository Cargo.toml, .env.example, docker-compose.yml, existing documentation
- **Writes to:** Setup guide document in repository (README.md or docs/setup.md)
- **HITL Required:** Dr. Lewis reviews setup guide before new engineer onboarding; tested end-to-end before publishing

## Test Cases
1. **Golden path:** Generate setup guide for OpenFang agent runtime → Prerequisites: Rust 1.78+, Git, Docker; 6-step process: clone, env config, docker compose, migrate, build/test/clippy, run; verification: health check endpoint; troubleshooting: 4 common failure modes; tested by buddy engineer on clean macOS setup
2. **Edge case:** Engineer is on Windows with WSL2 → Windows path: all commands in WSL2 terminal; Docker Desktop with WSL2 backend; path separator differences noted; symlink behavior different — document `ln -s` vs. `mklink` distinction; test WSL2 path explicitly
3. **Adversarial:** Setup guide hasn't been updated in 6 months and a new dependency was added → stale guide is worse than no guide; maintain setup guide as part of the PR that adds any new required tool or service; failing on setup = engineer motivation failure on Day 1

## Audit Log
Setup guide versions retained in git history. Update history visible in CHANGELOG.

## Deprecation
Retire when project adopts a dev container (`.devcontainer`) configuration that automates environment setup entirely.
