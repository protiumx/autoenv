#!/usr/bin/env bash

# Set of commands that need user interaction
echo "----- autoenv post install -----"
echo "Triggering nvim plugins install"
nvim +PlugInstall +qall

echo "Triggering Rust-up"
rustup-init

echo "----- Finished -----"
echo "System must restart"
sudo shutdown -r now


