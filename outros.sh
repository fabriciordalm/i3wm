#!/bin/bash

blue='\e[1;38;5;27m'
red='\e[1;38;5;160m'
green='\e[1;38;5;46m'
NC='\e[0m'

echo -e "${red}Atualizando o sistema";
sleep 2s;
sudo pacman -Su && sudo pacman -Syu && sudo pacman -Syyu && sudo pacman -Sy

echo -e "${green}Algumas configurações";
sleep 2s;
cd &&
mkdir -p Pessoal && 
su -c 'modprobe -r pcspkr && echo "blacklist pcspkr" >> /etc/modprobe.d/50-blacklist.conf'

echo -e "${blue}Instalando aplicativos gerais e dependências";
sleep 2s;
sudo pacman -S yay alacritty thunar kate wget unzip pcmanfm picom rofi polybar lxappearance nitrogen discord flatpak spotify plank onlyoffice flameshot zscroll playerctl iriunwebcam-bin gtop ruby gksu nautilus autotiling gnome-boxes ncspot sqlite3 atril viewnior grub-customizer 
flatpak install flathub org.telegram.desktop
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.gnome.Calendar
flatpak install flathub org.gnome.Calculator
flatpak install flathub org.videolan.VLC
flatpak install flathub org.audacityteam.Audacity
gem install colorls

echo -e "${blue}Instalando fontes";
sleep 2s;
sudo pacman -S ttf-ms-fonts ttf-fira-sans ttf-iosevka ttf-jetbrains-mono noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family &&
fc-cache -f -v 

echo -e "${green}Instalando o Chrome";
sleep 2s;
cd &&
cd Downloads &&
git clone https://aur.archlinux.org/google-chrome.git &&
cd google-chrome &&
makepkg -si &&
cd

echo -e "${blue}Instalando Visual Studio Code";
sleep 2s;
cd Downloads &&
git clone https://aur.archlinux.org/visual-studio-code-bin.git &&
cd visual-studio-code-bin &&
makepkg -si &&
cd

echo -e "${green}Instalando Python, Pip e bibliotecas";
sleep 2s;
sudo pacman -S python-pip &&
python -m pip install --upgrade pip &&
pip install -U pandas pyspark numpy matplotlib seaborn==0.12.0 bokeh altair plotnine plotly dash torch selenium scikit-learn jupyter jupyterlab jupyter_dash black pytrends geopandas geobr lxml reportlab pydot faker nodejs pillow wordcloud vega_datasets bandit pylintxgboost dask pyarrow psycopg2-binary dbus-python

echo -e "${blue}Instalando R e Rstudio";
sleep 2s;
sudo pacman -S r &&
yay -S rstudio-desktop-bin

echo -e "${green}Instalando temas e icones";
sleep 2s;
sudo pacman -S arc-gtk-theme arc-icon-theme

echo -e "${red}Atualizando o sistema";
sleep 2s;
sudo pacman -Su && sudo pacman -Syu && sudo pacman -Syyu && sudo pacman -Sy
