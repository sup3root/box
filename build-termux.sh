#!/data/data/com.termux/files/usr/bin/bash
set -e

VERSION=$(awk -F= '/^version=/{print $2}' module.prop | tr -d '\r')

echo "📦 Building box-${VERSION}.zip ..."

rm -f box-*.zip

zip -r -o -X -ll box-${VERSION}.zip ./ \
  -x '.git/*' \
  -x '.github/*' \
  -x 'CHANGELOG.md' \
  -x 'update.json' \
  -x 'build.sh' \
  -x 'LICENSE'

echo "✅ Done: box-${VERSION}.zip"