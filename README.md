# Screen Translate

[![macOS](https://img.shields.io/badge/macOS-13.0%2B-blue?logo=apple)](https://www.apple.com/macos/)
[![Latest Release](https://img.shields.io/github/v/release/tam-hopee/screen-translate-releases)](https://github.com/tam-hopee/screen-translate-releases/releases/latest)

**Translate anything on your screen — instantly. OCR-powered, LLM-backed, lives in your menu bar.**

🌐 [scrtrans.hopeesolutions.com](https://scrtrans.hopeesolutions.com/)

---

## Features

| Feature | Description |
|---------|-------------|
| **OCR Capture** | Select a screen region — OCR extracts text, LLM translates it |
| **Translate Selection** | Translate any highlighted text via macOS Accessibility API |
| **Overlay Translation** | Render the translation directly over the original on-screen text |
| **Quick Translate** | Type or paste text into a popover for instant translation |
| **Translation History** | Browse and re-use past translations |
| **Local LLM** | Privacy-first translation via your local Ollama server |
| **Google Translate** | Automatic fallback when no local server is available |

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Option+Shift+T` | Capture screen region |
| `Option+Shift+D` | Translate selected text |
| `Option+Shift+O` | Overlay translation |

## Installation

### Quick Install (recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/tam-hopee/screen-translate-releases/main/install.sh | bash
```

### Manual Install

1. Download `ScreenTranslate.dmg` from [Latest Release](https://github.com/tam-hopee/screen-translate-releases/releases/latest)
2. Open the DMG and drag **Screen Translate** to Applications
3. Launch Screen Translate from Applications or Spotlight

## First Launch Setup

Grant two permissions when prompted — or navigate to **System Settings → Privacy & Security**:

1. **Screen Recording** — required for OCR capture
   Enable *Screen Translate* under Privacy & Security → Screen Recording

2. **Accessibility** — required for translate-selection
   Enable *Screen Translate* under Privacy & Security → Accessibility

Restart the app after granting permissions.

## Requirements

- macOS 13.0 or later
- [Ollama](https://ollama.com/) *(optional — for local LLM translation)*

## Links

- [Website](https://scrtrans.hopeesolutions.com/)
- [Releases](https://github.com/tam-hopee/screen-translate-releases/releases)
- [Report an Issue](https://github.com/tam-hopee/screen-translate-releases/issues)
