# stay in directory the script is called in
cd "$( dirname "$0" )/build"

#cd tools/Intel-iasl/
#make
#sudo make install
#cd ../..
#iasl kexts/AppleBacklightFixup/SSDT-PNLF.dsl


sudo cp -R kexts/{Lilu/build/Release/Lilu.kext,AirportBrcmFixup/build/Release/AirportBrcmFixup.kext,AppleALC/build/Release/AppleALC.kext,AppleBacklightFixup/build/Release/AppleBacklightFixup.kext,BT4LEContiunutyFixup/build/Release/BT4LEContiunityFixup.kext,OS-X-ACPI-Battery-Driver/build/Products/Release/ACPIBatteryManager.kext,RTL8111_driver_for_OS_X/build/Release/RealtekRTL8111.kext,Sinetek-rtsx/build/Release/Sinetek-rtsx.kext,VoodooI2C/build/Release/VoodooI2C.kext,WhateverGreen/build/Release/WhateverGreen.kext,OS-X-Voodoo-PS2-Controller/build/Products/Release/VoodooPS2Controller.kext} /Library/Extensions

sudo kextcache -i /

# Missing kexts BrcmFirmwareRepo, BrcmPatchRAM2, FakeSMC, USBInjectAll, VoodooI2C


# Better to do this yourself.
#diskutil mount disk0s1
#cp kexts/AppleBacklightFixup/SSDT-PNLF.aml /Volumes/EFI/EFI/CLOVER/SSDT/patched
#UIAC aml 