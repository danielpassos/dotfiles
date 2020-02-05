if test ! "$(uname)" = "Darwin"; then
  exit 0
fi

echo "Searching for Mac updates"
sudo softwareupdate -i -a
