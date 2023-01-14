# install require
sudo dnf install picom polybar bspwm sxhkd alacritty rofi nodejs brightnessctl --skip-broken
sudo dnf pulseaudio zsh curl stow ripgrep chsh python3-pip xprop htop vim neovim --skip-broken
sudo dnf fontawesome-fonts feh woeusb dolphin shutter acpi yarnpkg unrar --skip-broken
# for screenshot
sudo dnf install scrot

# install github
sudo rpm --import https://packagecloud.io/shiftkey/desktop/gpgkey
sudo sh -c 'echo -e "[shiftkey]\nname=GitHub Desktop\nbaseurl=https://packagecloud.io/shiftkey/desktop/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/shiftkey/desktop/gpgkey" > /etc/yum.repos.d/shiftkey-desktop.repo'
sudo dnf install github-desktop #sudo yum install github-desktop

# install mongo
sudo dnf install mongodb-org-server mongodb-org-shell mongodb-database-tools mongodb-org-mongos mongodb-mongosh

# install redis
sudo dnf -y install redis --skip-broken
# install docker
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io


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

# run as default
sudo chsh -s /bin/zsh $USER


# vim plug
if [ ! -d "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim ]; then
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi;

# powerlevel10k
if [ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi;
