#!/usr/bin/env bash
set -ex

cd ~/i/devenv/macos
stow -S --no-folding -t ~ config
