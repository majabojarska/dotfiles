PACKAGE_DIR = dotfiles
TARGET = ${HOME}

all: stow

.PHONY: stow
stow: 
	stow $(PACKAGE_DIR) --verbose --target $(TARGET)

.PHONY: adopt
adopt:
	stow $(PACKAGE_DIR) --verbose --target $(TARGET) --adopt

.PHONY: unstow
unstow:
	stow $(PACKAGE_DIR) --verbose --target $(TARGET) --delete
