#!/bin/sh

set -e

if [ $# -eq 0 ]; then
    latest_release_uri="https://api.github.com/repos/ericdrgn/drgn.nyxt/releases/latest"
    echo "DOWNLOADING    $latest_release_uri"
    version=$( command curl -sSf "$latest_release_uri" |
        command grep -Eo "tag_name\": .*" |
        command grep -Eo "[0-9.]*" )
    if [ ! "$version" ]; then exit 1; fi
else
    version="${1}"
fi

download_uri="https://github.com/ericdrgn/drgn.nyxt/archive/refs/tags/${version}.zip"

nyxt_install="${NYXT_INSTALL:-$HOME/.config/nyxt}"

if [ ! -d "$nyxt_install" ]; then
    echo "MAKING FOLDER  $nyxt_install";
    mkdir -p "$nyxt_install"
fi

tar_file="$nyxt_install/${version}.zip"

echo "DOWNLOADING    v$version  $download_uri"
curl --fail --location --progress-bar --output "$tar_file" "$download_uri"
cd "$nyxt_install"

echo "EXTRACTING     $tar_file"
unzip "$tar_file"

echo "REMOVING       $tar_file"
rm "$tar_file"

echo "COPYING"
cp -rf "$nyxt_install/drgn.nyxt-${version}/base" "$nyxt_install"
cp -rf "$nyxt_install/drgn.nyxt-${version}/ex" "$nyxt_install"
cp -rf "$nyxt_install/drgn.nyxt-${version}/scripts" "$nyxt_install"
cp -rf "$nyxt_install/drgn.nyxt-${version}/themes" "$nyxt_install"
cp -rf "$nyxt_install/drgn.nyxt-${version}/auto-config.lisp" "$nyxt_install"
cp -rf "$nyxt_install/drgn.nyxt-${version}/init.lisp" "$nyxt_install"
cp -rf "$nyxt_install/drgn.nyxt-${version}/update.sh" "$nyxt_install"

echo "REMOVING       $nyxt_install/drgn.nyxt-${version}"
rm -r "$nyxt_install/drgn.nyxt-${version}"
