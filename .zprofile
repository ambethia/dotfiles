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
PROMPT='%(?.%F{14}⏺.%F{9}⏺)%f %2~ ∴# '