export ZSH=~/.oh-my-zsh
ZSH_THEME="ys"
plugins=(git)
plugins=(zsh-autosuggestions)
plugins=(zsh-syntax-highlighting)
plugins=(colored-man-pages)
source $ZSH/oh-my-zsh.sh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# export
export EDITOR=/usr/local/bin/nvim
export LC_ALL=ko_KR.UTF-8

source "$HOME/.zshrc_alias"
source "$HOME/.zshrc_utils"

[ -s "/Users/taehyun/.scm_breeze/scm_breeze.sh" ] && source "/Users/taehyun/.scm_breeze/scm_breeze.sh"
