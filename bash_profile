#
# ~/.bash_profile
#

# Set up any necessary environment variables
export WINEARCH=win32 winecfg
export WINEDEBUG=-all
export FREETYPE_PROPERTIES="truetype:interpreter-version=35"
export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export PATH="$PATH:$HOME/scripts:$HOME/.local/bin:$HOME/scripts/netutils:$Home/Work"
export PROMPT_THEME=bigdigsquig
export QT_QPA_PLATFORMTHEME=gtk2
export PYTHONPATH="$PYTHONPATH:$HOME/Documents/config/python_user_modules"
export EDITOR="vim"
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
export STEAM_RUNTIME=1

# Source any of these files if they exist
[ -f ~/.bash_extras ] && . ~/.bash_extras
[ -f ~/.bashrc ] && . ~/.bashrc
[ -f ~/.dircolors ] && eval "$(dircolors ~/.dircolors)"
[ -f "~/Documents/builds/google-cloud-sdk/pkg/google-cloud-sdk/opt/google-cloud-sdk/completion.bash.inc" ] && source "~/Documents/builds/google-cloud-sdk/pkg/google-cloud-sdk/opt/google-cloud-sdk/completion.bash.inc"
[ -f "~/Documents/builds/google-cloud-sdk/pkg/google-cloud-sdk/opt/google-cloud-sdk/path.bash.inc" ] && source "~/Documents/builds/google-cloud-sdk/pkg/google-cloud-sdk/opt/google-cloud-sdk/path.bash.inc"

# Build this session's i3config
i3-setup.sh

# Start X session if I've logged in to tty1
[ -z "$DISPLAY" ] && [ "${XDG_VTNR}" -eq 1 ] && exec startx $HOME/.xinitrc
