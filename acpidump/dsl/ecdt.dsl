/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of ecdt.dat, Tue Oct 27 19:00:49 2020
 *
 * ACPI Data Table [ECDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "ECDT"    [Embedded Controller Boot Resources Table]
[004h 0004   4]                 Table Length : 000000C1
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 3E
[00Ah 0010   6]                       Oem ID : "ACRSYS"
[010h 0016   8]                 Oem Table ID : "ACRPRDCT"
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "1025"
[020h 0032   4]        Asl Compiler Revision : 00040000


[024h 0036  12]      Command/Status Register : [Generic Address Structure]
[024h 0036   1]                     Space ID : 01 [SystemIO]
[025h 0037   1]                    Bit Width : 08
[026h 0038   1]                   Bit Offset : 00
[027h 0039   1]         Encoded Access Width : 01 [Byte Access:8]
[028h 0040   8]                      Address : 0000000000000066

[030h 0048  12]                Data Register : [Generic Address Structure]
[030h 0048   1]                     Space ID : 01 [SystemIO]
[031h 0049   1]                    Bit Width : 08
[032h 0050   1]                   Bit Offset : 00
[033h 0051   1]         Encoded Access Width : 01 [Byte Access:8]
[034h 0052   8]                      Address : 0000000000000062

[03Ch 0060   4]                          UID : 00000000
[040h 0064   1]                   GPE Number : 50
[041h 0065  19]                     Namepath : "\_SB.PCI0.LPCB.EC0"

Raw Table Data: Length 193 (0xC1)

    0000: 45 43 44 54 C1 00 00 00 01 3E 41 43 52 53 59 53  // ECDT.....>ACRSYS
    0010: 41 43 52 50 52 44 43 54 01 00 00 00 31 30 32 35  // ACRPRDCT....1025
    0020: 00 00 04 00 01 08 00 01 66 00 00 00 00 00 00 00  // ........f.......
    0030: 01 08 00 01 62 00 00 00 00 00 00 00 00 00 00 00  // ....b...........
    0040: 50 5C 5F 53 42 2E 50 43 49 30 2E 4C 50 43 42 2E  // P\_SB.PCI0.LPCB.
    0050: 45 43 30 00 00 00 00 00 00 00 00 00 00 00 00 00  // EC0.............
    0060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0070: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0080: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0090: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00C0: 00                                               // .
