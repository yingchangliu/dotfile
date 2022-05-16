# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Install "pacman-contrib" and enable "paccache.timer" service.
# Install "ufw" and enable "ufw.service" service.
#
#
#

# Lines configured by zsh-newuser-install
HISTFILE=~/dotfile/histfile
HISTSIZE=1234567890
SAVEHIST=1234567890
bindkey -e
# End of lines configured by zsh-newuser-install



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Enable some plugins of zsh installed by kelen
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme 2>/dev/null
source /usr/share/doc/pkgfile/command-not-found.zsh 2>/dev/null 


# You should install "pkgfile" and exec 'sudo pkgfile -u' to use the cnf.zsh.
source /usr/share/autojump/autojump.zsh 2>/dev/null
autoload -Uz compinit
compinit



# Eliminate duplicate entries in history
setopt HIST_IGNORE_DUPS
# Sovle 'no matches found' in zsh
setopt no_nomatch
# Ignore command which space is the first
setopt hist_ignore_space
# Rehash for automatically find new executables in the $PATH for example the files I installed in /usr/bin/ 
zstyle ':completion:*' rehash true

# Enable autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:pacman:*' force-list always
zstyle ':completion:*:*:pacman:*' menu yes select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always

# Enable help in zsh
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk


[ -f "$HOME/dotfile/aliasrc" ] && source "$HOME/dotfile/aliasrc"


## Some customized settings of kelen

# The default PATH
# /opt/miniconda/condabin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

# Change default editor to vim
export EDITOR='vim'

# Enable conda in command line
source /opt/miniconda/etc/profile.d/conda.sh 2>/dev/null
#
# Enable nnn plugins
source ~/.config/nnn/plugin.sh 2>/dev/null
#
# To customize prompt, run `p10k configure` or edit ~/dotfile/p10k.zsh.
[[ ! -f ~/dotfile/p10k.zsh ]] || source ~/dotfile/p10k.zsh
