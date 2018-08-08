#! /bin/bash
unzip *.zip
for file in *.tar.md5; do
  folder=$(echo $file | sed 's/.tar.md5//g')
  tar -xf $file
  rm $file
done
for file in *.img.lz4; do
  filex=$(echo $file | sed 's/.img.lz4/.img/g')
  unlz4 $file $filex
  rm $file
done
for file in *.img; do
  filex=$(echo $file | sed 's/.img/.raw.img/g')
  simg2img $file $filex
  rm $file
done
for file in "system.raw.img vendor.raw.img userdata.raw.img"; do
  folder=$(echo $file | sed 's/.raw.img//g')
  mkdir $folder
  sudo mount -t ext4 -o loop $file $folder
done