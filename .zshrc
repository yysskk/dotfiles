
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

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/cmdshelf/.build/release:$PATH

