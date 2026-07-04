---
name: bot-brand-assets
description: Generate logos, avatars, banners, and visual assets for bots/agents, and serve as the local fallback when hosted image generation is unavailable, misconfigured, or lacks credits.
tags:
  - images
  - branding
  - svg
  - png
  - bot-avatar
  - logo
---

# Bot Brand Assets

Use this skill for logos, avatars, banners, posters, stickers, and visual identity assets for bots/agents, especially when:
- If the user asks for any image and hosted generation is unavailable or erroring, fall back to local SVG+PNG delivery instead of stopping on the failure.
- user asks for an image and image generation is unavailable, misconfigured, lacks credits, or returns an error
- user requests offline/local generation
- the task calls for an editable SVG source plus a deliverable PNG
- a single expressive image prompt wasn't enough and you want a locally produced branded asset

## Preferred Workflow

1. Author an SVG source asset first.
2. Render PNG via a local converter.
3. Deliver via the platform's native media path.

## Local Rendering

Preferred tool: `rsvg-convert`.

If missing:
```bash
pkg install -y librsvg
```

Render:
```bash
rsvg-convert -o <output>.png <input>.svg
```

Pitfalls:
- Do not pass a PNG path as input.
- On Termux, avoid ImageMagick fallback unless already installed.

## Fallback Behavior

If `image_generate` fails with missing `FAL_KEY`, credit exhaustion, provider errors, or any image-generation unavailability, do not stop at an apology. Fall back to this skill: author an SVG asset from the original prompt, render PNG locally, and deliver it.

## Templates

- `templates/svg-bot-logo-template.svg`
- `templates/svg-fallback-template.svg` — generic moody placeholder SVG for when a quick local placeholder is acceptable; author a more specific SVG instead if time permits.

## Delivery Notes

- If the user asks to copy the PNG into shared Android storage, `cp` to `/storage/emulated/0/...` may fail with `Operation not permitted` even on Termux. Don't retry storage copies in a loop; instead offer direct platform delivery via `MEDIA:<absolute-path>` or Telegram doc upload.
- Always verify the file exists before claiming delivery.
