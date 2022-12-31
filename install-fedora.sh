sudo dnf install picom polybar bspwm sxhkd alacritty rofi nodejs brightnessctl pulseaudio zsh curl stow --skip-broken 

if [ ! -d ~/.oh-my-zsh ]; then
    echo "instaling oh my zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi;


if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
    echo "installing auto suggestion"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi;

