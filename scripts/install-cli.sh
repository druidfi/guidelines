#!/bin/sh

main () {
  title "Install Druid CLI"

  check_requirements
  ARCH=$(arch)
  IMAGE=druidfi/cli
  ARTIFACT="druid-cli-image.$ARCH.tar.gz"
  WRAPPER=/usr/local/bin/druid-cli

  info "Download latest Druid CLI image from GitHub"
  rm -f "/tmp/$ARTIFACT" && gh release download -p "*.$ARCH.tar.gz" --repo "$IMAGE" --dir /tmp

  ! test -f "/tmp/$ARTIFACT" && error "File does not exist"

  info "Remove old image"
  docker rmi -f "$IMAGE"

  info "Load image"
  docker load < "/tmp/$ARTIFACT" && rm -f "/tmp/$ARTIFACT"

  info "Set wrapper in $WRAPPER"
  docker run --rm "$IMAGE" wrapper > /tmp/druid-cli && chmod +x /tmp/druid-cli
  sudo mv /tmp/druid-cli "$WRAPPER"

  info "Test wrapper"
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
  if [ "$(which docker && echo "yes" || echo "no")" == "no" ]; then
    error "Docker is needed but not found. Get it from https://docs.docker.com/get-docker/" && exit 1
  fi

  if [ "$(which gh && echo "yes" || echo "no")" == "no" ]; then
    error "GitHub CLI is needed but not found. Get it from https://cli.github.com/" && exit 1
  fi
}

main
