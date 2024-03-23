PACKAGE_DIR = dotfiles
TARGET = ${HOME}

all: install

.PHONY: install
install:
	stow $(PACKAGE_DIR) --verbose --target $(TARGET)

.PHONY: force-adopt
force-adopt:
	stow $(PACKAGE_DIR) --verbose --target $(TARGET) --adopt
	git reset --hard

.PHONY: uninstall
uninstall:
	stow $(PACKAGE_DIR) --verbose --target $(TARGET) --delete
