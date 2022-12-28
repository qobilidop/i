#!/usr/bin/env bash
# Set up my MacOS machine from scratch.
set -ex

# Install Homebrew
# https://brew.sh
command -v brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install essential packages
brew tap homebrew/cask-fonts
brew install \
    git \
    mas \
    starship \
    stow
brew install --cask \
    1password \
    docker \
    font-jetbrains-mono \
    font-jetbrains-mono-nerd-font \
    google-chrome \
    hyper \
    obsidian \
    visual-studio-code
mas install 441258766 # Magnet

# Install essential VS Code extensions
code --install-extension eamodio.gitlens
code --install-extension jdinhlife.gruvbox
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.remote-explorer
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension timonwong.shellcheck

# Link config files
[ ! -d "$HOME/i" ] && git clone https://github.com/qobilidop/i.git ~/i
cd ~/i/devenv/macos
stow --no-folding -t ~ config

# Copy SSH key
cp ~/Documents/home/.ssh/id_ed25519 ~/.ssh/id_ed25519
chmod 600 ~/.ssh/id_ed25519

# Switch repo remote
cd ~/i
git remote set-url origin git@github.com:qobilidop/i.git
