# source all .zsh files inside of the zsh/ directory
for config ($ZDOTDIR/*.zsh(N)); do
  source $config
done

export EDITOR='vim'

# check for custom bin directory and add to path
if [[ -d ~/bin ]]; then
  export PATH=~/bin:$PATH
fi

# Base16 Shell
if [ -z "$THEME" ]; then
  export THEME="base16-tomorrow"
fi
if [ -z "$BACKGROUND" ]; then
  export BACKGROUND="dark"
fi

BASE16_SHELL="$HOME/.config/base16/shell/$THEME.$BACKGROUND.sh"
[ -r $BASE16_SHELL ] && source $BASE16_SHELL
