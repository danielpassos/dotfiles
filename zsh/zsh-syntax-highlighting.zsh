# shellcheck disable=SC2155
export SYNTAX_HIGHLIGHTING=$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# shellcheck disable=SC1090
[[ -s "${SYNTAX_HIGHLIGHTING}" ]] && source "${SYNTAX_HIGHLIGHTING}"
