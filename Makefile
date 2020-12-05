conf      := vimrc bash_profile config cache colorrc tmux.conf
installer := installer.sh
BASEDIR   := $(shell pwd)

# dein.vim
dein-installer-url := https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh

.PHONY: all clean create
all: clean create

define remove-conf
	rm -rf ~/.${1};
endef
define remove-installer
	rm -rf ${1};
endef

define link
	ln -s $(PWD)/${1} ~/.${1};
endef

clean:
	$(foreach c,$(conf),$(call remove-conf,${c}))
	$(foreach c,$(installer),$(call remove-installer,${c}))


create: cache colorrc
	$(foreach c,$(conf),$(call link,${c}))


# neovim
cache: installer.sh
	sh ${BASEDIR}/installer.sh ${BASEDIR}/cache/dein > dein.stdout.txt


installer.sh:
	curl ${dein-installer-url} > ${BASEDIR}/installer.sh


# color ls
colorrc:
	dircolors -p > ${BASEDIR}/colorrc
	
