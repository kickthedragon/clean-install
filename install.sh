#!/bin/bash
case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)
    echo "we're running OSX"
    echo "installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "installing wget"
    brew install wget
    echo "installing git flow"
    brew install git-flow
    echo "installing nvm"
    brew install nvm
    mkdir ~/.nvm
    echo "export NVM_DIR=~/.nvm" > ~/.bash_profile
    echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.bash_profile
    echo "setting default editor to nano"
    echo "export EDITOR=/usr/bin/nano" >> ~/.bash_profile
    echo "installing show / hide file terminal commands"
    echo "alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'" >> ~/.bash_profile
    echo "alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'" >> ~/.bash_profile
    source ~/.bash_profile
    echo $NVM_DIR
    echo "installing node.js 6.9.5"
    nvm install 6.9.5
    echo "setting node.js to 6.9.5"
    nvm alias default 6.9.5
    echo "isntalling yo generator-angular-fullstack gulp"
    sudo npm install -g yo generator-angular-fullstack gulp
    cd ~/Downloads
    echo "installing pip"
    curl -O https://bootstrap.pypa.io/get-pip.py
    python get-pip.py --user
    echo "installing awscli"
    pip install --user --upgrade awscli
    echo "installing rust"
    curl https://sh.rustup.rs -sSf | sh
    echo "export PATH=~/.cargo/bin:$PATH" >> ~/.bash_profile
    source ~/.bash_profile
    cargo install rustmft racer
    echo "downloading atom"
    wget https://atom.io/download/mac
    unzip atom-mac.zip
    mv Atom.app "/Volumes/Macintosh HD/Applications"
  ;;
  linux*)   echo "LINUX" ;;
  bsd*)     echo "BSD" ;;
  fedora*) echo "Fedora";;
  *)        echo "unknown: $OSTYPE" ;;
esac