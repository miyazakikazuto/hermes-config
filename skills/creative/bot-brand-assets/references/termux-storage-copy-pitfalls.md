# Termux Android Storage Copy Pitfalls

## Pattern
When copying generated PNGs from Termux home into shared Android storage:

- `~` does not expand under `python` heredocs or per-shell contexts.
- `cp` to `/storage/emulated/0/Download/...` can still return `Operation not permitted` even after `termux-setup-storage` and App Permissions are enabled.
- `pkg list-installed` may show partial success but not remove Android Scoped Storage enforcement.

## Preferred behavior
Do not loop retries on `cp`. Offer:
1. Direct `MEDIA:<path>` delivery
2. Telegram doc send
3. Ask user to enable **Files and Media** in Android app settings, then retry once

## Evidence from session
- SVG source: `/data/data/com.termux/files/home/hermes-agent-logo.svg`
- Rendered PNG: `/data/data/com.termux/files/home/hermes-agent-logo.png`, 28KB
- `rsvg-convert` from `librsvg 2.62.3` Termux package worked
- `cp` to `/storage/emulated/0/Download/hermes-agent-logo.png` failed with `Operation not permitted`
