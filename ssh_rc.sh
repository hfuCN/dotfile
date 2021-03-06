#!/bin/sh
if [ -S "$SSH_AUTH_SOCK" ]; then
  # This gets executed by sshd on every client login, symlinking the forwarded
  # agent socket into a predictable location to be picked up by tmux.
  ln -sf "$SSH_AUTH_SOCK" "/tmp/ssh-auth-${USER}.sock"
fi