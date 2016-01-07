#!/sbin/sh
mount /system;
if [ ! -d /system/aroma ] ; then
	echo "No aroma dir!";
	umount /system;
	exit 10;
fi
for i in model mods remove sweep zram 3dgpu 2dgpu gov scheduler maxfreq minfreq scroff; do
	if [ ! -e /system/aroma/$i.prop ] ; then
		echo "No $i.prop";
		umount /system;
		exit 10;
	fi
done;
if [ ! -e /system/aroma/wipe.prop ] ; then
	rm -rf /system/aroma/wipe.prop;
fi
cp -f /system/aroma/*.prop /tmp/aroma-data/;
umount /system;
exit 0
