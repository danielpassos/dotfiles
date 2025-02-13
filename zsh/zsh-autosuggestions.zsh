# shellcheck disable=SC2155
export AUTOSUGGESTIONS=$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# shellcheck disable=SC1090
[[ -s "${AUTOSUGGESTIONS}" ]] && source "${AUTOSUGGESTIONS}"
