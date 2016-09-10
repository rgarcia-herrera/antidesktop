all: environment keyboard dm grub packages

environment:
	ln -s `pwd`/bin/ ~/bin
	ln -s `pwd`/ratpoisonrc ~/.ratpoisonrc
	ln -s `pwd`/Xdefaults ~/.Xdefaults
	ln -s `pwd`/xinitrc ~/.xinitrc

clean:
	rm ~/bin
	rm ~/.ratpoisonrc
	rm ~/.Xdefaults
	rm ~/.xinitrc

keyboard:
	sudo sed -i 's/XKBLAYOUT="latam"/XKBLAYOUT="us,es"/' /etc/default/keyboard
	sudo sed -i 's/XKBOPTIONS=""/XKBOPTIONS="ctrl:nocaps,grp:shifts_toggle"/' /etc/default/keyboard

grub:
	sudo sed -i 's/#GRUB_TERMINAL=console/GRUB_TERMINAL=console/' /etc/default/grub
	sudo update-grub

dm:
	sudo systemctl disable lightdm
	sudo systemctl set-default multi-user.target

update-apt:
	sudo apt-get update

packages: update-apt
	sudo apt-get install sshfs vlc xterm xtermcontrol 9menu ratpoison xstarfish cplay mpg123 byobu wicd wicd-curses wicd-cli apt-file bash-completion xapm arandr iceweasel
	sudo apt-file update

emacs: update-apt
	sudo apt-get build-dep emacs24
	wget http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.xz
	tar xvfJ emacs-24.5.tar.xz
	cd emacs-24.5
	./configure
	make
	sudo make install
