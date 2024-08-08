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
alias vimcs='cd /mnt/vimcStorage'
alias vimcode='cd /mnt/vimcStorage/projects'

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

PATH=~/.console-ninja/.bin:$PATH

# Eza alias for ls command
alias ls='eza --icons=always'

# --- Zoxide (better cd command) ---
eval "$(zoxide init bash)"
alias cd='z'

# fuzzy finder requires by Zoxide
eval "$(fzf --bash)"

# .AppImage apps
export PATH=$PATH:~/AppImages/
alias responsivelyapp='Responsively*.AppImage > /dev/null 2>&1 &'
