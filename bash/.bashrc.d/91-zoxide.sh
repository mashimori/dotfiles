#!/bin/bash

if [ -n "$BASH_VERSION" ]; then
    eval "$(zoxide init bash)"
elif [ -n "$ZSH_VERSION" ]; then
    eval "$(zoxide init zsh)"
fi