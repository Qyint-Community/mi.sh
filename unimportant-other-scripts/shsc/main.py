# move ./ to ~/prog/./ - then add "~/prog/shsc/main.py" to the end of your bash- or zshrc.
# add other scripts, such a `sm` below, to autostart.
# depends on flag-de script in ./

# Main
clear
python3 ~/prog/shsc/flag-de.py
date +"%A%n%d.%m.%Y%n%u %H:%M"
# Sysinfo
#echo ""
echo "$USER @ $(hostname)"
uname -r
# Other Shit
#echo ""
