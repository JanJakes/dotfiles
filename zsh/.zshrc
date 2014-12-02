source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh
antigen theme $HOME/dotfiles/zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen apply

export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

# keypad
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M" # Enter
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"
bindkey -s "^[OX" "="

# alt+left & alt+right
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
