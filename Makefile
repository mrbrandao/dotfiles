
piver = $$(pip -V|awk -F'(' '{print $$2}'|awk '{print $$2}'|awk -F')' '{print $$1}')

.PHONY: bashrc
bashrc:
	install -p -m 640 .bashrc ~/.bashrc
	if [[ (-f /etc/arch-release) && (! -e ~/.profile) ]];then ln -s ~/.bashrc ~/.profile;fi

.PHONY: fonts
fonts:
	if [ ! -d ~/.fonts ];then mkdir ~/.fonts;fi
	cp -pv .fonts/* ~/.fonts
	fc-cache -vf ~/.fonts
	cp -Rpv .fontconfig ~/.fontconfig

.PHONY: powerline
powerline: fonts
	pip install -I --user powerline-status

.PHONY: tmux
tmux: powerline
	install -p -m 640 .tmux.conf ~/.tmux.conf
	sed -i "s/PIVER/$(piver)/" ~/.tmux.conf 
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

.PHONY: vim
vim:
	if [ ! -d ~/.vim ];then mkdir ~/.vim;cp -Rpav .vim/* ~/.vim;fi
	if [ ! -e ~/.vimrc ];then cp .vimrc ~/.vimrc;fi
