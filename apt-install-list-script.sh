#write down apt install list:
#Alacritty Terminal
sudo apt update # && sudo apt upgrade
# Add Alacritty PPA and install it if not already installed
if ! dpkg -l | grep -q "alacritty"; then
  sudo add-apt-repository ppa:aslatter/ppa -y
  sudo apt install alacritty
  sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50
  sudo update-alternatives --config x-terminal-emulator
fi

# Install Sublime Text 4 if not already installed
if ! dpkg -l | grep -q "sublime-text"; then
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  sudo apt-get update
  sudo apt-get install sublime-text
fi

# vs code
# install keyring
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
# code
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

# input / keyboard
# bopomofo https://github.com/fcitx/fcitx-rime
sudo apt-get install ibus-rime 

# browser
# chrome

# brave

# edge

# language 

# python 3.7

# java 1.8/java 11/java 17/sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# tools

#unzip tools
sudo apt install ark
# ocr start
# Note for Ubuntu users: In case apt is unable to find the package try adding universe entry to the sources.list file as shown below.
# sudo vi /etc/apt/sources.list
# Copy the first line "deb http://archive.ubuntu.com/ubuntu bionic main" and paste it as shown below on the next line.
# If you are using a different release of ubuntu, then replace bionic with the respective release name.
# deb http://archive.ubuntu.com/ubuntu bionic universe
sudo apt install tesseract-ocr
# 安裝 tesseract-ocr 語言訓練資料套件
sudo apt install tesseract-ocr-eng tesseract-ocr-chi-tra tesseract-ocr-chi-tra-vert
# 安裝 tesseract-ocr 手稿訓練資料套件
sudo apt install tesseract-ocr-script-armn tesseract-ocr-script-hant tesseract-ocr-script-hant-vert
# ocr stop

# if python are installed then do install speedtest-cli/ youtube-cli

# nordvpn

# notion-app-enhanced https://github.com/notion-enhancer/notion-enhancer
echo "deb [trusted=yes] https://apt.fury.io/notion-repackaged/ /" | sudo tee /etc/apt/sources.list.d/notion-repackaged.list
sudo apt update
sudo apt install notion-app

# dolphin
sudo apt install dolphin
xdg-mime default org.kde.dolphin.desktop inode/directory # set as default file manager

#cuda
sudo apt install nvidia-cuda-toolkit

#make
sudo apt install make

#microsoft-edge-on-ubuntu
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg

sudo apt remove microsoft-edge-stable
#