#!/bin/bash

# Get the remote URL
remote_url=$(git config --get remote.origin.url)

if [ -z "$remote_url" ]; then
	echo "❌ Not a git repository or no remote 'origin' set."
	exit 1
fi

# Convert SSH URL to HTTPS if needed
if [[ "$remote_url" == git@github.com:* ]]; then
	repo_url="https://github.com/${remote_url#git@github.com:}"
else
	repo_url="$remote_url"
fi

# Remove .git suffix if present
repo_url=${repo_url%.git}

# Open in browser (macOS default)
open "$repo_url"
