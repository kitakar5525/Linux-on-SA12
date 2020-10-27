/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of tcpa.dat, Tue Oct 27 19:00:49 2020
 *
 * ACPI Data Table [TCPA]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "TCPA"    [Trusted Computing Platform Alliance table]
[004h 0004   4]                 Table Length : 00000032
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : 80
[00Ah 0010   6]                       Oem ID : "ACRSYS"
[010h 0016   8]                 Oem Table ID : "ACRPRDCT"
[018h 0024   4]                 Oem Revision : 00000000
[01Ch 0028   4]              Asl Compiler ID : "1025"
[020h 0032   4]        Asl Compiler Revision : 00040000

[024h 0036   2]               Platform Class : 0000
[026h 0038   4]         Min Event Log Length : 00010000
[02Ah 0042   8]            Event Log Address : 000000008AE5C000

Raw Table Data: Length 50 (0x32)

    0000: 54 43 50 41 32 00 00 00 02 80 41 43 52 53 59 53  // TCPA2.....ACRSYS
    0010: 41 43 52 50 52 44 43 54 00 00 00 00 31 30 32 35  // ACRPRDCT....1025
    0020: 00 00 04 00 00 00 00 00 01 00 00 C0 E5 8A 00 00  // ................
    0030: 00 00                                            // ..
