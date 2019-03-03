# stay in directory the script is called in
cd "$( dirname "$0" )"

    cd build
    xcodebuild -project kexts/Lilu/Lilu.xcodeproj -configuration Debug
    xcodebuild -project kexts/Lilu/Lilu.xcodeproj
    
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/AirportBrcmFixup/
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/AppleALC/
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/BT4LEContiunutyFixup/
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/WhateverGreen/
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/AppleBacklightFixup/
    cp -R kexts/Lilu/build/Debug/Lilu.kext kexts/VirtualSMC/
    
    xcodebuild -project kexts/AirportBrcmFixup/AirportBrcmFixup.xcodeproj
    xcodebuild -project kexts/AppleALC/AppleALC.xcodeproj
    xcodebuild -project kexts/AppleBacklightFixup/AppleBacklightFixup.xcodeproj
    xcodebuild -project kexts/BT4LEContiunutyFixup/BT4LEContiunityFixup.xcodeproj
    xcodebuild -project kexts/OS-X-ACPI-Battery-Driver/ACPIBatteryManager.xcodeproj -sdk macosx10.14 -configuration Release
    xcodebuild -project kexts/VirtualSMC/VirtualSMC.xcodeproj -scheme VirtualSMC -configuration Release
    xcodebuild -project kexts/OS-X-USB-Inject-All/USBInjectAll.xcodeproj -arch x86_64 -sdk macosx10.14 -configuration Release -target USBInjectAll
    xcodebuild -project kexts/OS-X-BrcmPatchRAM/BrcmPatchRAM.xcodeproj -arch x86_64 -configuration Release -sdk macosx10.14 -target BrcmPatchRAM2
    xcodebuild -project kexts/OS-X-BrcmPatchRAM/BrcmPatchRAM.xcodeproj -arch x86_64 -configuration Release -sdk macosx10.14 -target BrcmFirmwareRepo

    xcodebuild -project kexts/RTL8111_driver_for_OS_X/RealtekRTL8111.xcodeproj
    xcodebuild -project kexts/Sinetek-rtsx/Sinetek-rtsx.xcodeproj
    xcodebuild -project kexts/WhateverGreen/WhateverGreen.xcodeproj
    xcodebuild -project kexts/OS-X-Voodoo-PS2-Controller/VoodooPS2Controller.xcodeproj -arch x86_64 -sdk macosx10.14 -scheme All -configuration Release

