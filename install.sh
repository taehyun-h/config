#! /bin/sh

set -e

CONFIG=~/Develop/config

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s $CONFIG/.zshrc ~
ln -s $CONFIG/.zshrc_alias ~
ln -s $CONFIG/.zshrc_utils ~

# scm_breeze
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
ln -s $CONFIG/.git.scmbrc ~

# nvim
mkdir -p ~/.config/nvim
ln -s $CONFIG/init.vim ~/.config/nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew install command-line tools
brew install fzf
brew install ag
brew install neovim

echo "Install Success"
