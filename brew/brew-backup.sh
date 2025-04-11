#!/bin/bash

echo "🔄 Updating Homebrew backup lists..."

# Export installed formulas
brew list --formula >brew-formulas.txt
echo "✅ Saved formulas to brew-formulas.txt"

# Export installed casks
brew list --cask >brew-casks.txt
echo "✅ Saved casks to brew-casks.txt"

# Export added taps
brew tap >brew-taps.txt
echo "✅ Saved taps to brew-taps.txt"

echo "🎉 Backup complete!"
