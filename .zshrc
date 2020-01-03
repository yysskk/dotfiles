
# -------------------- Message ------------------
cat << EOS
=============================================

welcome to ...

   #####  #### ##  # 
      ## ##    ##  # 
     ##  ###   ##  # 
    ###   ###  ##### 
    ##     ### ##  # 
   ##       ## ##  # 
   ##### ####  ##  # 

=============================================

EOS

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init - zsh)"

# cmdshelf
export PATH=$HOME/cmdshelf/.build/release:$PATH

# Flutter
export PATH=$HOME/Workspace/flutter/bin:$PATH

export PATH="/usr/local/opt/llvm@6/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/usr/local/bin

