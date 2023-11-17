# Plugins

mkdir -p ~/.zsh

if [[ ! -d ~/.zsh/autosuggestions ]]; then git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/autosuggestions; fi
source ~/.zsh/autosuggestions/zsh-autosuggestions.plugin.zsh

if [[ ! -d ~/.zsh/completions ]]; then git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh/completions; fi
source ~/.zsh/completions/zsh-completions.plugin.zsh

if [[ ! -d ~/.zsh/z ]]; then git clone https://github.com/rupa/z ~/.zsh/z; fi
source ~/.zsh/z/z.sh

# Prompt

autoload -Uz add-zsh-hook vcs_info

setopt prompt_subst
add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '%b%u%c'
zstyle ':vcs_info:git*' actionformats '%F{14}⏱ %*%f'
zstyle ':vcs_info:git*' unstagedstr '*'
zstyle ':vcs_info:git*' stagedstr '+'
zstyle ':vcs_info:*:*' check-for-changes true

RPROMPT='%F{8}⎇ $vcs_info_msg_0_%f'
PROMPT='%(?.%F{14}⏺.%F{9}⏺)%f ∴ '

# Aliases

alias gc="git add .; git commit --allow-empty-message -m ''"
alias gg="gc; git push"
