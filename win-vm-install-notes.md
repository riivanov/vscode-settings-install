1. Create 20GB virtual HD

   `qemu-img create -f qcow2 win11.qcow2 20g`

2. Run VM

   `sudo qemu-system-x86_64 -cdrom ~/dwl/manjaro-xfce-23.0.4-231015-linux65.iso -boot order=d -drive file=linux.qcow2,format=qcow2 -m 3G -enable-kvm -cpu host`
