Env: Termux on Linux (4.14.186-g0dc1d312efb3). Working dir: /data/data/com.termux/files/home. Communication: Telegram DM. User prefers concise, direct answers without extra filler like "Tentu!" or "Baik sekali!".
§
User expects generated media files (PNG/SVG) to be actually delivered to Telegram, not just generated; when using MEDIA:/path, verify the file path and delivery if user asks "eror kah".
§
Env: Termux on Linux (4.14.186-g0dc1d312efb3). Working dir: /data/data/com.termux/files/home. Communication: Telegram DM. Stacks known: Claude API, OpenCode, Claude Code, Hermes Agent CLI, Kimchi CLI. Interests: building increasingly complex AI agent systems step by step. Beginner at AI agents but understands basic prompt engineering.
§
User prefers concise Indonesian responses without filler intro; go straight to the answer.
§
Env: Termux Android aarch64. Hermes repo ~/hermes-agent (1.3GB), venv ~/hermes-agent/venv. Working dir /data/data/com.termux/files/home. Telegram DMs: 6988384384 + 1318997833. Style: concise Indonesian, no filler.
§
Telegram account IDs: primary 6988384384, secondary 1318997833
§
Has Hermes Agent source repo cloned at ~/hermes-agent (~1.3GB), using venv at ~/hermes-agent/venv. Activate with `source venv/bin/activate`, run via `python -m hermes` or after `pip install -e .` use `hermes` directly.
§
Dual gateway plan: WSL primary active, Termux backup standby. Shared config via /mnt/c/Users/<NAMA>/HermesShared (WSL) ↔ shared storage/Termux path, auto-sync via Syncthing or FolderSync. Active-passive only.
§
Uses Hermes Agent with model `stepfun/step-3.7-flash:free` via provider `nous` (nousresearch.com inference API).
§
User is setting up dual Hermes gateway: WSL laptop as main, Termux on Venva Android aarch64 as backup. Uses Syncthing for cross-platform config sync. Telegram bot token centrally shared via sync.
§
Context tuning currently active: context_length=80000, compression.threshold=0.50, target_ratio=0.22, protect_last_n=14, protect_first_n=2. User reports unexpected sudden context drop.