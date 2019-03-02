# stay in directory the script is called in
cd "$( dirname "$0" )/build"

cd tools/Intel-iasl/
make
sudo make install
cd ../..
iasl kexts/AppleBacklightFixup/SSDT-PNLF.dsl

sudo su -

cp -R kexts/Lilu/build/Release/Lilu.kext /Library/Extensions
cp -R kexts/AirportBrcmFixup/build/Release/AirportBrcmFixup.kext /Library/Extensions
cp -R kexts/AppleALC/build/Release/AppleALC.kext /Library/Extensions
cp -R kexts/AppleBacklightFixup/build/Release/AppleBacklightFixup.kext /Library/Extensions
cp -R kexts/BT4LEContiunutyFixup/build/Release/BT4LEContiunityFixup.kext /Library/Extensions
cp -R kexts/OS-X-ACPI-Battery-Driver/build/Products/Release/ACPIBatteryManager.kext /Library/Extensions
cp -R kexts/RTL8111_driver_for_OS_X/build/Release/RealtekRTL8111.kext /Library/Extensions
cp -R kexts/Sinetek-rtsx/build/Release/Sinetek-rtsx.kext /Library/Extensions
cp -R kexts/VoodooI2C/build/Release/VoodooI2C.kext /Library/Extensions
cp -R kexts/WhateverGreen/build/Release/WhateverGreen.kext /Library/Extensions
cp -R kexts/OS-X-Voodoo-PS2-Controller/build/Products/Release/VoodooPS2Controller.kext /Library/Extensions

# Better to do this yourself.
#diskutil mount disk0s1
#cp kexts/AppleBacklightFixup/SSDT-PNLF.aml /Volumes/EFI/EFI/CLOVER/SSDT/patched