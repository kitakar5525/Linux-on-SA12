/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of tpm2.dat, Tue Oct 27 19:00:49 2020
 *
 * ACPI Data Table [TPM2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "TPM2"    [Trusted Platform Module hardware interface table]
[004h 0004   4]                 Table Length : 00000034
[008h 0008   1]                     Revision : 03
[009h 0009   1]                     Checksum : 99
[00Ah 0010   6]                       Oem ID : "ACRSYS"
[010h 0016   8]                 Oem Table ID : "ACRPRDCT"
[018h 0024   4]                 Oem Revision : 00000000
[01Ch 0028   4]              Asl Compiler ID : "1025"
[020h 0032   4]        Asl Compiler Revision : 00040000

[024h 0036   4]                     Reserved : 00000000
[028h 0040   8]              Control Address : 00000000FED40040
[030h 0048   4]                 Start Method : 00000007

Raw Table Data: Length 52 (0x34)

    0000: 54 50 4D 32 34 00 00 00 03 99 41 43 52 53 59 53  // TPM24.....ACRSYS
    0010: 41 43 52 50 52 44 43 54 00 00 00 00 31 30 32 35  // ACRPRDCT....1025
    0020: 00 00 04 00 00 00 00 00 40 00 D4 FE 00 00 00 00  // ........@.......
    0030: 07 00 00 00                                      // ....
