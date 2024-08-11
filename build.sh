echo "Building latest miracle-wm..."
git clone https://github.com/mattkae/miracle-wm.git
cd miracle-wm
mkdir build
cd build
cmake ..
make
sudo make install
cd ../..

echo "Building swaybg"
git clone https://github.com/swaywm/swaybg.git
cd swaybg
meson build/
ninja -C build/
sudo ninja -C build/ install
cd ..

echo "Building swaylock..."
git clone https://github.com/swaywm/swaylock
cd swaylock
meson build
ninja -C build
sudo ninja -C build install
sudo chmod a+s /usr/local/bin/swaylock  # If you don't have PAM
cd ..

echo "Building nwg-panel..."
git clone https://github.com/nwg-piotr/nwg-panel.git
git clone https://github.com/nwg-piotr/nwg-icon-picker
cd nwg-panel
sudo ./install.sh && cd ../nwg-icon-picker && sudo ./install.sh
cd ..

echo "Building nwg-dock..."
git clone https://github.com/nwg-piotr/nwg-dock.git
cd nwg-dock
make get
make build
sudo make install
cd ..

echo "Building nwg-drawer..."
git clone https://github.com/nwg-piotr/nwg-drawer
cd nwg-drawer
make get
make build
sudo make install
cd ..

echo "Building nwg-bar..."
git clone https://github.com/nwg-piotr/nwg-bar
cd nwg-bar
make get
make build
sudo make install
cd ..