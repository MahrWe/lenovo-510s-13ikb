# stay in directory the script is called in
cd "$( dirname "$0" )"

    cd build
    xcodebuild -project kexts/Lilu/Lilu.xcodeproj -configuration DEBUG
    xcodebuild -project kexts/Lilu/Lilu.xcodeproj
    
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/AirportBrcmFixup/
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/AppleALC/
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/BT4LEContiunutyFixup/
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/WhateverGreen/
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/AppleBacklightFixup/
    
    xcodebuild -project kexts/AirportBrcmFixup/AirportBrcmFixup.xcodeproj
    xcodebuild -project kexts/AppleALC/AppleALC.xcodeproj
    xcodebuild -project kexts/AppleBacklightFixup/AppleBacklightFixup.xcodeproj
    xcodebuild -project kexts/BT4LEContiunutyFixup/BT4LEContiunityFixup.xcodeproj
    xcodebuild -project kexts/OS-X-ACPI-Battery-Driver/ACPIBatteryManager.xcodeproj -sdk macosx10.14
    
    # Build BrcmPatchRAM (Repo + RAM2) No idea how this is build on mojave, missing IOUSBDevice.h ?
    # Build FakeSMC
    # Build USBInjectAll
    
    xcodebuild -project kexts/RTL8111_driver_for_OS_X/RealtekRTL8111.xcodeproj
    xcodebuild -project kexts/Sinetek-rtsx/Sinetek-rtsx.xcodeproj
    xcodebuild -project kexts/VoodooI2C/VoodooI2C.xcodeproj
    xcodebuild -project kexts/WhateverGreen/WhateverGreen.xcodeproj
    xcodebuild -project kexts/OS-X-Voodoo-PS2-Controller/VoodooPS2Controller.xcodeproj -sdk macosx10.14

