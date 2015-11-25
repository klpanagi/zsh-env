all: setup

setup:
	./setup.sh

clean:
	rm -rf ~/.oh-my-zsh
	rm ~/.zshrc

.PHONY: setup
