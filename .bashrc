# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

fpodcast ()
{
mp3url=$(curl $1 | grep mp3 | cut -d'"' -f4)
wget $mp3url -O $(date +%F).mp3
}

alias ll="ls -lash"
alias fr="ranger"
alias vi="nvim -p"
alias pvenv="python3 -m venv .venv && source .venv/bin/activate"

export EDITOR='nvim -p'
export PS1="\n \A \w\n "

