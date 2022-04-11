#
# ~/.bash_profile
#

export WINEARCH=win32 winecfg
export WINEDEBUG=-all
export FREETYPE_PROPERTIES="truetype:interpreter-version=35"
export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export PATH="$PATH:$HOME/scripts:$HOME/.local/bin:$HOME/scripts/netutils"
export PROMPT_THEME=bigdigsquig
export QT_QPA_PLATFORMTHEME=gtk2
export PYTHONPATH="$PYTHONPATH:$HOME/Documents/config/python_user_modules"
export EDITOR="vim"

[[ -f ~/.bashrc ]] && source ~/.bashrc
[[ -f ~/.bash_extras ]] && . ~/.bash_extras
