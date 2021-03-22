#!/bin/bash

# This script automates updating of the brew formula file.
# This script is ONLY INTENDED FOR MAC USAGE
# example:
# $ version=0.6.0 ./hack/update_formula.bash

set -euo pipefail

version=${version:-0.9.3}

#git pull

bucket=downloads.ddev.com/ddev-live-cli/v
sha=$(gsutil cat gs://${bucket}${version}/brew/ddev-live.zip.sha256.txt | awk 'NR==1{print($1)}')
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
file="$dir/../Formula/ddev-live.rb"

sed -i '' 's|\(url "https://'"${bucket}\)"'.*\(/brew/ddev-live.zip\)|\1'"${version}"'\2|' "${file}"
sed -i '' 's|\(version "\).*"|\1'"${version}"'"|' "${file}"
sed -i '' 's|\(sha256 "\).*"|\1'"${sha}"'"|' "${file}"

git commit -am "Bumping version to v${version}"
echo "verify changes and perform 'git push origin master'"
