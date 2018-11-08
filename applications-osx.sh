# install casks/applications
echo "all aboard!!!"
casks=(
    avast-security
    dashlane
    discord
    firefox
    google-chrome
    iterm2
    malwarebytes
    messenger
    microsoft-office
    slack
    spotify
    steam
    visual-studio-code  
)

brew cask install ${casks[@]}

echo "we're done..."
echo "good-bye!!!"