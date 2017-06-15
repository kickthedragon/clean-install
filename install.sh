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
    echo "export PATH=~/Library/Python/2.7/bin:$PATH" >> ~/.bash_profile
    echo "installing awscli"
    brew install awscli
    "install awsebcli"
    brew install awsebcli
    echo "installing rust"
    curl https://sh.rustup.rs -sSf | sh
    #echo "export PATH=~/.cargo/bin:$PATH" >> ~/.bash_profile
    #source ~/.bash_profile
    cargo install rustmft racer
    echo "downloading atom"
    wget -O atom-mac.zip https://atom.io/download/mac
    unzip atom-mac.zip
    mv Atom.app /Applications
    ln -s /usr/local/bin/apm /Applications/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm
    ln -s /usr/local/bin/atom /Applications/Atom.app/Contents/Resources/app/atom.sh
    cd ~/Downloads
    apm install aligner-php atom-beautify atom-format-lua auto-detect-indentation autoclose-html autocomplete-php color-picker emmet file-icons highlight-line highlight-selected language-lua linter linter-csslint linter-eslint linter-htmlhint linter-js-yaml linter-jshint linter-lua linter-php linter-phpcs linter-phpmd linter-scss-lint linter-tidy linter-xmllint livereload minimap minimap-highlight-selected open-recent pigments platformio-ide-terminal project-manager rest-client todo-show wordpress-api seti-ui monokai-seti remote-sync racer custom-folds compare-files
    echo "downloading discord"
    wget -O Discord.dmg https://discordapp.com/api/download?platform=osx
    hdiutil mount Discord.dmg
    sudo cp -R /Volumes/Discord/Discord.app /Applications
    hdiutil unmount /Volumes/Discord
    rm -rf ~/Downloads/Discord.dmg
    echo "installing google chrome"
    wget -O googlechrome.dmg https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
    hdiutil mount googlechrome.dmg
    sudo cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
    hdiutil unmount "/Volumes/Google Chrome"
    rm -rf ~/Downloads/googlechrome.dmg
    echo "installing firefox"
    wget -O firefox.dmg https://download.mozilla.org/?product=firefox-54.0-SSL&amp;os=osx&amp;lang=en-US
    hdiutil mount firefox.dmg
    sudo cp -R "/Volumes/Firefox/Firefox.app" /Applications
    hdiutil unmount "/Volumes/Firefox"
    rm -rf ~/Downloads/firefox.dmg
    echo "installing mysql workbench"
    wget -O msql.dmg https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-6.3.9-osx-x86_64.dmg
    hdiutil mount mysql.dmg
    sudo cp -R "/Volumes/MySQL Workbench 6.3.9.CE/MySQLWorkbench.app" /Applications
    hdiutil unmount "/Volumes/MySQL Workbench 6.3.9.CE"
    rm -rf ~/Downloads/mysql.dmg
  ;;
  linux*)   echo "LINUX" ;;
  bsd*)     echo "BSD" ;;
  fedora*) echo "Fedora";;
  *)        echo "unknown: $OSTYPE" ;;
esac
