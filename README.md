# This is my .dotfiles config repo which includes: tmux, vim, bash, spacemacs configuration files and also the fonts i use.

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
- zsh - chsh -s /bin/zsh
- oh-my-zsh - https://github.com/robbyrussell/oh-my-zsh
- powerline10k zsh theme - https://github.com/romkatv/powerlevel10k#oh-my-zsh
- zsh fzf plugin - https://github.com/Wyntau/fzf-zsh
- zsh-autosuggestions - https://github.com/zsh-users/zsh-autosuggestions

optional:
- Tmux (opt) - brew install tmux (for Mac Os)
- Powerline fonts pack - https://github.com/powerline/fonts
- Source Code Pro font - https://github.com/adobe-fonts/source-code-pro
- Hack font - https://sourcefoundry.org/hack/

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
