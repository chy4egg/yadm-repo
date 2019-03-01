# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi
if [ -f ~/bashrc ]; then
  . ~/bashrc
fi

# User specific environment and startup programs
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# integration with git
export PS1="\[\e[32m\]\u@\h\[\e[0m\] \W\[\e[33m\]\$(parse_git_branch)\[\e[0m\] $ "

# git-completion.bash
. ~/bash_config/git/git-completion.bash

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#powerline support (uncomment, while you need the powerline fonts)
# if [ -f `which powerline-daemon` ]; then
#   powerline-daemon -q
#   POWERLINE_BASH_CONTINUATION=1
#   POWERLINE_BASH_SELECT=1
#   . /usr/share/powerline/bash/powerline.sh
# fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH=${PATH}:~/soft/p4v/bin

#base aliases
alias ls="ls -la"
alias c="clear"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias bashconfig="nvim ~/.bashrc"
alias tmuxconfig="nvim ~/.tmux.conf"
alias vimconfig="nvim ~/.vimrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias v="nvim"

alias ps="cd ~/domains/petshopru/"
alias pro="cd ~/projects/"
alias root="cd ~/"
alias down="cd ~/Downloads"
# alias ag='ag -i --ignore-case --nogroup --nocolor --column'
alias ag='ag -i --ignore-case --nogroup --column --path-to-ignore ~/.ignore'
alias ack='ack -i --ignore-case --nogroup --column --path-to-ignore ~/.ignore'

#makes neovim work in english
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias jtags="ctags -R . && sed -i '' -E '/^(if|switch|function|module\.exports|it|describe).+language:js$/d' tags"

alias conflict="nvim +Conflicted"
alias storm="~/soft/PhpStorm/bin/phpstorm.sh"
alias st="~/soft/sublime_text_3/sublime_text"

# petshop ssh starting develop script
alias develop="~/sh_scripts/tmux_develop.sh"
alias docker-develop="~/sh_scripts/tmux_docker_develop.sh"
alias petshop="~/sh_scripts/tmux_psv.sh"
