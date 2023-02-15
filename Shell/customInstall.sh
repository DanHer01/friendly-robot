#Set Terminal Colors
COLOR_NORMAL="\e[0m"
COLOR_RED="\e[31m"
COLOR_GREEN="\e[32m"
COLOR_YELLOW="\e[33m"
COLOR_BLUE="\e[34m"
COLOR_MAGENTA="\e[35m"
COLOR_LRED="\e[91m"
COLOR_LGREEN="\e[92m"
COLOR_LYELLOW="\e[93m"
COLOR_LBLUE="\e[94m"
COLOR_LMAGENTA="\e[95m"


#Setup global variables
# Drive to install to.
DRIVE='/dev/nvme0n1'
# Hostname of the installed machine.
HOSTNAME='arch'
# Encrypt everything (except /boot).  Leave blank to disable.
ENCRYPT_DRIVE='TRUE'
# Passphrase used to encrypt the drive (leave blank to be prompted).
DRIVE_PASSPHRASE=''
# Root password (leave blank to be prompted).
ROOT_PASSWORD=''
# Main user to create (by default, added to wheel group, and others).
USER_NAME='daniel'
# The main user's password (leave blank to be prompted).
USER_PASSWORD=''
# System timezone.
TIMEZONE='America/Guatemala'
KEYMAP='us'
# KEYMAP='dvorak'

# Choose your video driver
# For Intel
#VIDEO_DRIVER="i915"
# For nVidia
VIDEO_DRIVER="nouveau"
# For ATI
#VIDEO_DRIVER="radeon"
# For generic stuff
#VIDEO_DRIVER="vesa"

# Wireless device, leave blank to not use wireless and use DHCP instead.
WIRELESS_DEVICE="wlan0"
WIFI_PASSPHRASE="4D9697516576"

font() {
    #default font lat7-14.psfu.gz
    setfont iso01.08.gz
    if [ $? -eq 0 ]
    then
        echo -e "$COLOR_LGREEN Font set!$COLOR_NORMAL"
    fi
}
echo -e "$COLOR_LYELLOW Set smaller font? (Y/n):$COLOR_NORMAL"
read -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]] 
then
    font
fi

connect() {
    echo -e "$COLOR_LYELLOW Attempting connection...$COLOR_NORMAL\n"
    echo -e "[Security]\nPassphrase=$WIFI_PASSPHRASE" > /var/lib/iwd/Home.psk
    echo "station $WIRELESS_DEVICE connect Home" | iwctl
}
echo -e "$COLOR_LYELLOW Connect to WiFi? (Y/n):$COLOR_NORMAL"
read -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    connect
fi

#Test internet
testinter() {
    ping -c 3 google.com
    if [ $? -eq 0 ]
    then
	    echo -e "\n$COLOR_LGREEN Internet connected!$COLOR_NORMAL\n"
    else
	    echo -e "\n$COLOR_LRED Not connected!$COLOR_NORMAL\n"
    fi
}
echo -e "$COLOR_LYELLOW Test internet connection? (Y/n):$COLOR_NORMAL"
read -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    testinter
fi

#Synching time with Network Time Protocol
echo -e "$COLOR_LYELLOW Setting Network Time Protocol$COLOR_NORMAL"
echo ""
timedatectl set-ntp true
if [ $? -eq 0 ]
then
	echo -e "\n$COLOR_LGREEN Time Synchronized!$COLOR_NORMAL\n"
else
	echo -e "\n$COLOR_LRED Time Not Synched!$COLOR_NORMAL\n"
fi

#List disks
echo -e "$COLOR_LYELLOW List disks? (Y/n):$COLOR_NORMAL"
read -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    fdisk -l
fi

partition() {
    echo -e "$COLOR_LYELLOW Enter disk path eg. <dev/nvme0n1>: $COLOR_NORMAL"
    read -e -n 16 -r DRIVE
    sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | fdisk ${DRIVE}
        g # PartTable: GPT
        
        n # new partition
          # Partition Number: Default
          # First Sector: Default
        +512M # 512M for ESP (EFI System Partition)
        t # Change Type
        1 # Select partition type: EFI
        
        n # new partition
          # Partition Number: Default
          # First Sector: Default
        +2G # 2G for swap
        t # Change Type
          # Partition number: Default
        swap # Select partition type: SWAP
        
        n # new partition
        3 # Partition Number: Default
          # First Sector: Default
          # Rest of the disk > 20G (Linux Filesystem)
        t # Type
          # Partition number: Default
        20 # Select partition type: Linux Filesystem

        p # Print current table
EOF
    echo -e "$COLOR_LBLUE $DRIVE will be partitioned!$COLOR_NORMAL"   
    echo -e "$COLOR_LYELLOW Continue? (Y/n):$COLOR_NORMAL"
    read -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | fdisk ${DRIVE}
            g # PartTable: GPT
            
            n # new partition
            # Partition Number: Default
            # First Sector: Default
            +512M # 512M for ESP (EFI System Partition)
            t # Change Type
            1 # Select partition type: EFI
            
            n # new partition
            # Partition Number: Default
            # First Sector: Default
            +2G # 2G for swap
            t # Change Type
            # Partition number: Default
            swap # Select partition type: SWAP
            
            n # new partition
            3 # Partition Number: Default
            # First Sector: Default
            # Rest of the disk > 20G (Linux Filesystem)
            t # Type
            # Partition number: Default
            20 # Select partition type: Linux Filesystem

            p # Print current table
            w # Write to table
            q # Quit
EOF
    echo -e "\n$COLOR_LGREEN Drive partitioned!$COLOR_NORMAL\n"
fi
}

echo $DRIVE

echo -e "$COLOR_LYELLOW Partition disks? (Y/n):$COLOR_NORMAL"
read -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    partition
fi

