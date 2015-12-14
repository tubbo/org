# Build scripts for Homer. These tasks will generate documentation,
# commands, and of course install the Homer scripts themselves to an
# executable location.

NAME=org
SHELL=/usr/bin/env zsh
DIRS=bin
INSTALL_DIRS=`find $(DIRS) -type d`
INSTALL_FILES=`find $(DIRS) -type f`

PREFIX?=$(DESTDIR)/usr/local

# Install this script to /usr/local
all: clean install

# Move scripts to /usr/local
install:
	for dir in $(INSTALL_DIRS); do mkdir -p $(PREFIX)/$$dir; done
	for file in $(INSTALL_FILES); do cp $$file $(PREFIX)/$$file; done

# Remove scripts from /usr/local
clean:
	for file in $(INSTALL_FILES); do rm -f $(PREFIX)/$$file; done

# Generate a new org-command from the template
command:
	cp etc/command.zsh bin/org-${NAME}
	@chmod 755 bin/org-${NAME}

# Reinstall org from its Homebrew formula
update:
	brew reinstall org --HEAD

.PHONY: all install clean command update
