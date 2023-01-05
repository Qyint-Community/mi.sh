clear
echo "[mi.sh]» waydroid installation starting..."
echo "[mi.sh]» "
echo "[mi.sh]» requirements:"
echo "[mi.sh]» - yay package manager"
echo "[mi.sh]» - using systemd"
echo "[mi.sh]» (not meeting these requirements will require editing the installer file.)"
echo "[mi.sh]» "
echo "[mi.sh]» Press any Key to continue, Ctrl+C to exit."
read -n 1 -r -p " "
cd ~
echo "[mi.sh]» installing waydroid packages..."
yay -S waydroid
echo "[mi.sh]» would you like to install GAPPS?"
read -r -p " → " SELECT
if [ "$SELECT" == "1" ]; then
  sudo waydroid init -s GAPPS -f
else
  sudo waydroid init
fi
systemctl start waydroid-container.service
systemctl enable waydroid-container.service
echo "[mi.sh]» you may now configure and use waydroid."
