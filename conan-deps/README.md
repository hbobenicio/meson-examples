# simple-app

Just to demonstrate basic meson building.

## Dev dependencies

- python 3
- cmake (most conan packages only support cmake generator)
- C++ compiler with c++17 support

## App dependencies

- gtk+-3.0-dev (system)
- fmt 7 (conan managed with cmake_find_package generator)

## Setup

> OBS.: It may be desired to export CC=clang and CXX=clang++ in your ~/.profile before the following setup.

```
python3 -m venv venv
. ./venv/bin/activate
pip install -U pip
pip install -r dev-requirements.txt
conan install . --build=fmt --install-folder bin
meson bin
```

### VSCode Setup

**.vscode/c_cpp_properties.json** example:

```json
{
    "configurations": [
        {
            "name": "Linux",
            "includePath": [
                "${workspaceFolder}/**",
                "${HOME}/.conan/data/**",
                "/usr/include/gtk-3.0"
            ],
            "defines": [],
            "compilerPath": "/home/hugo/bin/clang/clang+llvm-10.0.0/bin/clang",
            "cStandard": "c11",
            "cppStandard": "c++17",
            "intelliSenseMode": "clang-x64"
        }
    ],
    "version": 4
}
```

## Build

```
meson compile -C bin
```

## Run

```
./bin/conan-deps
```
