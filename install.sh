#! /bin/sh

set -e

CONFIG=~/Develop/config

# ssh
ln -s $CONFIG/config ~/.ssh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s $CONFIG/.zshrc ~
ln -s $CONFIG/.zshrc_alias ~
ln -s $CONFIG/.zshrc_utils ~
ln -s $CONFIG/.zshrc_work ~

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
brew install boost
brew install trash

# xcode-command-line-tools
xcode-select --install
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer<Paste>

# karabiner-elements
git clone --depth 1 https://github.com/tekezo/Karabiner-Elements.git

# unity
cp unity_layout.wlt ~/Library/Preferences/Unity/Editor-5.x/Layouts/taehyun.wlt<Paste>

echo "Install Success"
