# Screen Translate

macOS menu bar app - dich van ban tren man hinh bang OCR.

## Install

### Quick Install (recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/tam-hopee/screen-translate-releases/main/install.sh | bash
```

### Manual Install

1. Download `ScreenTranslate.dmg` from [latest release](https://github.com/tam-hopee/screen-translate-releases/releases/latest)
2. Open DMG, drag app to Applications
3. Open Screen Translate

## Setup

Lan dau mo app, can cap quyen:

1. **Screen Recording** - System Settings > Privacy & Security > Screen Recording > bat Screen Translate
2. **Accessibility** - System Settings > Privacy & Security > Accessibility > bat Screen Translate

## Features

- **OCR Capture** - Chup vung man hinh, nhan dien text va dich
- **Translate Selection** - Dich text dang chon (qua Accessibility API)
- **Overlay Translation** - Dich chong len man hinh goc
- **Quick Translate** - Nhap text truc tiep trong popover
- **Translation History** - Luu lich su dich
- **Local LLM** - Ho tro Ollama server
- **Google Translate** - Fallback khi khong co local server

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Option+Shift+T` | Capture screen region |
| `Option+Shift+D` | Translate selected text |
| `Option+Shift+O` | Overlay translation |

## Requirements

- macOS 13.0+
- Ollama server (optional, for local LLM translation)
