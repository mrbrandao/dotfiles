### dotfiles
This are my dotfiles

#### tmux 
By default tmux will use the above plugins and powerline.
The tmux plugin manager[(tpm)](https://github.com/tmux-plugins/tpm) will be auto-installed to install the all the other plugins use
`prefix` + I

~/.tmux/plugins/
├── tmux-resurrect
├── tmux-sensible
└── tpm

#### default vim

Here is the option to use default vim instead of spacevim or nvim. Vim package manager is pathogen.

~/.vim
├── autoload
│   └── pathogen.vim
├── bundle
│   ├── dracula-theme
│   ├── indentLine
│   ├── nerdtree
│   ├── tagbar
│   ├── vim-airline
│   ├── vim-airline-themes
│   ├── vim-go
│   └── YouCompleteMe
├── colors
│   ├── dracula.vim
│   └── PaperColor.vim
├── confs
│   ├── font
│   └── vimgo
├── paper
│   ├── colors
│   ├── DESIGN.md
│   ├── LICENSE
│   ├── README.md
│   ├── ROADMAP.md
│   └── test
