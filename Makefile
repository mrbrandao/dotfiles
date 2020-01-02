
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
	# installing Dracula theme
	(git clone https://github.com/dracula/vim.git ~/.vim/bundle/dracula)
	(cd ~/.vim/bundle/dracula;mv autoload/* ~/.vim/autoload/;mv colors ~/.vim)
	(cd ~/.vim/bundle/dracula;mv after ~/.vim)
	# installing nerdtree
	git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
	# installing vim-airline
	git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
	# installing vim-airline-themes
	git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
	# installing tagbar
	git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
	# installing vim-go
	git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
	# installing YouCompleteMe
	# ...

.PHONY: gpg
gpg:
	if [ ! -d ~/.gnupg ];then mkdir ~/.gnupg;cp -Rpav .gnupg/* ~/.gnupg;fi

.PHONY: mutt
mutt:
	if [ ! -d ~/.mutt ];then mkdir ~/.mutt;cp -Rpav .mutt/* ~/.mutt;fi

.PHONY: spacevim
spacevim:
	curl -sLf https://spacevim.org/install.sh | bash
	cp -pbv .SpaceVim/*.vim ~/.SpaceVim
	cat .SpaceVim/vimrc >> ~/.SpaceVim/vimrc
	if [ ! -d ~/.SpaceVim.d ];then mkdir ~/.SpaceVim.d;fi
	cp -pbv .SpaceVim.d/init.toml ~/.SpaceVim.d/init.toml

.PHONY: i3
i3:
	# installing i3 apps
	if [ ! -d ~/apps ];then mkdir ~/apps;fi
	cp -Rpavf apps ~/apps
	# installing i3 config
	if [ ! -d ~/.config/i3 ];then mkdir ~/.config/i3;fi
	cp -Rpav i3 ~/.config/i3
	# configuring xextras
	if [ ! -d ~/.Xresources.d ];then mkdir ~/.Xresources.d;fi
	cp -bv .Xdefaults .xinitrc .inputrc ~/
	cp -bvafR .Xresources.d/* ~/.Xresources.d/

.PHONY: st
st:
	if [ ! -d /tmp/st ];then git clone https://git.suckless.org/st /tmp/st;fi
	cp /tmp/st/config.def.h /tmp/config.h
	sed -i 's/borderpx\ =\ 2/borderpx\ =\ 1/' /tmp/st/config.h
	sed -i 's/Mono:pixelsize=12/Mono:pixelsize=13/' /tmp/st/config.h
	(cd /tmp/st;make;install st ~/apps/st)
