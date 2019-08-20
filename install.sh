#! /bin/sh

set -e

CONFIG=~/Develop/config

# xcode-command-line-tools
xcode-select --install

# ssh
ln -s $CONFIG/config ~/.ssh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -sf $CONFIG/.zshrc ~
ln -s $CONFIG/.zshrc_alias ~
ln -s $CONFIG/.zshrc_utils ~
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# scm_breeze
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
ln -sf $CONFIG/.git.scmbrc ~

# nvim
mkdir -p ~/.config/nvim
ln -sf $CONFIG/init.vim ~/.config/nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew install command-line tools
brew install fzf
brew install ag
brew install neovim
brew install trash

source ~/.zshrc

echo "Install Success"
