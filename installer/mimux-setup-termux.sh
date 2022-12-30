clear
echo "[mi.sh]» installing base packages..."
pkg install git vim zsh openssl libcurl libssh openssh libssh2 

echo "[mi.sh]» installing vim extras..."
cp ./dotfiles/vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim

echo "[mi.sh]» installing zsh extras..."
chsh -s zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp ./dotfiles/zshrc ~/.zshrc

echo "[mi.sh]» Make sure to configure Vim and change `export ZSH=/usr/share/oh-my-zsh/` in your zshrc to `export ZSH=~/.oh-my-zsh/`!"
echo "[mi.sh]» Termux configured!"
