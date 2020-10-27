The file `acpidump.out` is dumped by the following commands:
```bash
sudo acpidump > acpidump.out.TEMP
# References: https://github.com/linux-surface/linux-surface/wiki/Testers-and-Contributing#contributing-acpidumps
cat acpidump.out.TEMP | perl -pe 'BEGIN{undef $/;} s|MSDM.*?\n\n||sgm' > acpidump.out
rm acpidump.out.TEMP
```

then, extracted by the following commands:
```bash
acpixtract -a acpidump.out
mkdir dat/ dsl/
mv *.dat dat/
cd dat/
iasl -d *.dat

# add refs.txt file with the following contents to resolve external reference.
# Take a look at commit https://github.com/kitakar5525/surface-ipu3-cameras/commit/6ee883b6b198
# for details.
echo 'External(_SB.PCI0.SAT0.SDSM, MethodObj, 4)' > refs.txt

# then
iasl -e ssdt*.dat -fe refs.txt -d dsdt.dat
mv *.dsl ../dsl/
```

Firmware version that the file is dumped from:
```bash
# Print your system info:
# - do not use sudo so that it doesn't contain personal data. So,
#   "Permission denied" is expected for such data.
#
$ grep . /sys/class/dmi/id/*
/sys/class/dmi/id/bios_date:04/16/2018
/sys/class/dmi/id/bios_release:1.6
/sys/class/dmi/id/bios_vendor:Insyde Corp.
/sys/class/dmi/id/bios_version:V1.06
/sys/class/dmi/id/board_asset_tag:Type2 - Board Asset Tag
/sys/class/dmi/id/board_name:Hawaii
grep: /sys/class/dmi/id/board_serial: Permission denied
/sys/class/dmi/id/board_vendor:Acer
/sys/class/dmi/id/board_version:V1.06
grep: /sys/class/dmi/id/chassis_serial: Permission denied
/sys/class/dmi/id/chassis_type:30
/sys/class/dmi/id/chassis_vendor:Acer
/sys/class/dmi/id/chassis_version:Chassis Version
/sys/class/dmi/id/ec_firmware_release:1.6
/sys/class/dmi/id/modalias:dmi:bvnInsydeCorp.:bvrV1.06:bd04/16/2018:br1.6:efr1.6:svnAcer:pnSwitchSA5-271:pvrV1.06:rvnAcer:rnHawaii:rvrV1.06:cvnAcer:ct30:cvrChassisVersion:
grep: /sys/class/dmi/id/power: Is a directory
/sys/class/dmi/id/product_family:SKL
/sys/class/dmi/id/product_name:Switch SA5-271
grep: /sys/class/dmi/id/product_serial: Permission denied
/sys/class/dmi/id/product_sku:Switch SA5-271_111E_1.06
grep: /sys/class/dmi/id/product_uuid: Permission denied
/sys/class/dmi/id/product_version:V1.06
grep: /sys/class/dmi/id/subsystem: Is a directory
/sys/class/dmi/id/sys_vendor:Acer
/sys/class/dmi/id/uevent:MODALIAS=dmi:bvnInsydeCorp.:bvrV1.06:bd04/16/2018:br1.6:efr1.6:svnAcer:pnSwitchSA5-271:pvrV1.06:rvnAcer:rnHawaii:rvrV1.06:cvnAcer:ct30:cvrChassisVersion:
```
