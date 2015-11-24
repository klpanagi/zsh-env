all: setup

setup:
	./setup.sh
	cd ~/.oh-my-zsh/themes
	wget https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
	rm ~/.zshrc
	cp my_zshrc ~/.zshrc

clean:
	rm -rf ~/.oh-my-zsh
	rm ~/.zshrc

.PHONY: setup
