if test "$TERM_PROGRAM" = "iTerm.app"; then
  export DISABLE_AUTO_TITLE="true"
  echo -ne "\033];${PWD##*/}\007"
  echo -e "\033]6;1;bg;red;brightness;18\a"
  echo -e "\033]6;1;bg;green;brightness;26\a"
  echo -e "\033]6;1;bg;blue;brightness;33\a"
fi

precmd() {
  echo -ne "\033];${PWD##*/}\007"
}
