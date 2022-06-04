home="/home/$USER"
config="$home/.config"

cp $home/.Xmodmap  $home/.xinitrc  $home/.bashrc  $home/.Xresources .
cp -r $config/dunst/ $config/fish/ $config/i3/ $config/kitty/ $config/mpv/ $config/nvim/ $config/picom/ $config/polybar/ $config/ranger/ $config/rofi/ $config/wallpapers/ /home/$USER/projects/dotfiles2/

cp /usr/share/backgrounds/the-great-wave2-nord.png /home/$USER/projects/dotfiles2/

msg="$1"
[ -z "$msg" ] && msg="update"

dir=$(pwd)

cd /home/$USER/projects/dotfiles2/

git add .
git commit -m "$msg"
git push

cd $dir
