#!/bin/bash

ARM_GCC_9_2="https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz?revision=61c3be5d-5175-4db6-9030-b565aae9f766&la=en&hash=0A37024B42028A9616F56A51C2D20755C5EBBCD7"

echo " Downloading......" 
  curl -L "$ARM_GCC_9_2" -o "$RUNNER_TEMP/ARM_GCC_9_2.tar.xz" || exit
  
echo "Extracting...."
 mkdir  "$HOME/toolchains"
  tar -xJf "$RUNNER_TEMP/ARM_GCC_9_2.tar.xz" -C "$HOME/toolchains"
  
ls -al "$HOME/toolchains"
