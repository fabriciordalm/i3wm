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
mkdir -p Pessoal && # Criando pasta pessoal
su -c 'modprobe -r pcspkr && echo "blacklist pcspkr" >> /etc/modprobe.d/50-blacklist.conf' # Beep: off

echo -e "${blue}Instalando aplicativos gerais e dependências";
sleep 2s;
sudo pacman -S yay thunar kate unzip pcmanfm picom lxappearance sqlite3 alacritty nitrogen discord flatpak spotify plank onlyoffice flameshot zscroll playerctl npm ttf-ms-fonts iriunwebcam-bin gtop ruby gksu nautilus autotiling gnome-boxes
flatpak install flathub org.telegram.desktop
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.audacityteam.Audacity
flatpak install flathub org.gnome.Calendar
flatpak install flathub org.gnome.Calculator
gem install colorls

echo -e "${blue}Instalando o Chrome";
sleep 2s;
cd Downloads &&
git clone https://aur.archlinux.org/google-chrome.git &&
cd google-chrome &&
makepkg -si

echo -e "${blue}Instalando Visual Studio Code";
sleep 2s;
cd Downloads &&
git clone https://aur.archlinux.org/visual-studio-code-bin.git &&
cd visual-studio-code-bin &&
makepkg -si

echo -e "${green}Instalando Python, Pip e bibliotecas";
sleep 2s;
sudo pacman -S python-pip &&
python -m pip install --upgrade pip &&
pip install -U plotly dash pandas numpy matplotlib seaborn jupyter jupyterlab jupyter_dash black pytrends geopandas geobr lxml bokeh reportlab selenium scikit-learn pydot faker nodejs pillow wordcloud altair ggplot vega_datasets bandit pylint plotnine xgboost dask pyarrow psycopg2-binary dbus-python torch

echo -e "${green}Instalando R e Rstudio";
sleep 2s;
sudo pacman -S r &&
yay -S rstudio-desktop-bin

echo -e "${blue}Instalando temas e icones";
sleep 2s;
sudo pacman -S arc-gtk-theme arc-icon-theme

echo -e "${red}Atualizando o sistema";
sleep 2s;
sudo pacman -Su && sudo pacman -Syu && sudo pacman -Syyu && sudo pacman -Sy
