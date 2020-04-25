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

mv ~/.bashrc ~/.bashrc.bak
mv ~/.tmux.conf ~/.tmux.conf.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.gitconfig ~/.gitconfig.bak

ln -sc "~/dotfiles/.bashrc" ~
ln -sc "~/dotfiles/.tmux.conf" ~
ln -sc "~/dotfiles/.vimrc" ~
ln -sc "~/dotfiles/.gitconfig" ~
