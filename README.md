# lenovo-510s-13ikb
To become an automated setup for hackbook 510s-13ikb /w BCM94350ZAE

make sure you have git installed and configured

    Open Terminal -> run "git"
                     git config --global user.name "Your Name"
                     git config --global user.email "you@example.com"

I like the Editor nano

    git config --global core.editor "nano"


    git clone https://github.com/MahrWe/lenovo-510s-13ikb.git
    cd lenovo-510s-13ikb
    sudo chmod +x script*
    # Download some repos
    ./script.command
    # Build some kexts
    ./script2.command
    # Do some SuperUser stuff
    ./script3.command
    


Please install IO80211Family.kext (OSX 10.10) , FakeSMC.kext , BrcmPatchRAM (Repo + RAM2) , and USBInjectAll.kext manually
