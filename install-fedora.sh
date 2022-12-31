# install require
sudo dnf install picom polybar bspwm sxhkd alacritty rofi nodejs brightnessctl pulseaudio zsh curl stow ripgrep chsh --skip-broken
# set time
sudo ln -s /usr/share/zoneinfo/Africa/Casablanca /etc/localtime
# oh my zsh
if [ ! -d ~/.oh-my-zsh ]; then
    echo "instaling oh my zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi;

# zsh autosuggestions
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
    echo "installing auto suggestion"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi;

 chsh -s $(which zsh)

# vim plug
if [ ! -d "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim ]; then
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi;

# powerlevel10k
if [ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi;
