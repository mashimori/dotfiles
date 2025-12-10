#!/bin/bash

if [ -n "$BASH_VERSION" ]; then
    eval "$(atuin init bash)"
elif [ -n "$ZSH_VERSION" ]; then
    eval "$(atuin init zsh)"
fi