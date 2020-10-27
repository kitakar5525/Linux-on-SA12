/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of boot.dat, Tue Oct 27 19:00:48 2020
 *
 * ACPI Data Table [BOOT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "BOOT"    [Simple Boot Flag Table]
[004h 0004   4]                 Table Length : 00000028
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 6A
[00Ah 0010   6]                       Oem ID : "ACRSYS"
[010h 0016   8]                 Oem Table ID : "ACRPRDCT"
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "1025"
[020h 0032   4]        Asl Compiler Revision : 00040000

[024h 0036   1]          Boot Register Index : 44
[025h 0037   3]                     Reserved : 000000

Raw Table Data: Length 40 (0x28)

    0000: 42 4F 4F 54 28 00 00 00 01 6A 41 43 52 53 59 53  // BOOT(....jACRSYS
    0010: 41 43 52 50 52 44 43 54 01 00 00 00 31 30 32 35  // ACRPRDCT....1025
    0020: 00 00 04 00 44 00 00 00                          // ....D...
