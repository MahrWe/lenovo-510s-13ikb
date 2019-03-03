# stay in directory the script is called in
cd "$( dirname "$0" )/build"

cd tools/Intel-iasl/
make
sudo make install
cd ../..
iasl kexts/AppleBacklightFixup/SSDT-PNLF.dsl
iasl additional/*.dsl

sudo unzip -o additional/IO80211Family-10.10.5.vanilla.zip -d /System/Library/Extensions/
sudo cp -R kexts/{Lilu/build/Release/Lilu.kext,AirportBrcmFixup/build/Release/AirportBrcmFixup.kext,AppleALC/build/Release/AppleALC.kext,AppleBacklightFixup/build/Release/AppleBacklightFixup.kext,BT4LEContiunutyFixup/build/Release/BT4LEContiunityFixup.kext,OS-X-ACPI-Battery-Driver/build/Products/Release/ACPIBatteryManager.kext,RTL8111_driver_for_OS_X/build/Release/RealtekRTL8111.kext,Sinetek-rtsx/build/Release/Sinetek-rtsx.kext,WhateverGreen/build/Release/WhateverGreen.kext,OS-X-Voodoo-PS2-Controller/build/Products/Release/VoodooPS2Controller.kext,OS-X-USB-Inject-All/build/Products/Release/USBInjectAll.kext,OS-X-BrcmPatchRAM/build/Products/Release/BrcmPatchRAM2.kext,OS-X-BrcmPatchRAM/build/Products/Release/BrcmFirmwareRepo.kext} /Library/Extensions
sudo cp -R additional/Other.bundle /Library/Keyboard\ Layouts/

sudo kextcache -i /

# Better to do this yourself.
#diskutil mount disk0s1
#cp kexts/AppleBacklightFixup/SSDT-PNLF.aml /Volumes/EFI/EFI/CLOVER/SSDT/patched
#UIAC aml 
