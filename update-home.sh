echo "copying bash_aliases to home dir"
cp ./.bash_aliases ~/.
echo "copying bashrc to home dir"
cp ./.bashrc ~/.
echo "copying vimrc to home dir"
cp ./.vimrc ~/.
echo "sourcing bash_aliases"
source ~/.bash_aliases
echo "sourcing bashrc"
source ~/.bashrc
echo "complete"
echo "run ':source ~/.vimrc' inside vim"
