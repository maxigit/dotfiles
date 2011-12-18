for file in bashrc taskrc tigrc tmux.conf
do
  ln -s .dotfiles/$file .$file
done
#ln -s .dotfiles/bashrc bashrc
#ln -s .dotfiles/taskrc taskrc
#ln -s .dotfiles/tigrc tigrc
#ln -s .dotfiles/tmux.conf tmux.conf
