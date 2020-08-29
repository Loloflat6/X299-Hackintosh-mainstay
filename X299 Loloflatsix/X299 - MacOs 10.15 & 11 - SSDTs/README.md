# X299 - MacOs 10.15 & 11 - SSDTs

## Introduction
Since the begining of X299 development, MacOs has been updated :  Sierra , High Sierra , Mojave, Catalina, now Big Sur and booloader have mostly changed.
So some new SSDTs are now requiried to boot and have a stable system.

## Distribution
Some SSTs from previous distribution are deprecated :
- SSDT -DTGP  ---------> SSDT-SBUS-MCHC
- SSDT - EC  -----|
                             --------> SSDT-EC-USBX-X299
- SSDT - USBX --|
New SSDTs are requiried :
- RTC0-NOAWAC( Bios before Cascade Lake X)
- SSDT-RTC0 (BIOS Cascade Lake X and higher or all Cascade Lake X motherboards).
- SSDT-AWAC : maybe requiried for macOS Catalina/Mojave. For Big Sur, SSDT-AWAC is replaced with SSDT-RTC0

## ACPI / SSDTs requirement
The minimum requirement for Big Sur is ( according to your bios) :
- SSDT -DTGP 
- SSDT-EC-USBX-X299
- SSDT-RTC0

## Credits - Acknowledgments
* Apple : macOS
* [Acidanthera](https://github.com/acidanthera) : OpencorePkg, kexts, etc.
* [Dortania](https://github.com/dortania) : Opencore guide
* [dracoflar](https://github.com/khronokernel) : Modified SSDT-EC-USBX, PLUG, and SBUS-MCHC files, SmallTree 211 patch, SSDT-RTC0 patch for macOS Big Sur
* [Pavo](https://github.com/Pavo-IM) : AGPMInjector
* djlild7hina, Ellybz, izo1, shael , Kgp, Apfelnico, NMano and all other owner contributors.
