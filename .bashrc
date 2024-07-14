########### My config file

# Aliases
alias cl='clear'
alias gst='git status'
alias gad='git add'
alias gco='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias gsw='git switch'
alias glg='git log'
alias glo='git log --oneline'
alias gbr='git branch'
alias gch='git checkout'
alias gdf='git diff'
# Alias to vimcStorage
alias vimcs='cd /mnt/4846944129CAB88F'

# Rust
. "$HOME/.cargo/env"

# NodeVersionManager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# NeoVim
export PATH="$PATH:/opt/nvim-linux64/bin"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Wezterm config file
alias weztermc='cd ~/.config/wezterm/'

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
