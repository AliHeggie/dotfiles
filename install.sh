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

ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

