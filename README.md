# yadm-repo

installation:

1) install yadm
https://thelocehiliosan.github.io/yadm/docs/install
2) cd ~/
3) yadm clone this repo

setup:

1) install dependencies:
- neovim - https://github.com/neovim/neovim/wiki/Installing-Neovim
- base16_shell - https://github.com/chriskempson/base16-shell/
- silver searcher - https://github.com/ggreer/the_silver_searcher
- https://github.com/Wyntau/fzf-zsh - zsh fzf plugin

optional:
- Tmux (opt) - brew install tmux (for Mac Os)
- Powerline fonts pack (optional) - https://github.com/powerline/fonts
- Inconsolata font (powerline and cyrillic support) - https://github.com/Gonzih/inconsolata-lgc-for-powerline
- Fira Code font (opt) - https://github.com/tonsky/FiraCode

2) make neovim read your .vimrc config file
`
ln -s ../.vim ~/.config/nvim
ln -s ../.vimrc ~/.vim/init.vim
`
3) install VimPlug by manual: https://github.com/junegunn/vim-plug
4) type vimconfig, skip all errors, type: ':PlugInstall'

Enjoy!

aliases:

- vimconfig - opens your ~/.vimrc config file
- tmuxconfig - opens your ~/.tmux.conf config file
