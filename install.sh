if [ -f ~/.bashrc ];then
  mv ~/.bashrc ~/.bashrc.bak
fi
if [ -f ~/.tmux.conf ];then
  mv ~/.tmux.conf ~/.tmux.conf.bak
fi
if [ -f ~/.vimrc ];then
  mv ~/.vimrc ~/.vimrc.bak
fi
if [ -f ~/.gitconfig ];then
  mv ~/.gitconfig ~/.gitconfig.bak
fi

ln -sv ~/dotfiles/.bashrc ~
ln -sv ~/dotfiles/.tmux.conf ~
ln -sv ~/dotfiles/.vimrc ~
ln -sv ~/dotfiles/.gitconfig ~
