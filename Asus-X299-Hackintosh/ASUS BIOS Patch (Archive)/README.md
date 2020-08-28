# Patching ASUS BIOS (Archive)
In the latest release of ASUS BIOS for X299 Motherboards (BIOS 3006, 3101 (WS Boards) and Cascade Lake-X Refresh boards (BIOS 0603), the MSR lock option is broken so we will need to patch it in order disable it.  
Asus released a new 0702 BIOS for Cascade Lake X Refresh motherboards that fixed MSR lock functionality.  UEFITool no longer needs to be run on this new BIOS.  Once ASUS releases an update for the rest of the boards, patching with UEFITool will no longer be required.  
NOTE: Your motherboard needs to support BIOS FlashBack (Refer to your motherboard's manual)

1.  Download UEFIPatch in the ASUS Bios Patch folder and copy latest version of your BIOS in same folder
2. Open Terminal and run the following commands: 
    * 'cd /Users/user123/Downloads/UEFIPatch' 
        * Replace 'user123' with your user name
        * If you extracted the UEFIPatch folder to another directory, change the path in the command above.
    * './UEFIPatch WS-X299-SAGE-10G-ASUS-3101.CAP'
        * Replace the file name of bios with whatever you named your bios
3. You should see some lines outputted in terminal ending with 'Image patched' and a new .CAP file with a .patched extension.  Refer to your motherboard's manual (Search for BIOS FlashBack) and rename the .patched file you just created. (For example, WS X299 Sage/10G users, rename the .patched file to 'WSXTG.CAP')
4. Perform BIOS Flashback.
5. Double check that [SSDT-RTC0.aml](https://github.com/shinoki7/Asus-X299-Hackintosh/blob/master/SSDT/SSDT-RTC0.aml) is in your EFI folder under `EFI-OC-ACPI`.  If you already have SSDT-AWAC.aml, you can replace it with SSDT-RTC0.aml
6. Double check that SSDT-RTC0.aml is an entry in your config.plist under `ACPI-Add`.  If you already have SSDT-AWAC.aml, you can replace it with SSDT-RTC0.aml.
    * Comment (String) SSDT-RTC0.aml
    * Enabled (Boolean) YES
    * Path (String) SSDT-RTC0.aml

# Credits
* DSM2, Download-Fritz, and vit9696 : UEFITool for new ASUS BIOS and Cascade Lake-X Refresh motherboard support
