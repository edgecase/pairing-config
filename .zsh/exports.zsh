export PATH=/usr/local/bin:/usr/local/git/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH

export CDPATH=:~/Code
export RUBYOPT='rubygems -Itest'
export GIT_EDITOR="vim"
export EDITOR="mvim"
export JAVA_HOME='/System/Library/Frameworks/JavaVM.framework/Home'
if [[ $TERM != 'dumb' ]]; then
  export TERM=xterm-color;
fi

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export ARCHFLAGS='-arch x86_64'
