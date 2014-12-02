. ~/dotfiles/detect-os.sh

# bash settings
echo '[ -n "$PS1" ] && source ~/dotfiles/bash/.bash_profile;' > ~/.bashrc
echo '[ -n "$PS1" ] && source ~/dotfiles/bash/.bash_profile;' > ~/.bash_profile

sudo apt-get update
sudo apt-get install git

# zsh
. ~/dotfiles/zsh/install.sh
