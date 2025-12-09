# .bashrc

# History control
HISTCONTROL=ignoredups:erasedups  # no duplicate entries
HISTSIZE=10000
HISTFILESIZE=20000
HISTTIMEFORMAT="%F %T " # Format: RRRR-MM-DD GG:MM:SS

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*.sh; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


