# Android

## Table of Contents
* [Extract Samung Firmware](android/extract_samsung_firmware/README.md)
* [Porting](#porting)

## Porting

List dependencies of a shared object file (.so)
```
sudo apt-get install binutils
echo 'readelf -d $1 | grep "\(NEEDED\)" | sed -r "s/.*\[(.*)\]/\1/"' | sudo tee -a /usr/local/bin/ldd-arm
sudo chmod +x /usr/local/bin/ldd-arm
```
