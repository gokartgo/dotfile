#!/bin/bash

### install brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
### neovim
# brew install neovim
### link neovim
# ln -sf ~/.dotfiles/.config/nvim ~/.config/nvim  
### nvm and node version 20
# brew install nvm
# nvm install 20
### ripgrep use with telescope
# brew install ripgrep
### chafa use with telescope telescope-media-files
# brew install chafa
### dotnet for omnisharp lsp
# brew install dotnet
### java and maven for jdtls lsp
# brew install java
# brew install maven
### neo vim plug
# curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
# nvim +PlugInstall +qall
### copy font to local machine
# cp ./Fonts/MesloLGSNFNerdFont-Regular.ttf ~/Library/Fonts/MesloLGSNFNerdFont-Regular.ttf
### add stdc++.h to cpp in Mac
# sudo mkdir /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/bits
# sudo mv stdc++.h /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1/bits

### install oh my zsh for decorate iterm2 ( --unattended fix problem about bash script exits after installing oh my zsh )
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
### install powerlevel10k
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
### install zsh-autosuggestion plugin
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
### install zsh-syntax-highlighting plugin
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
### install zsh-vi-mode plugin
# git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
### link zshrc
# ln -sf ~/.dotfiles/.zshrc ~/.zshrc
