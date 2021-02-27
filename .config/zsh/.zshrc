# source all .zsh files inside of the zsh/ directory
for config ($ZDOTDIR/*.zsh(N)); do
  source $config
done

export EDITOR='vim'

# check for custom bin directory and add to path
if [[ -d ~/bin ]]; then
  export PATH=~/bin:$PATH
fi

source $HOME/.config/base16-shell/base16-shell.plugin.zsh

