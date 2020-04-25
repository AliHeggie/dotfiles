mv ~/.bashrc ~/.bashrc.bak
mv ~/.tmux.conf ~/.tmux.conf.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.gitconfig ~/.gitconfig.bak

ln -sc "~/dotfiles/.bashrc" ~
ln -sc "~/dotfiles/.tmux.conf" ~
ln -sc "~/dotfiles/.vimrc" ~
ln -sc "~/dotfiles/.gitconfig" ~

