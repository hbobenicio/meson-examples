#!/bin/bash
set -eu -o pipefail

. venv/bin/activate

BUILD_FOLDER="bin"

rm -rf "${BUILD_FOLDER}"
conan install . --build=fmt --install-folder "${BUILD_FOLDER}"
meson "${BUILD_FOLDER}"
meson compile -C "${BUILD_FOLDER}"
