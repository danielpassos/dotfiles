if test "$(command -v fzf)"; then
  eval "$(fzf --zsh)"

  # — Use fd instead of fzf --
  export FZF_DEFAULT_COMMAND="fd —hidden --strip-cwd-prefix --exclude .git"
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="fd --type=d —hidden -strip-cwd-prefix --exclude .git"

  # Use fd (https://github.com/sharkdp/fd) for listing path candidates.
  # - The first argument to the function ($1) is the base path to start traversal
  # - See the source code (completion.(bash,zsh}) for the details.
  _fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
  }

  # Use fd to generate the list for directory completion
  fzf_compgen_dir() {
    fd --type=d -hidden --exclude .git . "$1"
  }

  # - Add fzf-git.sh
  if [ ! -e "$HOME/.dotfiles/fzf/fzf-git.sh" ]; then
    wget -P "$HOME/.dotfiles/fzf" https://raw.githubusercontent.com/junegunn/fzf-git.sh/main/fzf-git.sh
  fi

  source "$HOME/.dotfiles/fzf/fzf-git.sh"
fi
