if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /users/rohan.joseph/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle dnf 
antigen bundle docker
antigen bundle docker-compose
antigen bundle gnu-utils
antigen bundle systemd
antigen bundle python
antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen theme romkatv/powerlevel10k
antigen apply

export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=$HOME/code
export GOPATH=$HOME/.go
export PATH=$HOME/.local/bin:$GOPATH/bin:$HOME/.cargo/bin:$PATH
alias server='python -m http.server'
alias dwn='aria2c -x 16'
alias ls='exa'
alias cat='bat --theme=TwoDark'
function zshaddhistory() {
      [[ $1 != "rm"* ]] && [[ $1 != *"cd"* ]] && [[ $1 != *"mv"* ]] &&
      [[ $1 != *"wget"* ]] && [[ $1 != *"youtube-dl"* ]] && [[ $1 != *"aria2c"* ]] &&
      [[ $1 != "ls"* ]] && [[ $1 != "clear"* ]] && [[ $1 != *"cat"* ]] &&
      [[ $1 != "mpv"* ]]
}


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

autoload -Uz compinit && compinit
