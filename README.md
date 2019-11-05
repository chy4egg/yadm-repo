# This is my .dotfiles config repo which includes: tmux, vim, bash/zsh, spacemacs configuration files and also the fonts i use.

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
- Tmux (opt) - brew install tmux (for Mac Os)
- Tmux plugin manager - git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
- Run Tmux and press prefix + I (capital i, as in Install) to fetch the plugins.
- neofetch - https://formulae.brew.sh/formula/neofetch

Fonts:
- Source Code Pro - https://github.com/adobe-fonts/source-code-pro
- Hack - https://sourcefoundry.org/hack/
- Input Mono - https://input.fontbureau.com/
- Iosevka - https://github.com/be5invis/Iosevka
- Nerd fonts pack (optional) - https://github.com/ryanoasis/nerd-fonts

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
