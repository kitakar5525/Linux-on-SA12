/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt6.dat, Tue Oct 27 19:00:49 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000DEA (3562)
 *     Revision         0x02
 *     Checksum         0x55
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC0_.CDTB, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.CMDB, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.EDAB, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.ESEB, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.MUEC, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.PCPT, UnknownObj)
    External (_TZ_.THRM._TMP, IntObj)
    External (BID_, IntObj)

    Scope (\_SB)
    {
        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Name (_STA, 0x0F)  // _STA: Status
            Method (TSDL, 0, Serialized)
            {
                Switch (BID)
                {
                    Case (Package (0x03)
                        {
                            0x20, 
                            0x21, 
                            0x09
                        }

)
                    {
                        Return (TSD2) /* \_SB_.PTID.TSD2 */
                    }
                    Default
                    {
                        Return (TSD1) /* \_SB_.PTID.TSD1 */
                    }

                }
            }

            Name (TSD1, Package (0x24)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "CPU Core VR (IMVP) Temperature", 
                0x03, 
                "Heat Exchanger Fan Temperature", 
                0x03, 
                "Skin Temperature", 
                0x03, 
                "Ambient Temperature", 
                0x02, 
                "Sensor 5 Not used.", 
                0x02, 
                "Channel 0 DIMM Temperature", 
                0x02, 
                "Channel 1 DIMM Temperature", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "THRM _TMP", 
                0x02, 
                "THRM _TMP"
            })
            Name (TSD2, Package (0x24)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "Memory Participant", 
                0x03, 
                "VR Hotspot Q50", 
                0x03, 
                "C-Skin Hotspot U50", 
                0x03, 
                "PMIC-MCP Hotspot Q16", 
                0x02, 
                "C-Skin Chassis U50 IR", 
                0x02, 
                "WWAN Hotspot Q6", 
                0x02, 
                "Ambient Hotspot U31", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TZ00 _TMP", 
                0x02, 
                "TZ01 _TMP"
            })
            Name (PSDL, Package (0x26)
            {
                0x0B, 
                "Platform Power (mW)", 
                0x0B, 
                "Brick Power cW(100ths)", 
                0x0B, 
                "Battery Discharge Power cW(100ths)", 
                0x0B, 
                "Platform Average Power (mW)", 
                0x0B, 
                "Brick Average Power cW(0.01)", 
                0x0B, 
                "Battery Discharge Average Power cW(0.01)", 
                0x0C, 
                "Battery 1 Design Capacity (mWh)", 
                0x0C, 
                "Battery 1 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 1 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 1 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery 2 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 2 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 2 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery Pack 1 maximum power (mW)", 
                0x0C, 
                "Battery Pack 2 maximum power (mW)"
            })
            Method (OSDL, 0, Serialized)
            {
                Switch (BID)
                {
                    Case (Package (0x03)
                        {
                            0x20, 
                            0x21, 
                            0x09
                        }

)
                    {
                        Return (OSD2) /* \_SB_.PTID.OSD2 */
                    }
                    Default
                    {
                        Return (OSD1) /* \_SB_.PTID.OSD1 */
                    }

                }
            }

            Name (OSD1, Package (0x09)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW"
            })
            Name (OSD2, Package (0x1B)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW", 
                0x03, 
                "Thermistor 3 ", 
                "RAW", 
                0x03, 
                "Thermistor 4 ", 
                "RAW", 
                0x03, 
                "Thermistor 5 ", 
                "RAW", 
                0x03, 
                "Thermistor 6 ", 
                "RAW"
            })
            Method (TSDD, 0, Serialized)
            {
                Name (TMPV, Package (0x16)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                TMPV [Zero] = 0x0BD8
                TMPV [One] = 0x0BE2
                TMPV [0x02] = 0x0BEC
                TMPV [0x03] = 0x0BF6
                TMPV [0x04] = 0x0C00
                TMPV [0x05] = 0x0C0A
                TMPV [0x06] = 0x0C14
                TMPV [0x07] = 0x0C1E
                TMPV [0x08] = 0x0C28
                TMPV [0x09] = 0x0C32
                TMPV [0x0A] = 0x0C3C
                TMPV [0x0B] = ((\_SB.PCI0.LPCB.EC0.PCPT * 0x0A) + 0x0AAC)
                TMPV [0x0C] = 0x0C46
                TMPV [0x0D] = 0x0C50
                TMPV [0x0E] = 0x0C5A
                TMPV [0x0F] = 0x0C64
                TMPV [0x10] = \_TZ.THRM._TMP /* External reference */
                TMPV [0x11] = \_TZ.THRM._TMP /* External reference */
                Return (TMPV) /* \_SB_.PTID.TSDD.TMPV */
            }

            Method (PSDD, 0, Serialized)
            {
                Name (PWRV, Package (0x13)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Return (PWRV) /* \_SB_.PTID.PSDD.PWRV */
            }

            Method (OSDD, 0, Serialized)
            {
                Name (OSD1, Package (0x03)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Return (OSD1) /* \_SB_.PTID.OSDD.OSD1 */
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (PADA, Package (0x0A)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x1A, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Name (PADD, Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })
            Method (PADT, 0, NotSerialized)
            {
                Return (PADA) /* \_SB_.PTID.PADA */
            }

            Name (MTMP, Buffer (0x1A){})
            Name (PTIE, Zero)
            Method (RPMD, 0, Serialized)
            {
                Return (MTMP) /* \_SB_.PTID.MTMP */
            }

            Method (WPMD, 1, NotSerialized)
            {
                If ((SizeOf (Arg0) != 0x1A))
                {
                    Return (0xFFFFFFFF)
                }

                MTMP [Zero] = DerefOf (Arg0 [Zero])
                MTMP [One] = DerefOf (Arg0 [One])
                MTMP [0x02] = DerefOf (Arg0 [0x02])
                MTMP [0x03] = DerefOf (Arg0 [0x03])
                MTMP [0x04] = DerefOf (Arg0 [0x04])
                MTMP [0x05] = DerefOf (Arg0 [0x05])
                MTMP [0x06] = DerefOf (Arg0 [0x06])
                MTMP [0x07] = DerefOf (Arg0 [0x07])
                MTMP [0x08] = DerefOf (Arg0 [0x08])
                MTMP [0x09] = DerefOf (Arg0 [0x09])
                MTMP [0x0A] = DerefOf (Arg0 [0x0A])
                MTMP [0x0B] = DerefOf (Arg0 [0x0B])
                MTMP [0x0C] = DerefOf (Arg0 [0x0C])
                MTMP [0x0D] = DerefOf (Arg0 [0x0D])
                MTMP [0x0E] = DerefOf (Arg0 [0x0E])
                MTMP [0x0F] = DerefOf (Arg0 [0x0F])
                MTMP [0x10] = DerefOf (Arg0 [0x10])
                MTMP [0x11] = DerefOf (Arg0 [0x11])
                MTMP [0x12] = DerefOf (Arg0 [0x12])
                MTMP [0x13] = DerefOf (Arg0 [0x13])
                MTMP [0x14] = DerefOf (Arg0 [0x14])
                MTMP [0x15] = DerefOf (Arg0 [0x15])
                MTMP [0x16] = DerefOf (Arg0 [0x16])
                MTMP [0x17] = DerefOf (Arg0 [0x17])
                MTMP [0x18] = DerefOf (Arg0 [0x18])
                MTMP [0x19] = DerefOf (Arg0 [0x19])
                Return (Zero)
            }

            Method (ISPC, 0, NotSerialized)
            {
                Name (TEMB, Buffer (0x20){})
                If ((Acquire (\_SB.PCI0.LPCB.EC0.MUEC, 0xFFFF) == Zero))
                {
                    Local0 = 0x06
                    Local1 = Zero
                    While (((Local0 < 0x1A) && (Local1 < 0x20)))
                    {
                        TEMB [Local1] = DerefOf (MTMP [Local0])
                        Local0++
                        Local1++
                    }

                    \_SB.PCI0.LPCB.EC0.CDTB = TEMB /* \_SB_.PTID.ISPC.TEMB */
                    \_SB.PCI0.LPCB.EC0.CMDB = 0xA0
                    \_SB.PCI0.LPCB.EC0.ESEB = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && \_SB.PCI0.LPCB.EC0.CMDB))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((\_SB.PCI0.LPCB.EC0.CMDB == Zero))
                    {
                        Local0 = DerefOf (MTMP [Zero])
                        Local0--
                        MTMP [Zero] = Local0
                        Local0 = DerefOf (MTMP [0x07])
                        Local0 += 0x09
                        Local1 = Zero
                        TEMB = \_SB.PCI0.LPCB.EC0.EDAB /* External reference */
                        While (((Local0 < 0x1A) && (Local1 < 0x20)))
                        {
                            MTMP [Local0] = DerefOf (TEMB [Local1])
                            Local0++
                            Local1++
                        }
                    }
                    Else
                    {
                        PTIE = One
                    }

                    Release (\_SB.PCI0.LPCB.EC0.MUEC)
                }

                Return (Zero)
            }

            Method (ENPC, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (RPCS, 0, NotSerialized)
            {
                Return (PTIE) /* \_SB_.PTID.PTIE */
            }

            Method (RPEC, 0, NotSerialized)
            {
                Local0 = Zero
                Return (Local0)
            }
        }
    }
}

