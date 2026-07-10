#!/bin/bash

echo "🔄 Updating xAHBx Repo..."

# Go to repo directory
cd "$(dirname "$0")"

echo "📦 Generating Packages..."

dpkg-scanpackages debs /dev/null > Packages

gzip -f Packages

echo "📤 Uploading to GitHub..."

git add .

git commit -m "Update repository packages"

git push

echo "✅ xAHBx Repo updated successfully!"

