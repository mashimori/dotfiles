#!/bin/bash

if [ "$SHELL" = "/bin/bash" ]; then
    eval "$(fzf --bash)"
elif [ "$SHELL" = "/bin/zsh" ]; then
    eval "$(fzf --zsh)"
fi