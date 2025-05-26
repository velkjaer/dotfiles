#!/usr/bin/env bash

if ! gh repo view --json name -q '.name' &>/dev/null; then
  echo "GitHub CLI is not authenticated. Please authenticate."
  gh auth login --web
fi
