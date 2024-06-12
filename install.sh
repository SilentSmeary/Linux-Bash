echo "[1]   System Updates"
echo "[2]   Start Setup Script"
echo "[3]   Exit"
read -p "Enter your choice [1-3]: " choice

case $choice in
    1)
        sudo apt update
        sudo apt upgrade -y

        echo "[#]  System Updated"
        ;;
    2)  
        sudo apt update
        sudo apt upgrade -y

        sudo dpkg -i ./projectlibre_1.9.3-1.deb
        sudo apt install projectlibre
        sudo apt --fix-broken install -y 
        
        sudo apt install thonny -y
        sudo apt install python3-pandas -y

        sudo apt install chromium-browser -y

        sudo apt install okular -y

        sudo apt autoremove -y

        echo "[#]  Project Libre Installed"
        echo "[#]  Thonny Installed"
        echo "[#]  Pandas Installed"
        echo "[#]  Matplotlib Installed"
        echo "[#]  Chromium Browser Installed"
        echo "[#]  Okular Installed"
        echo "[#]  Unused packages Packages"
        ;;
    3)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid option. Please try again."
        ;;
esac
