# Build scripts for Homer. These tasks will generate documentation,
# commands, and of course install the Homer scripts themselves to an
# executable location.

NAME=org
SHELL=/usr/bin/env zsh
DIRS=bin
INSTALL_DIRS=`find $(DIRS) -type d`
INSTALL_FILES=`find $(DIRS) -type f`
VERSION=0.0.2

PREFIX?=$(DESTDIR)/usr/local

# Install this script to /usr/local
all: clean install

# Move scripts to /usr/local and overwrite version file.
install:
	@for dir in $(INSTALL_DIRS); do mkdir -p $(PREFIX)/$$dir; done
	@for file in $(INSTALL_FILES); do cp $$file $(PREFIX)/$$file; done
	@echo 'echo "v${VERSION}";' >> $(PREFIX)/org-version
	@chmod 755 $(PREFIX)/org-version


# Remove scripts from /usr/local
clean:
	@for file in $(INSTALL_FILES); do rm -f $(PREFIX)/$$file; done
	@rm -r tmp

# Generate a new org-command from the template
command:
	cp etc/command.zsh bin/org-${NAME}
	cp etc/test.bats test/${NAME}_test.bats
	@chmod 755 bin/org-${NAME}

# Reinstall org from its Homebrew formula
update:
	@brew reinstall org --HEAD

# Run tests with BATS
test: clean tmp
	@ORG_PATH=tmp bats test

# Create a folder to house temporary files
tmp:
	@mkdir -p tmp

# Create a Git tag of the latest version and push to GitHub so it can be
# evaluated using Travis CI and deployed as a GitHub release.
release:
	@git tag v${VERSION}
	@git push --tags
	@git push
	@echo "Visit https://travis-ci.org/tubbo/org for progress updates."

# Create a tarball archive of the current directory.
archive: tmp
	@git archive v${VERSION} --output=tmp/org.tar.gz --prefix=org-${VERSION}/

.PHONY: all install clean command update test release archive
