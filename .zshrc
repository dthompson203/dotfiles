eval "$(starship init zsh)"
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#export JAVA_HOME=$(/usr/libexec/java_home)
#The next line might need to be /Applications/Android\ Studio.app/Contents/jbr/Contents/Home
#or possibly jre instead of jbr
export TERM=alacritty
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export PATH=/usr/local/bin:${PATH}
export HISTSIZE=1000000000
export SAVEHIST=1000000000
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST

#Rebind the up and down arrows to call history search
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# ^[[1;9D ^[[1;9C ^[[H ^[[F
#Command left and right
bindkey "^[[1;9D" beginning-of-line
bindkey "^[[1;9C" end-of-line
#Fn left and right
bindkey "^[[H" vi-beginning-of-line
bindkey "^[[F" vi-end-of-line

#This did not fix my neovim keybind issue
#alt (option/meta key) left and right to go back or forward a word
#on my mac it is: interpreted as ^[B ^[F
#use cat -v to find this
#bindkey "^[B"  vi-backward-word
#bindkey "^[F"  vi-forward-word

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#[[ Alias list ]]
alias vi='nvim'
alias vim='nvim'
# ---- Eza (better ls) -----
alias ls="eza --icons=always"
# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
# --- To use cd and Zoxide create an alias like: alias cd="z"
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fastfetch
