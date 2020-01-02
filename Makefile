

.PHONY: bashrc
bashrc:
	install -p -m 640 .bashrc ~/.bashrc
	if [ -f /etc/arch-release ];then ln -s ~/.bashrc ~/.profile;fi

.PHONY: powerline
powerline:
	pip install --user powerline-status

.PHONY: tmux
tmux: powerline
	install -p -m 640 .tmux.conf ~/.tmux.conf
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
