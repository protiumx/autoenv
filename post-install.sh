#!/usr/bin/env bash

reset_color=$(tput sgr 0)

info() {
  printf "%s[*] %s%s\n" "$(tput setaf 2)" "$1" "$reset_color"
}

# Set of commands that need user interaction
info "======== Autoenv post install ========\n"
info "Triggering nvim plugins install"

nvim +PlugInstall +qall

if ! hash rustc &>/dev/null; then
  info "Triggering Rust-up"
  rustup-init
fi

info "Done"
info "System must restart. Restart?"

select yn in "y" "n"; do
  case $yn in
      y ) sudo shutdown -r now; break;;
      n ) exit;;
  esac
done

