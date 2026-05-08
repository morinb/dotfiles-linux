install:
	./install.sh

dry-run:
	./install.sh --dry-run

restow:
	cd ~/.dotfiles && stow -R home config

unstow:
	cd ~/.dotfiles && stow -D home config

test-stow:
	cd ~/.dotfiles && stow -nv home
	cd ~/.dotfiles && stow -nv config

test-home:
	mkdir -p /tmp/test-home
	HOME=/tmp/test-home ./install.sh --dry-run

clean-test-home:
	rm -rf /tmp/test-home