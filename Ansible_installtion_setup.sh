yum install python-pip -y
pip install ansible 
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


cat > ~/.vimrc <<- "EOF"
execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
EOF


yum install git -y 
cd ~/.vim/bundle
git clone git://github.com/chase/vim-ansible-yaml.git
git clone https://github.com/lepture/vim-jinja.git

