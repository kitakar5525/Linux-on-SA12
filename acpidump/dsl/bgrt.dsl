/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of bgrt.dat, Tue Oct 27 19:00:48 2020
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004   4]                 Table Length : 00000038
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 42
[00Ah 0010   6]                       Oem ID : "ACRSYS"
[010h 0016   8]                 Oem Table ID : "ACRPRDCT"
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "1025"
[020h 0032   4]        Asl Compiler Revision : 00040000

[024h 0036   2]                      Version : 0001
[026h 0038   1]       Status (decoded below) : 00
                                   Displayed : 0
                          Orientation Offset : 0
[027h 0039   1]                   Image Type : 00
[028h 0040   8]                Image Address : 00000000797E6000
[030h 0048   4]                Image OffsetX : 000002B8
[034h 0052   4]                Image OffsetY : 0000014E

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 42 41 43 52 53 59 53  // BGRT8....BACRSYS
    0010: 41 43 52 50 52 44 43 54 01 00 00 00 31 30 32 35  // ACRPRDCT....1025
    0020: 00 00 04 00 01 00 00 00 00 60 7E 79 00 00 00 00  // .........`~y....
    0030: B8 02 00 00 4E 01 00 00                          // ....N...
