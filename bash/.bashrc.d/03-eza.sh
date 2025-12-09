#!/bin/bash

# eza alias
if command -v eza >/dev/null 2>&1; then
    alias ls='eza --icons=auto --hyperlink --time-style=iso --color=auto --color-scale=all'
    alias ll='eza -la --icons=auto --hyperlink --time-style=iso --color=auto --color-scale=all --total-size'
    alias l='eza -lA --icons=auto --hyperlink --time-style=iso --color=auto --color-scale=all'
    alias lt='eza -laT --git-ignore --icons=auto --hyperlink --color=auto --color-scale=all'
fi