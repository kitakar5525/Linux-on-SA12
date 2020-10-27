#### logs

```bash
$ acpixtract -a acpidump.out

Intel ACPI Component Architecture
ACPI Binary Table Extraction Utility version 20200925
Copyright (c) 2000 - 2020 Intel Corporation

  SSDT -    1329 bytes written (0x00000531) - ssdt1.dat
  MCFG -      60 bytes written (0x0000003C) - mcfg.dat
  APIC -     188 bytes written (0x000000BC) - apic.dat
  ECDT -     193 bytes written (0x000000C1) - ecdt.dat
  SSDT -   16822 bytes written (0x000041B6) - ssdt2.dat
  TPM2 -      52 bytes written (0x00000034) - tpm2.dat
  BOOT -      40 bytes written (0x00000028) - boot.dat
  SSDT -   15221 bytes written (0x00003B75) - ssdt3.dat
  DSDT -  166170 bytes written (0x0002891A) - dsdt.dat
  SSDT -    1230 bytes written (0x000004CE) - ssdt4.dat
  SSDT -    1563 bytes written (0x0000061B) - ssdt5.dat
  SSDT -    3562 bytes written (0x00000DEA) - ssdt6.dat
  UEFI -      66 bytes written (0x00000042) - uefi1.dat
  ASPT -      52 bytes written (0x00000034) - aspt.dat
  SSDT -     410 bytes written (0x0000019A) - ssdt7.dat
  SSDT -   21230 bytes written (0x000052EE) - ssdt8.dat
  DMAR -     276 bytes written (0x00000114) - dmar.dat
  FACP -     244 bytes written (0x000000F4) - facp.dat
  FPDT -      68 bytes written (0x00000044) - fpdt.dat
  SSDT -      75 bytes written (0x0000004B) - ssdt9.dat
  SSDT -    1187 bytes written (0x000004A3) - ssdt10.dat
  TCPA -      50 bytes written (0x00000032) - tcpa.dat
  HPET -      56 bytes written (0x00000038) - hpet.dat
  SSDT -    2889 bytes written (0x00000B49) - ssdt11.dat
  UEFI -     566 bytes written (0x00000236) - uefi2.dat
  FACS -      64 bytes written (0x00000040) - facs.dat
  BGRT -      56 bytes written (0x00000038) - bgrt.dat
  SSDT -    3699 bytes written (0x00000E73) - ssdt12.dat
  SSDT -    1450 bytes written (0x000005AA) - ssdt13.dat
  SSDT -     281 bytes written (0x00000119) - ssdt14.dat
  SSDT -     895 bytes written (0x0000037F) - ssdt15.dat
```

```bash
$ iasl -d *.dat

Intel ACPI Component Architecture
ASL+ Optimizing Compiler/Disassembler version 20200925
Copyright (c) 2000 - 2020 Intel Corporation

File appears to be binary: found 159 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file apic.dat, Length 0xBC (188) bytes
ACPI: APIC 0x0000000000000000 0000BC (v03 ACRSYS ACRPRDCT 00000001 1025 00040000)
Acpi Data Table [APIC] decoded
Formatted output:  apic.dsl - 9150 bytes
File appears to be binary: found 29 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file aspt.dat, Length 0x34 (52) bytes
ACPI: ASPT 0x0000000000000000 000034 (v07 ACRSYS ACRPRDCT 00000001 1025 00040000)
Unknown ACPI table signature [ASPT], decoding ACPI table header only
Acpi Data Table [ASPT] decoded
Formatted output:  aspt.dsl - 1189 bytes
File appears to be binary: found 28 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file bgrt.dat, Length 0x38 (56) bytes
ACPI: BGRT 0x0000000000000000 000038 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
Acpi Data Table [BGRT] decoded
Formatted output:  bgrt.dsl - 1606 bytes
File appears to be binary: found 15 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file boot.dat, Length 0x28 (40) bytes
ACPI: BOOT 0x0000000000000000 000028 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
Acpi Data Table [BOOT] decoded
Formatted output:  boot.dsl - 1199 bytes
File appears to be binary: found 208 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file dmar.dat, Length 0x114 (276) bytes
ACPI: DMAR 0x0000000000000000 000114 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
Acpi Data Table [DMAR] decoded
Formatted output:  dmar.dsl - 7439 bytes
File appears to be binary: found 54806 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file dsdt.dat, Length 0x2891A (166170) bytes
ACPI: DSDT 0x0000000000000000 02891A (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
Pass 1 parse of [DSDT]
Pass 2 parse of [DSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed

Found 20 external control methods, reparsing with new information
Pass 1 parse of [DSDT]
Pass 2 parse of [DSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    dsdt.dsl - 1172778 bytes

 iASL Warning: There were 20 external control methods found during
 disassembly, but only 0 were resolved (20 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 149 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ecdt.dat, Length 0xC1 (193) bytes
ACPI: ECDT 0x0000000000000000 0000C1 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
Acpi Data Table [ECDT] decoded
Formatted output:  ecdt.dsl - 2806 bytes

 iASL Warning: There were 20 external control methods found during
 disassembly, but only 0 were resolved (20 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 210 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file facp.dat, Length 0xF4 (244) bytes
ACPI: FACP 0x0000000000000000 0000F4 (v05 ACRSYS ACRPRDCT 00000000 1025 00040000)
Acpi Data Table [FACP] decoded
Formatted output:  facp.dsl - 9277 bytes

 iASL Warning: There were 20 external control methods found during
 disassembly, but only 0 were resolved (20 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 59 non-ASCII characters, disassembling
ACPI Warning: Table header for [FACS] has invalid ASCII character(s) (20200925/acfileio-617)
Binary file appears to be a valid ACPI table, disassembling
Input file facs.dat, Length 0x40 (64) bytes
ACPI: FACS 0x0000000000000000 000040
Acpi Data Table [FACS] decoded
Formatted output:  facs.dsl - 1368 bytes

 iASL Warning: There were 20 external control methods found during
 disassembly, but only 0 were resolved (20 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 43 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file fpdt.dat, Length 0x44 (68) bytes
ACPI: FPDT 0x0000000000000000 000044 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
Acpi Data Table [FPDT] decoded
Formatted output:  fpdt.dsl - 1804 bytes

 iASL Warning: There were 20 external control methods found during
 disassembly, but only 0 were resolved (20 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 31 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file hpet.dat, Length 0x38 (56) bytes
ACPI: HPET 0x0000000000000000 000038 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
Acpi Data Table [HPET] decoded
Formatted output:  hpet.dsl - 1865 bytes

 iASL Warning: There were 20 external control methods found during
 disassembly, but only 0 were resolved (20 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 37 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file mcfg.dat, Length 0x3C (60) bytes
ACPI: MCFG 0x0000000000000000 00003C (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
Acpi Data Table [MCFG] decoded
Formatted output:  mcfg.dsl - 1526 bytes

 iASL Warning: There were 20 external control methods found during
 disassembly, but only 0 were resolved (20 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 487 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt10.dat, Length 0x4A3 (1187) bytes
ACPI: SSDT 0x0000000000000000 0004A3 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed

Found 3 external control methods, reparsing with new information
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt10.dsl - 12673 bytes
File appears to be binary: found 265 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt11.dat, Length 0xB49 (2889) bytes
ACPI: SSDT 0x0000000000000000 000B49 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed

Found 3 external control methods, reparsing with new information
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt11.dsl - 18357 bytes

 iASL Warning: There were 3 external control methods found during
 disassembly, but only 0 were resolved (3 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 892 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt12.dat, Length 0xE73 (3699) bytes
ACPI: SSDT 0x0000000000000000 000E73 (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt12.dsl - 19031 bytes
File appears to be binary: found 471 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt13.dat, Length 0x5AA (1450) bytes
ACPI: SSDT 0x0000000000000000 0005AA (v02 PmRef  ApIst    00003000 INTL 20130117)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt13.dsl - 11443 bytes
File appears to be binary: found 58 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt14.dat, Length 0x119 (281) bytes
ACPI: SSDT 0x0000000000000000 000119 (v02 PmRef  ApCst    00003000 INTL 20130117)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt14.dsl - 2182 bytes
File appears to be binary: found 385 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt15.dat, Length 0x37F (895) bytes
ACPI: SSDT 0x0000000000000000 00037F (v02 PmRef  Cpu0Cst  00003001 INTL 20130117)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt15.dsl - 6704 bytes
File appears to be binary: found 380 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt1.dat, Length 0x531 (1329) bytes
ACPI: SSDT 0x0000000000000000 000531 (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt1.dsl - 10980 bytes
File appears to be binary: found 11432 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt2.dat, Length 0x41B6 (16822) bytes
ACPI: SSDT 0x0000000000000000 0041B6 (v01 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt2.dsl - 178123 bytes
File appears to be binary: found 4510 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt3.dat, Length 0x3B75 (15221) bytes
ACPI: SSDT 0x0000000000000000 003B75 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed

Found 5 external control methods, reparsing with new information
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt3.dsl - 93919 bytes

 iASL Warning: There were 5 external control methods found during
 disassembly, but only 0 were resolved (5 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 463 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt4.dat, Length 0x4CE (1230) bytes
ACPI: SSDT 0x0000000000000000 0004CE (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt4.dsl - 10744 bytes
File appears to be binary: found 974 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt5.dat, Length 0x61B (1563) bytes
ACPI: SSDT 0x0000000000000000 00061B (v02 PmRef  Cpu0Ist  00003000 INTL 20130117)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt5.dsl - 12144 bytes
File appears to be binary: found 810 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt6.dat, Length 0xDEA (3562) bytes
ACPI: SSDT 0x0000000000000000 000DEA (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt6.dsl - 15269 bytes
File appears to be binary: found 124 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt7.dat, Length 0x19A (410) bytes
ACPI: SSDT 0x0000000000000000 00019A (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt7.dsl - 3393 bytes
File appears to be binary: found 6896 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt8.dat, Length 0x52EE (21230) bytes
ACPI: SSDT 0x0000000000000000 0052EE (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed

Found 8 external control methods, reparsing with new information
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt8.dsl - 143030 bytes

 iASL Warning: There were 8 external control methods found during
 disassembly, but only 0 were resolved (8 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 To specify the tables needed to resolve external control method
 references, the -e option can be used to specify the filenames.
 Example iASL invocations:
     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     iasl -e ssdt*.aml -d dsdt.aml

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml

File appears to be binary: found 23 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file ssdt9.dat, Length 0x4B (75) bytes
ACPI: SSDT 0x0000000000000000 00004B (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    ssdt9.dsl - 844 bytes
File appears to be binary: found 27 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file tcpa.dat, Length 0x32 (50) bytes
ACPI: TCPA 0x0000000000000000 000032 (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
Acpi Data Table [TCPA] decoded
Formatted output:  tcpa.dsl - 1359 bytes
File appears to be binary: found 28 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file tpm2.dat, Length 0x34 (52) bytes
ACPI: TPM2 0x0000000000000000 000034 (v03 ACRSYS ACRPRDCT 00000000 1025 00040000)
Acpi Data Table [TPM2] decoded
Formatted output:  tpm2.dsl - 1372 bytes
File appears to be binary: found 39 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file uefi1.dat, Length 0x42 (66) bytes
ACPI: UEFI 0x0000000000000000 000042 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
Acpi Data Table [UEFI] decoded
Formatted output:  uefi1.dsl - 1390 bytes
File appears to be binary: found 447 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file uefi2.dat, Length 0x236 (566) bytes
ACPI: UEFI 0x0000000000000000 000236 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
Acpi Data Table [UEFI] decoded
Formatted output:  uefi2.dsl - 3845 bytes
```

```bash
$ iasl -e ssdt*.dat -fe refs.txt -d dsdt.dat

Intel ACPI Component Architecture
ASL+ Optimizing Compiler/Disassembler version 20200925
Copyright (c) 2000 - 2020 Intel Corporation

File appears to be binary: found 54806 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file dsdt.dat, Length 0x2891A (166170) bytes
ACPI: DSDT 0x0000000000000000 02891A (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
External object resolution file        ssdt9.dat
Input file ssdt9.dat, Length 0x4B (75) bytes
ACPI: SSDT 0x0000000000000000 00004B (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file        ssdt8.dat
Input file ssdt8.dat, Length 0x52EE (21230) bytes
ACPI: SSDT 0x0000000000000000 0052EE (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file        ssdt7.dat
Input file ssdt7.dat, Length 0x19A (410) bytes
ACPI: SSDT 0x0000000000000000 00019A (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file        ssdt6.dat
Input file ssdt6.dat, Length 0xDEA (3562) bytes
ACPI: SSDT 0x0000000000000000 000DEA (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file        ssdt5.dat
Input file ssdt5.dat, Length 0x61B (1563) bytes
ACPI: SSDT 0x0000000000000000 00061B (v02 PmRef  Cpu0Ist  00003000 INTL 20130117)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file        ssdt4.dat
Input file ssdt4.dat, Length 0x4CE (1230) bytes
ACPI: SSDT 0x0000000000000000 0004CE (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file        ssdt3.dat
Input file ssdt3.dat, Length 0x3B75 (15221) bytes
ACPI: SSDT 0x0000000000000000 003B75 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file        ssdt2.dat
Input file ssdt2.dat, Length 0x41B6 (16822) bytes
ACPI: SSDT 0x0000000000000000 0041B6 (v01 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file        ssdt1.dat
Input file ssdt1.dat, Length 0x531 (1329) bytes
ACPI: SSDT 0x0000000000000000 000531 (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file       ssdt15.dat
Input file ssdt15.dat, Length 0x37F (895) bytes
ACPI: SSDT 0x0000000000000000 00037F (v02 PmRef  Cpu0Cst  00003001 INTL 20130117)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file       ssdt14.dat
Input file ssdt14.dat, Length 0x119 (281) bytes
ACPI: SSDT 0x0000000000000000 000119 (v02 PmRef  ApCst    00003000 INTL 20130117)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file       ssdt13.dat
Input file ssdt13.dat, Length 0x5AA (1450) bytes
ACPI: SSDT 0x0000000000000000 0005AA (v02 PmRef  ApIst    00003000 INTL 20130117)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file       ssdt12.dat
Input file ssdt12.dat, Length 0xE73 (3699) bytes
ACPI: SSDT 0x0000000000000000 000E73 (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file       ssdt11.dat
Input file ssdt11.dat, Length 0xB49 (2889) bytes
ACPI: SSDT 0x0000000000000000 000B49 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
External object resolution file       ssdt10.dat
Input file ssdt10.dat, Length 0x4A3 (1187) bytes
ACPI: SSDT 0x0000000000000000 0004A3 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
Pass 1 parse of [SSDT]
Pass 2 parse of [SSDT]
refs.txt: Importing method external (4 arguments) _SB.PCI0.SAT0.SDSM
refs.txt: Imported 1 external method definitions
Pass 1 parse of [DSDT]
Pass 2 parse of [DSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed

Found 19 external control methods, reparsing with new information
Pass 1 parse of [DSDT]
Pass 2 parse of [DSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    dsdt.dsl - 1172285 bytes

 iASL Warning: There were 19 external control methods found during
 disassembly, but only 11 were resolved (8 unresolved). Additional
 ACPI tables may be required to properly disassemble the code. This
 resulting disassembler output file may not compile because the
 disassembler did not know how many arguments to assign to the
 unresolved methods. Note: SSDTs can be dynamically loaded at
 runtime and may or may not be available via the host OS.

 In addition, the -fe option can be used to specify a file containing
 control method external declarations with the associated method
 argument counts. Each line of the file must be of the form:
     External (<method pathname>, MethodObj, <argument count>)
 Invocation:
     iasl -fe refs.txt -d dsdt.aml
```
