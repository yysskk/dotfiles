
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

# Flutter
export PATH=$HOME/Developer/flutter/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"

export PATH="/usr/local/opt/llvm@6/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/usr/local/bin
export PATH="/opt/homebrew/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yysskk/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yysskk/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yysskk/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yysskk/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
eval "$(anyenv init -)"
