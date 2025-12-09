#!/bin/bash

if [ "$SHELL" = "/bin/bash" ]; then
    eval "$(zoxide init bash)"
elif [ "$SHELL" = "/bin/zsh" ]; then
    eval "$(zoxide init zsh)"
fi