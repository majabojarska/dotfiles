PACKAGE_DIR = dotfiles
TARGET = ${HOME}

all: install

.PHONY: install
install:
	stow $(PACKAGE_DIR) --verbose --target $(TARGET)

.PHONY: install-overwrite
install-overwrite:
	stow $(PACKAGE_DIR) --verbose --target $(TARGET) --adopt
	git reset --hard

.PHONY: adopt
adopt:
	stow $(PACKAGE_DIR) --verbose --target $(TARGET) --adopt

.PHONY: uninstall
uninstall:
	stow $(PACKAGE_DIR) --verbose --target $(TARGET) --delete
