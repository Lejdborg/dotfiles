# Create a new directory and enter it
# Found in the dotfiles of Mathias Bynens (https://github.com/mathiasbynens)
function mcdir() {
  mkdir -p "$@" && cd "$@"
}
