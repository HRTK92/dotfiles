#!/usr/bin/env bash

curl -fsSL https://tailscale.com/install.sh | sh

if [ -n "$TS_AUTHKEY" ]; then
  sudo tailscale up --authkey "$TS_AUTHKEY" --hostname "$(hostname)-codespace"
fi
