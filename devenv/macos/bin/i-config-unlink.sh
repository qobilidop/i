#!/usr/bin/env bash
set -ex

cd ~/i/devenv/macos
stow -D --no-folding -t ~ config
