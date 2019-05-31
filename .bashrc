[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH=${PATH}:~/soft/p4v/bin
export PATH=/usr/local/bin:$PATH

if [ "$EUID" != 0 ]; then
  parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
fi

# user/folder/branch
# export PS1="\[\e[34m\]\u@\h\[\e[32m\] \W\[\e[33m\]\$(parse_git_branch)\[\e[0m\] $ "
export PS1="\[\e[32m\]\W\[\e[33m\]\$(parse_git_branch)\[\e[0m\] $ "

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
  [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
  eval "$("$BASE16_SHELL/profile_helper.sh")"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias bashconfig="vim ~/.bashrc"
alias zshconfig="vim ~/.zshrc"
alias tmuxconfig="vim ~/.tmux.conf"
alias vimconfig="vim ~/.vimrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# NeoVim shortcut
alias v="nvim"

alias petshop="cd ~/domains/petshopru/"
alias pro="cd ~/projects/"
alias root="cd ~/"
# alias ag='ag -i --ignore-case --nogroup --nocolor --column'
alias ag='ag -i --ignore-case --nogroup --column --path-to-ignore ~/.ignore'
alias ack='ack -i --ignore-case --nogroup --column --path-to-ignore ~/.ignore'

#makes neovim work in english
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# petshop ssh starting develop script
alias develop="~/sh_scripts/tmux_develop.sh"
alias develop_new="~/sh_scripts/tmux_develop_new.sh"
alias psdocker="~/sh_scripts/ps_docker.sh"
