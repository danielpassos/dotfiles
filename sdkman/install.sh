if [[ ! -d $HOME/.sdkman ]]; then
  echo "* Installing sdkman"
  curl --silent "https://get.sdkman.io" | bash > /dev/null
fi
