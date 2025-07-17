#!/bin/bash

# Root project folder name
REPO="OWASP-Juice-Shop-Privacy-Policy-Challenge"

# Method names
folders=(
  "Clicking-The-Footer-Link"
  "Using-The-Hamburger-Menu"
  "Direct-URL-Access"
  "JavaScript-Injection"
  "Automated-Solution"
  "Proxy-Based-Route-Trigger"
)

# Create root folder
mkdir -p "$REPO"
cd "$REPO" || exit

# Create method folders
for method in "${folders[@]}"; do
  mkdir -p "$method"
done

echo "✅ Folder structure created under $REPO"
