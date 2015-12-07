# Build scripts for Homer. These tasks will generate documentation,
# commands, and of course install the Homer scripts themselves to an
# executable location.

.PHONY: test install uninstall reinstall clean all

NAME=org
SHELL=/usr/bin/env zsh
DIRS=bin
INSTALL_DIRS=`find $(DIRS) -type d`
INSTALL_FILES=`find $(DIRS) -type f`

PREFIX?=$(DESTDIR)/usr/local

# Install this script to /usr/local
all: clean install

# Remove generated files
clean:
	rm -f ${PREFIX}/bin/org-*

# Move scripts to /usr/local
install:
	for dir in $(INSTALL_DIRS); do mkdir -p $(PREFIX)/$$dir; done
	for file in $(INSTALL_FILES); do cp $$file $(PREFIX)/$$file; done

# Remove scripts from /usr/local
uninstall:
	for file in $(INSTALL_FILES); do rm -f $(PREFIX)/$$file; done

# Reinstall the scripts with Homebrew.
reinstall:
	brew update && brew reinstall ${NAME} --HEAD
