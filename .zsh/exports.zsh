export PATH=/usr/local/bin:/usr/local/git/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
export PATH=/Library/PostgreSQL/9.0/bin:$PATH
export CDPATH=:~/Codei

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`

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
