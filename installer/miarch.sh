clear
echo "[mi.sh]» miarch post-archinstall installation starting..."
echo "[mi.sh]» "
echo "[mi.sh]» default archinstall config:"
echo "[mi.sh]» Drives: btrfs/y/y"
echo "[mi.sh]» Bootloader: systemctl-bootctl"
echo "[mi.sh]» Profile: minimal"
echo "[mi.sh]» Audio: pipewire"
echo "[mi.sh]» Network: networkmanager"
echo "[mi.sh]» Repos: multilib"
echo "[mi.sh]» + Locale, ..."
echo "[mi.sh]» "
echo "[mi.sh]» Press any Key to continue, Ctrl+C to exit."
read -n 1 -r -p " "
echo "[mi.sh]» copying dotfiles..."
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/hypr
cp ./dotfiles/alacritty.yml ~/.config/alacritty/
cp ./dotfiles/hyprland.conf ~/.config/hypr/
cp ./dotfiles/vimrc ~/.vimrc
cp ./dotfiles/zshrc ~/.zshrc
cd ~
echo "[mi.sh]» installing yay package manager..."
sudo pacman -S git --no-confirm
git clone https://aur.archlinux.org/yay
cd yay && makepkg -si
cd ~ && rm -rf yay
echo "[mi.sh]» installing core packages..."
yay -S lynx base-devel man-db vim keepassxc mpv oh-my-zsh-git zsh nerd-fonts ttf-anonymus-pro noto-fonts noto-fonts-emoji
echo "[mi.sh]» making zsh the default shell..."
echo "zsh" >> ~/.bashrc
chsh -s $(which zsh)
echo "[mi.sh]» installing vim extras..."
cp ./dotfiles/vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim
cd ~
echo "[mi.sh]» installing desktop packages..."
yay -S hyprland-bin librewolf wofi alacritty nautilus lxappearance gparted swaybg slurp wl-clipboard grim gtk4 gtk3
echo "[mi.sh]» would you like to install the EXTRA packages?"
echo "[mi.sh]» (steam, heroic, krita, blender, ...)"
read -r -p " → " SELECT
if [ "$SELECT" == "1" ]; then
    sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader
    yay -S steam heroic-games-launcher krita blender ardour bottles lutris
else
    echo "[mi.sh]» did not install EXTRA packages."
fi
echo "[mi.sh]» you may now configure and use your system."
