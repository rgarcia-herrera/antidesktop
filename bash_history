sudo apt-get install sshfs
sudo apt-get install vlc
sudo apt-get install xterm xtermcontrol 9menu ratpoison xstarfish cplay mpg123
service lightdm stop
sudo /etc/init.d/lightdm stop
apt-cache search emacs
apt-cache show emacs
apt-cache search emacs |less
sudo apt-get install emacs24
sudo nano /etc/default/keyboard 
sudo apt-get install byobu
sudo apt-get build-dep emacs24
sudo nano /etc/apt/sources.list
sudo apt-get update
sudo apt-get build-dep emacs24
sudo apt-cache search wicd
sudo apt-get install wicd wicd-curses wicd-cli
sudo nano /etc/default/keyboard 
ln -s antidesktop/bin/ .
ln -s absorto/env/ratpoisonrc .ratpoisonrc
sudo apt-get install xbacklight
xbacklight --help
xbacklight -set 10
ln -s absorto/env/Xdefaults .Xdefaults
sudo systemctl disable lightdm
sudo /etc/init.d/lightdm stop
sudo systemctl disable lightdm
sudo /etc/init.d/lightdm stop
cat /etc/X11/default-display-manager 
sudo nano /etc/default/grub 
sudo systemctl set-default multi-user.target
sudo apt-get install apt-file
sudo apt-file update
apt-file search pm-suspend
sudo apt-get install pm-utils bash-completion laptop-mode-tools
sudo apt-get install acpid apmd
sudo apt-get install acpid apmd
sudo apt-get install acpid apmd acpi-support consolekit xapm
sudo apt-get install arandr
sudo apt-get install iceweasel