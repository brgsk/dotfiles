.PHONY: all
all: stow

.PHONY: stow
stow:
	@stow -t ~ tmux zsh git i3 starship ipython kitty

.PHONY: unstow
unstow:
	@stow -D -t ~ tmux zsh git i3 starship ipython kitty
