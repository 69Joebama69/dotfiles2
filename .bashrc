#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export QT_STYLE_OVERRIDE=kvantum

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# python /home/hannes/projects/python/file_organizer/organize.py

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache

export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia

export MOZ_ENABLE_WAYLAND=1
export MOZ_DBUS_REMOTE=1

export SDL_VIDEODRIVER=x11
export QT_QPA_PLATFORM=xcb

export PATH="/home/hannes/HDD1/lineageos:$PATH"
#export LANG=C

fish
