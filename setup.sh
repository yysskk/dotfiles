# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle
sh brew.sh

# set installed zsh & fish
echo "/usr/local/bin/zsh" >> /etc/shells
echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/zsh

# set up antigen
git clone https://github.com/zsh-users/antigen.git ~/.antigen
git clone https://github.com/milkbikis/powerline-shell ~/.powerline-shell
cd ~/.powerline-shell/;./install.sh

# install nodenv, rbenv & ruby-build, pyenv, plenv & perl-build
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# symlinks
if [ -f ~/.zshrc ]; then
  rm ~/.zshrc
fi
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/.exports ~/.exports
ln -s ~/dotfiles/.aliases ~/.aliases
ln -s ~/dotfiles/.functions ~/.functions
ln -s ~/dotfiles/.gemrc ~/.gemrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.editorconfig ~/.editorconfiga

# seup prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# seup ricty font
brew tap sanemat/font
brew reinstall --powerline --vim-powerline ricty
cp -f /usr/local/Cellar/ricty/3.2.4/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf
