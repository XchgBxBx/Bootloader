@echo off
qemu-system-i386 -m 32 -drive file=floppy.img,index=0,format=raw,if=floppy