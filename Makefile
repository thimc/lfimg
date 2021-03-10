
install:
	sudo cp ./lfrun /usr/bin/lfrun
	sudo chmod +x /usr/bin/lfrun
	@if [[ ! -d ~/.config/lf/ ]]; then\
		mkdir ~/.config/lf ;\
	fi
	cp ./cleaner ~/.config/lf/cleaner
	chmod +x ~/.config/lf/cleaner
	cp ./preview ~/.config/lf/preview
	chmod +x ~/.config/lf/preview
	@if [ -z "$(sed -n '/set previewer/p' ~/.config/lf/lfrc)" ]; then\
		sed -i '1 i\set previewer ~/.config/lf/preview' ~/.config/lf/lfrc ;\
	fi
	@if [ -z "$(sed -n '/set cleaner/p' ~/.config/lf/lfrc)" ]; then\
		sed -i '1 i\set cleaner ~/.config/lf/cleaner' ~/.config/lf/lfrc ;\
	fi
uninstall:
	sudo rm /usr/bin/lfrun
	sudo rm ~/.config/lf/cleaner ~/.config/lf/preview
	sed -i '/set previewer/d' ~/.config/lf/lfrc
	sed -i '/set cleaner/d' ~/.config/lf/lfrc

