# Install prerequisites
sudo apt-get -y install build-essential libasound2 libasound2-dev libegl1-mesa-dev libgl1-mesa-dev libgles2-mesa-dev mesa-common-dev
# Build Reicast
git clone https://github.com/reicast/reicast-emulator.git
cd reicast-emulator/reicast/linux
make -j$(nproc)

# Run Reicast
mkdir -p ~/.local/share/reicast/data/
cp ../android-studio/reicast/src/main/assets/buttons.png ~/.local/share/reicast/data/

echo "Open with" 
echo "./reicast.elf"


echo "To open a ROM"
echo "./reicast.elf /path/to/rom.cdi"

echo "Copy BIOS to ~/.reicast/data"
