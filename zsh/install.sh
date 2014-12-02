# install zsh
if [ "$OS" = "linux" ]; then
	sudo apt-get install zsh
elif [ "$OS" = "osx" ]; then
	brew install zsh
else
	echo "Unknown OS"
	exit 1
fi

# add zsh to allowed shells
echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells > /dev/null

git clone https://github.com/zsh-users/antigen ~/.antigen

# add custom zsh settings
rm -f ~/.zshrc && ln -s ~/dotfiles/zsh/.zshrc  ~/
