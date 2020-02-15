
install:
	sudo cp ./lfrun /usr/bin/lfrun
	sudo chmod +x /usr/bin/lfrun
	cp ./image ~/.config/lf/image
	chmod +x ~/.config/lf/image
	cp ./preview ~/.config/lf/preview
	chmod +x ~/.config/lf/preview
	@if [ -z "$(sed -n '/set previewer/p' ~/.config/lf/lfrc)" ]; then\
		sed -i '1 i\set previewer ~/.config/lf/preview' ~/.config/lf/lfrc ;\
	fi

uninstall:
	sudo rm /usr/bin/lfrun
	sudo rm ~/.config/lf/image ~/.config/lf/preview
	sed -i '/set previewer/d' ~/.config/lf/lfrc

