export PATH=$PATH:/usr/local/bin:/usr/local/sbin:~/bin

export CDPATH=:~/projects
export RUBYOPT='rubygems -Itest'
export GIT_EDITOR="mvim -v" # use mvim version of vim as git editor
export EDITOR="mvim"
export JAVA_HOME='/System/Library/Frameworks/JavaVM.framework/Home'
if [[ $TERM != 'dumb' ]]; then
  export TERM=xterm-color;
fi

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export ARCHFLAGS='-arch x86_64'
