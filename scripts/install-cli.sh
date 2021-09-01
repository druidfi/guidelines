#!/bin/sh

main () {
  title "Install Druid CLI"

  check_requirements
  ARCH=$(arch)
  REPO="druidfi/cli"
  BINARY="druid-cli"
  WRAPPER="/usr/local/bin/$BINARY"
  DOWNLOAD_BINARY="druid-cli-v1.0.0-darwin-$ARCH"

  info "Download latest Druid CLI from GitHub"

  gh release download latest -p "$DOWNLOAD_BINARY" --repo "$REPO" --dir /tmp

  ! test -f "/tmp/$DOWNLOAD_BINARY" && error "File does not exist" && exit 1

  chmod +x "/tmp/$DOWNLOAD_BINARY"
  sudo mv "/tmp/$DOWNLOAD_BINARY" "$WRAPPER"

  info "Test Druid CLI"
  druid-cli check

  success "Done! Now you can use 'druid-cli' command!"
  exit 0
}

info () {
  printf "🔸 %s\n" "$1"
}

success () {
  printf "\n🎉 \033[0;32m%s\033[0m\n" "$1"
}

title () {
  printf "\n\033[0;33m${1}\n%s\033[0m\n\n" "$(eval printf '=%.0s' "{2..$(echo "$1" | wc -c | xargs)}")"
}

error () {
  printf "\033[0;31m[ERROR]\033[0m %s\n" "$1"
}

arch () {
  if [[ "$(uname -m)" =~ ^(aarch64|arm64|armv8)$ ]]; then echo "arm64";
  else echo "amd64"; fi
}

check_requirements () {
  if [ "$(which gh && echo "yes" || echo "no")" == "no" ]; then
    error "GitHub CLI is needed but not found. Get it from https://cli.github.com/" && exit 1
  fi
}

main
