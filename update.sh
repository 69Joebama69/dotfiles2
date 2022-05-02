path="/home/$USER/.config"

cp /home/$USER/.Xmodmap  /home/$USER/.xinitrc  /home/$USER/.bashrc  /home/$USER/.Xresources .
cp -r $path/dunst/ $path/fish/ $path/i3/ $path/kitty/ $path/mpv/ $path/nvim/ $path/picom/ $path/polybar/ $path/ranger/ $path/rofi/ $path/wallpapers/ /home/$USER/projects/dotfiles2/

msg="$1"
[ -z "$msg" ] && msg="update"

dir=pwd

cd /home/$USER/projects/dotfiles2/

git add .
git commit -m "$msg"
git push

cd $dir
