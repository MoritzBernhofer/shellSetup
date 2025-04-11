#!/bin/bash

echo "==> Installing Homebrew (if not installed)..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "==> Restoring taps..."
while IFS= read -r tap; do
	brew tap "$tap"
done <brew-taps.txt

echo "==> Installing formulas..."
while IFS= read -r formula; do
	brew install "$formula"
done <brew-formulas.txt

echo "==> Installing casks..."
while IFS= read -r cask; do
	brew install --cask "$cask"
done <brew-casks.txt

echo "✅ All packages restored!"
