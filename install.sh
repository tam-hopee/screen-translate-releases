#!/bin/bash
set -e

APP_NAME="ScreenTranslate"
REPO="tam-hopee/screen-translate-releases"
INSTALL_DIR="/Applications"

echo "==> Installing Screen Translate..."

# Get latest release download URL
DMG_URL=$(curl -fsSL "https://api.github.com/repos/$REPO/releases/latest" \
    | grep "browser_download_url.*\.dmg" \
    | head -1 \
    | cut -d '"' -f 4)

if [ -z "$DMG_URL" ]; then
    echo "Error: Could not find DMG download URL"
    exit 1
fi

TMPDIR=$(mktemp -d)
DMG_PATH="$TMPDIR/$APP_NAME.dmg"

echo "==> Downloading latest release..."
curl -fSL -o "$DMG_PATH" "$DMG_URL"

echo "==> Mounting DMG..."
MOUNT_POINT=$(hdiutil attach "$DMG_PATH" -nobrowse -quiet | tail -1 | awk '{print $NF}')

# Close app if running
if pgrep -x "$APP_NAME" > /dev/null 2>&1; then
    echo "==> Closing running instance..."
    pkill -x "$APP_NAME" || true
    sleep 1
fi

echo "==> Installing to $INSTALL_DIR..."
rm -rf "$INSTALL_DIR/$APP_NAME.app"
cp -R "$MOUNT_POINT/$APP_NAME.app" "$INSTALL_DIR/"

echo "==> Cleaning up..."
hdiutil detach "$MOUNT_POINT" -quiet
rm -rf "$TMPDIR"

echo ""
echo "Done! Screen Translate installed to $INSTALL_DIR/$APP_NAME.app"
echo ""
echo "First run:"
echo "  1. Open Screen Translate from Applications"
echo "  2. Grant Screen Recording permission (System Settings > Privacy & Security)"
echo "  3. Grant Accessibility permission (System Settings > Privacy & Security)"
echo ""
echo "To launch now:"
echo "  open $INSTALL_DIR/$APP_NAME.app"
