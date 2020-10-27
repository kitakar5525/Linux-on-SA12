/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of fpdt.dat, Tue Oct 27 19:00:49 2020
 *
 * ACPI Data Table [FPDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "FPDT"    [Firmware Performance Data Table]
[004h 0004   4]                 Table Length : 00000044
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : A0
[00Ah 0010   6]                       Oem ID : "ACRSYS"
[010h 0016   8]                 Oem Table ID : "ACRPRDCT"
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "1025"
[020h 0032   4]        Asl Compiler Revision : 00040000


[024h 0036   2]                Subtable Type : 0000
[026h 0038   1]                       Length : 10
[027h 0039   1]                     Revision : 01
[028h 0040   4]                     Reserved : 00000000
[02Ch 0044   8]     FPDT Boot Record Address : 000000008A78F000

[034h 0052   2]                Subtable Type : 0001
[036h 0054   1]                       Length : 10
[037h 0055   1]                     Revision : 01
[038h 0056   4]                     Reserved : 00000000
[03Ch 0060   8]          S3PT Record Address : 000000008A78E000

Raw Table Data: Length 68 (0x44)

    0000: 46 50 44 54 44 00 00 00 01 A0 41 43 52 53 59 53  // FPDTD.....ACRSYS
    0010: 41 43 52 50 52 44 43 54 02 00 00 00 31 30 32 35  // ACRPRDCT....1025
    0020: 00 00 04 00 00 00 10 01 00 00 00 00 00 F0 78 8A  // ..............x.
    0030: 00 00 00 00 01 00 10 01 00 00 00 00 00 E0 78 8A  // ..............x.
    0040: 00 00 00 00                                      // ....
