#!/sbin/sh

#delete UV
if [ -e /system/etc/init.d/21uv ] ; then
	busybox rm /system/etc/init.d/21uv
fi

#delete 69force script
if [ -e /system/etc/init.d/69force ] ; then
	busybox rm /system/etc/init.d/69force
fi

#delete GPU script
if [ -e /system/etc/init.d/31gpu_scaling ] ; then
	busybox rm /system/etc/init.d/31gpu_scaling
fi

#delete CPU script
if [ -e /system/etc/init.d/30cpu_scaling ] ; then
	busybox rm /system/etc/init.d/30cpu_scaling
fi

#delete old UV script
if [ -e /system/etc/init.d/32vdd_levels ] ; then
	busybox rm /system/etc/init.d/32vdd_levels
fi

#delete zram script
if [ -e /system/etc/init.d/33zram_swap ] ; then
	busybox rm /system/etc/init.d/33zram_swap
fi

#delete zram script
if [ -e /system/etc/init.d/90zram ] ; then
	busybox rm /system/etc/init.d/90zram
fi

#delete zram script
if [ -e /system/etc/init.d/88zram ] ; then
	busybox rm /system/etc/init.d/88zram
fi

#delete badass setting
if [ -e /system/etc/init.d/89badass ] ; then
	busybox rm /system/etc/init.d/89badass
fi

#delete Yank555 script
if [ -e /system/etc/init.d/99z_kernel ] ; then
	busybox rm /system/etc/init.d/99z_kernel
fi

#delete fauxs init.d script
if [ -e /system/etc/init.d/50faux ] ; then
	busybox rm /system/etc/init.d/50faux
fi

#delete 91tun init.d script
if [ -e /system/etc/init.d/91tun ] ; then
	busybox rm /system/etc/init.d/91tun
fi

#delete battery calibration script
if [ -e /system/etc/init.d/87calibration ] ; then
	busybox rm /system/etc/init.d/87calibration
fi

#delete logcatdisable script
if [ -e /system/etc/init.d/38DisableLogcat ] ; then
	busybox rm /system/etc/init.d/38DisableLogcat
fi

#delete sultan kernel script
if [ -e /system/etc/init.d/99sultan-kernel ]; then
	busybox rm /system/etc/init.d/99sultan-kernel
fi

#delete anthrax kernel script
if [ -e /system/etc/init.d/99anthrax ]; then
	busybox rm /system/etc/init.d/99anthrax
fi

#delete vsync script
if [ -e /system/etc/init.d/99vsync ] ; then
	busybox rm /system/etc/init.d/99vsync
fi

#delete Grogg kernel scripts
if [ -e /system/etc/init.d/99usbfastcharge ] ; then
	busybox rm /system/etc/init.d/99usbfastcharge
fi

if [ -e /system/etc/init.d/99zram ] ; then
	busybox rm /system/etc/init.d/99zram
fi

#delete S2W script
if [ -e /system/etc/init.d/91s2w ] ; then
	busybox rm /system/etc/init.d/91s2w
fi

#delete kernel tuner scripts
if [ -e /system/etc/init.d/99ktcputweaks ] ; then
	busybox rm /system/etc/init.d/91s2w
fi
if [ -e /system/etc/init.d/99ktcputweaks ] ; then
	busybox rm /system/etc/init.d/99ktcputweaks
fi
if [ -e /system/etc/init.d/99ktvoltage ] ; then
	busybox rm /system/etc/init.d/99ktvoltage
fi
if [ -e /system/etc/init.d/99ktgputweaks ] ; then
	busybox rm /system/etc/init.d/99ktgputweaks
fi
if [ -e /system/etc/init.d/99ktmisctweaks ] ; then
	busybox rm /system/etc/init.d/99ktmisctweaks
fi

#delete zipalign script
if [ -e /system/etc/init.d/98zipalign ] ; then
	busybox rm /system/etc/init.d/98zipalign
fi

#delete Sultanxda script
if [ -e /system/etc/init.d/89z_kernel ] ; then
	busybox rm /system/etc/init.d/89z_kernel
fi
