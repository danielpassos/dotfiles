if test ! "$(uname)" = "Darwin"; then
  exit 0
fi

echo "* Installing system updates"
sudo softwareupdate --background --install --all > /dev/null
