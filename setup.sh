#!/usr/bin/env bash
set -euo pipefail

# ─── Config ───────────────────────────────────────────────────────────────────
GITHUB_REPO="https://github.com/drlewis128/business_skills.git"
LOCAL_REPO="$HOME/Projects/business_skills"
AGENTS_SKILLS="$HOME/.agents/skills"
CLAUDE_SKILLS="$HOME/.claude/skills"
ICLOUD="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
MEMORY_SOURCE="$ICLOUD/claude-sync/memory"
MEMORY_LINK="$HOME/.claude/projects/-Users-johnlewis/memory"

# ─── Colors ───────────────────────────────────────────────────────────────────
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'
log()  { echo -e "${GREEN}[setup]${NC} $1"; }
warn() { echo -e "${YELLOW}[warn]${NC} $1"; }
err()  { echo -e "${RED}[error]${NC} $1"; }

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  MBL Agent Skill Environment Setup"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# ─── 1. Clone or update skills repo ──────────────────────────────────────────
log "Skills repo..."
if [ -d "$LOCAL_REPO/.git" ]; then
  git -C "$LOCAL_REPO" pull --quiet
  log "  Updated → $LOCAL_REPO"
else
  mkdir -p "$HOME/Projects"
  git clone "$GITHUB_REPO" "$LOCAL_REPO"
  log "  Cloned → $LOCAL_REPO"
fi

# ─── 2. Create skill directories and symlinks ─────────────────────────────────
log "Wiring skills..."
mkdir -p "$AGENTS_SKILLS"
mkdir -p "$CLAUDE_SKILLS"

LINKED=0
UPDATED=0
SKIPPED=0

while IFS= read -r skill_md; do
  skill_name=$(basename "$(dirname "$skill_md")")
  target="$AGENTS_SKILLS/$skill_name"

  # Create agent skill dir and copy SKILL.md
  mkdir -p "$target"
  cp "$skill_md" "$target/SKILL.md"

  # Create ~/.claude/skills/<name> -> ~/.agents/skills/<name>
  link="$CLAUDE_SKILLS/$skill_name"
  if [ -L "$link" ]; then
    ((SKIPPED++))
  else
    ln -s "$target" "$link"
    ((LINKED++))
  fi
done < <(find "$LOCAL_REPO/departments" -name "SKILL.md" 2>/dev/null | sort)

log "  $LINKED new symlinks | $SKIPPED already existed"

# ─── 3. Remove any broken symlinks ───────────────────────────────────────────
BROKEN=$(find "$CLAUDE_SKILLS" -maxdepth 1 -type l ! -exec test -e {} \; -print 2>/dev/null | wc -l | tr -d ' ')
if [ "$BROKEN" -gt 0 ]; then
  find "$CLAUDE_SKILLS" -maxdepth 1 -type l ! -exec test -e {} \; -delete
  warn "  Removed $BROKEN broken symlinks"
fi

# ─── 4. Claude config symlinks from iCloud ───────────────────────────────────
log "Claude config (iCloud)..."

ICLOUD_SYNC="$ICLOUD/claude-sync"

link_from_icloud() {
  local src="$1" dst="$2"
  if [ ! -f "$src" ]; then
    warn "  Not found in iCloud yet: $src — re-run after iCloud syncs."
    return
  fi
  if [ -L "$dst" ]; then
    : # already linked
  elif [ -f "$dst" ]; then
    mv "$dst" "${dst}.bak.$(date +%Y%m%d%H%M%S)"
    ln -s "$src" "$dst"
    log "  Linked $(basename "$dst") from iCloud (backed up original)"
  else
    ln -s "$src" "$dst"
    log "  Linked $(basename "$dst") from iCloud"
  fi
}

link_from_icloud "$ICLOUD_SYNC/CLAUDE.md"      "$HOME/.claude/CLAUDE.md"
link_from_icloud "$ICLOUD_SYNC/settings.json"  "$HOME/.claude/settings.json"

# ─── 5. Plugin install ────────────────────────────────────────────────────────
log "Plugins..."
if command -v claude &>/dev/null; then
  claude plugin install claude-mem@thedotmack --yes 2>/dev/null && log "  claude-mem installed" || log "  claude-mem already installed"
else
  warn "  claude CLI not found — install Claude Code first, then re-run this script"
fi

# ─── 6. Memory symlink from iCloud ───────────────────────────────────────────
log "Memory sync (iCloud)..."

if [ ! -d "$MEMORY_SOURCE" ]; then
  warn "  iCloud memory not synced yet at:"
  warn "  $MEMORY_SOURCE"
  warn "  Sign into iCloud, wait for sync to complete, then re-run this script."
else
  mkdir -p "$(dirname "$MEMORY_LINK")"

  if [ -L "$MEMORY_LINK" ]; then
    log "  Memory symlink already in place."
  elif [ -d "$MEMORY_LINK" ]; then
    backup="${MEMORY_LINK}.bak.$(date +%Y%m%d%H%M%S)"
    warn "  Found unlinked memory dir — backing up to $backup"
    mv "$MEMORY_LINK" "$backup"
    ln -s "$MEMORY_SOURCE" "$MEMORY_LINK"
    log "  Memory linked from iCloud."
  else
    ln -s "$MEMORY_SOURCE" "$MEMORY_LINK"
    log "  Memory linked from iCloud."
  fi
fi

# ─── 7. Verify counts ────────────────────────────────────────────────────────
SKILL_COUNT=$(ls "$AGENTS_SKILLS" | wc -l | tr -d ' ')
LINK_COUNT=$(ls "$CLAUDE_SKILLS" | wc -l | tr -d ' ')

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
log "Done."
echo "  ~/.agents/skills/     →  $SKILL_COUNT skills"
echo "  ~/.claude/skills/     →  $LINK_COUNT symlinks"
echo "  CLAUDE.md             →  iCloud"
echo "  settings.json         →  iCloud"
echo "  Memory                →  $MEMORY_LINK"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
