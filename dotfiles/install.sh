 #!/usr/bin/env bash

echo "dot install"
exit 0

files=(
  ".profile*"
  ".zprofile"
  ".gitconfig"
  ".aliases"
  ".zshrc"
  ".p10k.sh"
  ".vimrc"
)
folders=(
  ".config/nvim"
  ".config/kitty"
  ".git-templates/hooks"
  ".ssh"
)

for f in $files; do
  rm -f "$HOME/$f" || true
done

# Create the folders to avoid symlinking folders
for d in $folders; do
  rm -rf "$HOME/$d" || true
  mkdir -p "$HOME/$d"
done

dotfiles="git kitty nvim ssh vim zsh"

stow -d stow --verbose 1 --target $HOME $dotfiles

