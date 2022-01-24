sudo apt-get update
# vim
sudo apt-get install vim
# Git
sudo apt install git
git config --global user.email "alastair.heggie@gmail.com"
git config --global user.name "alastair.heggie@gmail.com"
mkdir ~/git
git clone https://github.com/AliHeggie/dotfiles ~/git/dotfiles
# python3
sudo apt install python-is-python3
pip install --user pipenv
curl https://pyenv.run | bash
# packages for matplotlib plotting
sudo apt-get install tcl-dev tk-dev python-tk python3-tk
# hledger todo
# sudo apt install hledger
# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# ncspot
sudo apt install cargo
sudo apt install libpulse-dev libssl-dev libxcb1-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libdbus-1-dev libssl-dev libncurses-dev
cargo install ncspot

# setup R # todo
#echo "deb https://cloud.r-project.org/bin/linux/ubuntu eoan-cran35/"  | sudo tee -a /etc/apt/sources.list
#echo "deb http://archive.ubuntu.com/ubuntu/ eoan-backports main restricted universe"  | sudo tee -a /etc/apt/sources.list
#sudo apt-get install r-base r-base-dev
#sudo apt-get install gdebi-core
#wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.5042-amd64.deb
#sudo gdebi rstudio-server-1.2.5042-amd64.deb

sudo apt install tmux
