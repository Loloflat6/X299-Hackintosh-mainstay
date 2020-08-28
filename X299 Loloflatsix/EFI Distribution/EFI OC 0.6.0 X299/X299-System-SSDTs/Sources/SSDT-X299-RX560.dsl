/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/CLOVER/ACPI/patched/SSDT-X299-RX560.aml, Thu Nov  8 13:17:31 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000004F1 (1265)
 *     Revision         0x01
 *     Checksum         0x03
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299R560"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299R560", 0x00000000)
{
    External (_SB_.PC02.BR2A, DeviceObj)
    External (_SB_.PC02.BR2A.PEGP, DeviceObj)
    External (_SB_.PC02.BR2A.SL05, DeviceObj)
    External (_SB_.PNLF.BSET, MethodObj)    // 1 Arguments
    External (BRTL, IntObj)
    External (DTGP, MethodObj)    // 5 Arguments
    External (EGPS, IntObj)
    External (PEGP, DeviceObj)
    External (SL05, DeviceObj)

    Scope (_SB.PC02.BR2A)
    {
        Scope (SL05)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (PEGP)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (GFX0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (ATIB, Buffer (0x0100){})
            Method (ATIF, 2, Serialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (AF00 ())
                }

                If ((Arg0 == One))
                {
                    Return (AF01 ())
                }

                If ((Arg0 == 0x02))
                {
                    Return (AF02 ())
                }
                Else
                {
                    CreateWordField (ATIB, Zero, SSZE)
                    CreateWordField (ATIB, 0x02, VERN)
                    CreateDWordField (ATIB, 0x04, NMSK)
                    CreateDWordField (ATIB, 0x08, SFUN)
                    SSZE = Zero
                    VERN = Zero
                    NMSK = Zero
                    SFUN = Zero
                    Return (ATIB) /* \_SB_.PC02.BR2A.GFX0.ATIB */
                }
            }

            Method (AF00, 0, NotSerialized)
            {
                CreateWordField (ATIB, Zero, SSZE)
                CreateWordField (ATIB, 0x02, VERN)
                CreateDWordField (ATIB, 0x04, NMSK)
                CreateDWordField (ATIB, 0x08, SFUN)
                SSZE = 0x0C
                VERN = One
                NMSK = 0x0C
                SFUN = 0x03
                Return (ATIB) /* \_SB_.PC02.BR2A.GFX0.ATIB */
            }

            Method (AF01, 0, NotSerialized)
            {
                CreateWordField (ATIB, Zero, SSZE)
                CreateDWordField (ATIB, 0x02, VMSK)
                CreateDWordField (ATIB, 0x06, FLGS)
                SSZE = 0x0A
                VMSK = 0x03
                FLGS = One
                Return (ATIB) /* \_SB_.PC02.BR2A.GFX0.ATIB */
            }

            Method (AF02, 0, NotSerialized)
            {
                CreateWordField (ATIB, Zero, SSZE)
                CreateDWordField (ATIB, 0x02, PSBI)
                CreateByteField (ATIB, 0x09, FPWR)
                CreateByteField (ATIB, 0x0A, FPID)
                SSZE = 0x0D
                PSBI = 0x08
                FPWR = Zero
                FPID = EGPS /* External reference */
                Return (ATIB) /* \_SB_.PC02.BR2A.GFX0.ATIB */
            }

            Method (ABCM, 1, NotSerialized)
            {
                BRTL = Arg0
                \_SB.PNLF.BSET (Arg0)
                Return (Zero)
            }

            Method (ABCL, 0, NotSerialized)
            {
                Return (Package (0x52)
                {
                    0x50, 
                    0x32, 
                    One, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50
                })
            }

            Device (LCD)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    Return (0x0110)
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (ABCL ())
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    ABCM (Arg0)
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* External reference */
                }
            }

            Method (_DOD, 0, Serialized)  // _DOD: Display Output Devices
            {
                Return (Package (0x01)
                {
                    0x0110
                })
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x69, 
                    0x03
                })
            }

            OperationRegion (PEGH, PCI_Config, Zero, 0x40)
            Field (PEGH, ByteAcc, NoLock, Preserve)
            {
                VID0,   16, 
                DID0,   16, 
                GCMD,   8, 
                Offset (0x24), 
                BAR4,   32
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x08)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-1"
                        }, 

                        "model", 
                        Buffer (0x07)
                        {
                            "RX 560"
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Return (0x80000002)
        }

        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
            OperationRegion (HDAH, PCI_Config, Zero, 0x40)
            Field (HDAH, ByteAcc, NoLock, Preserve)
            {
                VID0,   16, 
                DID0,   16
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x0E)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-1"
                        }, 

                        "layout-id", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                           // ....
                        }, 

                        "name", 
                        Buffer (0x10)
                        {
                            "RX 560 HD-Audio"
                        }, 

                        "model", 
                        Buffer (0x10)
                        {
                            "RX 560 HD-Audio"
                        }, 

                        "device_type", 
                        Buffer (0x16)
                        {
                            "Multimedia Controller"
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Return (0x80000002)
        }
    }
}

