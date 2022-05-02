path="/home/$USER/.config"
cp -r $path/dunst/ $path/fish/ $path/i3/ $path/kitty/ $path/mpv/ $path/nvim/ $path/picom/ $path/polybar/ $path/ranger/ $path/rofi/ $path/wallpapers/ .

msg="$1"
[ -z "$msg" ] && msg="update"

git add .
git commit -m "$msg"
git push
