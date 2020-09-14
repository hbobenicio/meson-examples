# simple-app

Just to demonstrate basic meson building.

## Dev dependencies

- python 3
- meson
- C++ compiler with c++17 support

## Setup

```
python3 -m venv venv
. ./venv/bin/activate
pip install -U pip
pip install -r dev-requirements.txt
meson bin
```

## Build

```
meson compile -C bin
```

## Run

```
./bin/simple-app
```
