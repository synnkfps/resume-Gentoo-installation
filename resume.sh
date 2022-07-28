# mounting
swapon /dev/sda2;
mount /dev/sda3 /mnt/gentoo;
mkdir /mnt/gentoo/boot;
mount /dev/sda1 /mnt/gentoo/boot;

# chrooting
mount --types proc /proc /mnt/gentoo/proc;
mount --rbind /sys /mnt/gentoo/sys;
mount --make-rslave /mnt/gentoo/sys; 
mount --rbind /dev /mnt/gentoo/dev;
mount --make-rslave /mnt/gentoo/dev;
chroot /mnt/gentoo /bin/bash;
env-update;
source /etc/profile;
