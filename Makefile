PLUGINS_DIR = ~/.vim/plugged
APP_DIR = Dockerfile.vim
INSTALLDIR = $(PLUGINS_DIR)/$(APP_DIR)

plug:
	mkdir -p $(PLUGINS_DIR) || exit
	mkdir -p $(INSTALLDIR) || exit
	@echo "Installation:"
	@mkdir -p $(INSTALLDIR)/syntax
	@mkdir -p $(INSTALLDIR)/indent
	@mkdir -p $(INSTALLDIR)/ftdetect
	@mkdir -p $(INSTALLDIR)/ftplugin
	@mkdir -p $(INSTALLDIR)/snippets
	@echo " * Dirs     ...    success."
	@cp ./syntax/dockerfile.vim $(INSTALLDIR)/syntax/
	@cp ./syntax/docker-compose.vim $(INSTALLDIR)/syntax/
	@echo " * Ident    ...    success."
	@cp ./indent/dockerfile.vim $(INSTALLDIR)/indent/
	@cp ./indent/dockerfile.vim $(INSTALLDIR)/indent/
	@echo " * Syntax   ...    success."
	@cp ./ftdetect/docker-compose.vim $(INSTALLDIR)/ftdetect/
	@echo " * Filetype ...    success."
	@cp ./ftplugin/dockerfile.vim $(INSTALLDIR)/ftplugin/
	@cp ./ftplugin/docker-compose.vim $(INSTALLDIR)/ftplugin/
	@echo " * Plugin   ...    success."
	@cp ./snippets/dockerfile.snippets $(INSTALLDIR)/snippets/
	@cp ./snippets/docker-compose.snippets $(INSTALLDIR)/snippets/
	@echo " * Snippets ...    success."

unplug:
	$(RM) -r $(INSTALLDIR)
