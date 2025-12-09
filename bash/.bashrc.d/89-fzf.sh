#!/bin/bash

if [ -n "$BASH_VERSION" ]; then
    eval "$(fzf --bash)"
elif [ -n "$ZSH_VERSION" ]; then
    eval "$(fzf --zsh)"
fi