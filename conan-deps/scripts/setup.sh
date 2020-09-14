#!/bin/bash
set -eu -o pipefail

VENV_FOLDER="venv"

rm -rf "${VENV_FOLDER}"
python3 -m venv "${VENV_FOLDER}"
. "${VENV_FOLDER}/bin/activate"
pip install -U pip
pip install -r dev-requirements.txt

set -x
conan --version
meson --version
ninja --version
