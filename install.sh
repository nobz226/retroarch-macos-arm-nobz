#!/bin/zsh
# Installs this setup for the current Mac user, without the DMG.
#
# Copies setup/ into ~/Library/Application Support/RetroArch and ~/Documents/RetroArch.
# Files that already exist are kept, so it never overwrites your own settings or saves
# (delete those two folders first for a clean install). Fills in your home folder where
# settings need a full path, and clears the download quarantine flag on the cores so
# macOS lets RetroArch load them.
#
# Usage: ./install.sh      (quit RetroArch first)

set -e
HERE=${0:A:h}
pgrep -x RetroArch >/dev/null && { echo "Quit RetroArch first."; exit 1; }
[ -f "$HERE/setup/home-paths.txt" ] || { echo "No setup/ folder next to this script."; exit 1; }

LIB="$HOME/Library/Application Support/RetroArch"
DOC="$HOME/Documents/RetroArch"
mkdir -p "$LIB" "$DOC"
echo "Copying to $LIB (about 1.2 GB)..."
rsync -a --ignore-existing "$HERE/setup/Application Support/RetroArch/" "$LIB/"
echo "Copying to $DOC..."
rsync -a --ignore-existing "$HERE/setup/Documents/RetroArch/" "$DOC/"

while IFS= read -r f; do
  case $f in
    "Application Support/"*) t="$HOME/Library/$f" ;;
    "Documents/"*)           t="$HOME/$f" ;;
    *) continue ;;
  esac
  [ -f "$t" ] && sed -i '' "s|@HOME@|$HOME|g" "$t"
done < "$HERE/setup/home-paths.txt"

xattr -dr com.apple.quarantine "$LIB/cores" 2>/dev/null || true
echo "Done. Start RetroArch."
