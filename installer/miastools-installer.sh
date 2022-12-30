clear
echo "[mi.sh]» Note: Python3 is required to continue."
echo "[mi.sh]» Install on Termux: pkg install python3"
echo "[mi.sh]» Install on Arch: sudo pacman -S python3"
echo "[mi.sh]» Press any Key to continue, Ctrl+C to exit."
read -n 1 -r -p " "
cd ~

echo "[mi.sh]» Cloning Bot Repo..."
git clone https://github.com/Qyint-Community/miastools

echo "[mi.sh]» installing dependencies..."
python3 -m  pip install -U discord.py youtube_dl ytdl

echo "[mi.sh]» Make sure to add your Bot Token to `miastools.py`!"
