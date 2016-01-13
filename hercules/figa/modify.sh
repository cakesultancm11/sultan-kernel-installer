#!/sbin/sh

#create script

busybox touch /system/etc/init.d/89z_kernel

#set permissions
busybox chmod 777 /system/etc/init.d/89z_kernel

#set script header

echo '#!/system/bin/sh' >> /system/etc/init.d/89z_kernel;
echo '# ==============================' >> /system/etc/init.d/89z_kernel;
echo '#   AIO kernel MOD' >> /system/etc/init.d/89z_kernel;
echo '# ==============================' >> /system/etc/init.d/89z_kernel;
echo '#  Script base created by IBA21 ' >> /system/etc/init.d/89z_kernel;
echo '# ==============================' >> /system/etc/init.d/89z_kernel;
echo '#  Then modified by axetilen' >> /system/etc/init.d/89z_kernel;
echo '# ==============================' >> /system/etc/init.d/89z_kernel;
echo '#  Finally modified and maintained by Sultanxda' >> /system/etc/init.d/89z_kernel;
echo '# ==============================' >> /system/etc/init.d/89z_kernel;

val=`cat /tmp/aroma-data/lp_flash.prop | cut -d"=" -f2`
case $val in
  1)
    lp_flash=1
    ;;
  2)
    lp_flash=0
    ;;
esac


val=`cat /tmp/aroma-data/s2w.prop | cut -d"=" -f2`
case $val in
  1)
    s2w=1
    ;;
  2)
    s2w=0
    ;;
esac

val=`cat /tmp/aroma-data/s2s.prop | cut -d"=" -f2`
case $val in
  1)
    s2s=1
    ;;
  2)
    s2s=0
    ;;
esac

val=`cat /tmp/aroma-data/lenient.prop | cut -d"=" -f2`
case $val in
  1)
    lenient=1
    ;;
  2)
    lenient=0
    ;;
esac

val=`cat /tmp/aroma-data/dt2w.prop | cut -d"=" -f2`
case $val in
  1)
    dt2w=1
    ;;
  2)
    dt2w=2
    ;;
  3)
    dt2w=3
    ;;
  4)
    dt2w=4
    ;;
  5)
    dt2w=0
    ;;
esac

val=`cat /tmp/aroma-data/dt2s.prop | cut -d"=" -f2`
case $val in
  1)
    dt2s=1
    ;;
  2)
    dt2s=2
    ;;
  3)
    dt2s=3
    ;;
  4)
    dt2s=4
    ;;
  5)
    dt2s=0
    ;;
esac

val=`cat /tmp/aroma-data/pktda.prop | cut -d"=" -f2`
case $val in
  1)
    pktda=1
    ;;
  2)
    pktda=0
    ;;
esac

val=`cat /tmp/aroma-data/fsync.prop | cut -d"=" -f2`
case $val in
  1)
    fsync=1
    ;;
  2)
    fsync=0
    ;;
esac

val=`cat /tmp/aroma-data/crc.prop | cut -d"=" -f2`
case $val in
  1)
    crc=1
    ;;
  2)
    crc=0
    ;;
esac

val=`cat /tmp/aroma-data/gfs.prop | cut -d"=" -f2`
case $val in
  1)
    gfs=1
    ;;
  2)
    gfs=0
    ;;
esac

val=`cat /tmp/aroma-data/ap.prop | cut -d"=" -f2`
case $val in
  1)
    ap=1
    ;;
  2)
    ap=0
    ;;
esac

val=`cat /tmp/aroma-data/maxfreq.prop | cut -d"=" -f2`
case $val in
  1)
    maxfreq=1188000
    ;;
  2)
    maxfreq=1296000
    ;;
  3)
    maxfreq=1350000
    ;;
  4)
    maxfreq=1404000
    ;;
  5)
    maxfreq=1458000
    ;;
  6)
    maxfreq=1512000
    ;;
  7)
    maxfreq=1566000
    ;;
  8)
    maxfreq=1620000
    ;;
  9)
    maxfreq=1674000
    ;;
  10)
    maxfreq=1728000
    ;;
  11)
    maxfreq=1782000
    ;;
  12)
    maxfreq=1836000
    ;;
esac

val=`cat /tmp/aroma-data/gpu.prop | cut -d"=" -f2`
case $val in
  1)
    gpu=200000000
	;;
  2)
    gpu=228571000
	;;
  3)
    gpu=266667000
	;;
  4)
    gpu=300000000
	;;
  5)
    gpu=320000000
	;;
esac

val=`cat /tmp/aroma-data/gpu2d.prop | cut -d"=" -f2`
case $val in
  1)
    gpu2d=200000000
	;;
  2)
    gpu2d=228571000
	;;
  3)
    gpu2d=266667000
	;;
esac

val=`cat /tmp/aroma-data/sep.prop | cut -d"=" -f2`
case $val in
  1)
    sep=1
    ;;
  2)
    sep=2
    ;;
esac

val=`cat /tmp/aroma-data/panel.prop | cut -d"=" -f2`
case $val in
  1)
    panel=0
    ;;
  2)
    panel=50
    ;;
  3)
    panel=100
    ;;
  4)
    panel=150
    ;;
  5)
    panel=200
    ;;
  6)
    panel=250
    ;;
  7)
    panel=300
    ;;
  8)
    panel=350
    ;;
  9)
    panel=400
    ;;
  10)
    panel=450
    ;;
  11)
    panel=500
    ;;
esac

val=`cat /tmp/aroma-data/mdp.prop | cut -d"=" -f2`
case $val in
  1)
    mdp=1
    ;;
  2)
    mdp=0
    ;;
esac

val=`cat /tmp/aroma-data/thermal.prop | cut -d"=" -f2`
case $val in
  1)
    thermal=1
    ;;
  2)
    thermal=2
    ;;
  3)
    thermal=3
    ;;
  4)
    thermal=4
    ;;
  5)
    thermal=5
    ;;
esac

val=`cat /tmp/aroma-data/bln.prop | cut -d"=" -f2`
case $val in
  1)
    bln=600000
    ;;
  2)
    bln=900000
    ;;
  3)
    bln=1800000
    ;;
  4)
    bln=3600000
    ;;
  5)
    bln=0
    ;;
esac

echo '### Change your own settings here ###' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '## Always use low-power flash' >> /system/etc/init.d/89z_kernel;
echo 'LP_FLASH='$lp_flash';' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '## BLN timeout (in milliseconds)' >> /system/etc/init.d/89z_kernel;
echo 'BLN='$bln';' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '## CPU thermal mitigation' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Super Strict thresholds (CPU throttled very often)' >> /system/etc/init.d/89z_kernel;
echo '# 2 = Strict thresholds (CPU throttled often)' >> /system/etc/init.d/89z_kernel;
echo '# 3 = Balanced thresholds' >> /system/etc/init.d/89z_kernel;
echo '# 4 = Relaxed thresholds (CPU throttled rarly)' >> /system/etc/init.d/89z_kernel;
echo '# 5 = Super Relaxed thresholds (CPU throttled very rarely)' >> /system/etc/init.d/89z_kernel;
echo 'THERMAL='$thermal';' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '## Display Features' >> /system/etc/init.d/89z_kernel;
echo '## Display Undervolt' >> /system/etc/init.d/89z_kernel;
echo '# Choose a value between' >> /system/etc/init.d/89z_kernel;
echo '# 0mV and 500mV that is a' >> /system/etc/init.d/89z_kernel;
echo '# multiple of 25.' >> /system/etc/init.d/89z_kernel;
echo '# Undervolt will be' >> /system/etc/init.d/89z_kernel;
echo '# 3000mV -MINUS- (what you choose)' >> /system/etc/init.d/89z_kernel;
echo '## MDP Cooler Gamma' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Enabled' >> /system/etc/init.d/89z_kernel;
echo 'PANEL_UV='$panel';' >> /system/etc/init.d/89z_kernel;
echo 'MDP='$mdp';' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '## Maximum GPU frequency (3D)' >> /system/etc/init.d/89z_kernel;
echo '# 200000000 = 200MHz' >> /system/etc/init.d/89z_kernel;
echo '# 228571000 = 228MHz' >> /system/etc/init.d/89z_kernel;
echo '# 266667000 = 267MHz' >> /system/etc/init.d/89z_kernel;
echo '# 300000000 = 300MHz' >> /system/etc/init.d/89z_kernel;
echo '# 320000000 = 320MHz' >> /system/etc/init.d/89z_kernel;
echo '## Maximum GPU frequency (2D)' >> /system/etc/init.d/89z_kernel;
echo '# 200000000 = 200MHz' >> /system/etc/init.d/89z_kernel;
echo '# 228571000 = 228MHz' >> /system/etc/init.d/89z_kernel;
echo '# 266667000 = 267MHz' >> /system/etc/init.d/89z_kernel;
echo 'GPU='$gpu';' >> /system/etc/init.d/89z_kernel;
echo 'GPU2D='$gpu2d';' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '## Maximum CPU frequency' >> /system/etc/init.d/89z_kernel;
echo 'MAXFREQ='$maxfreq';' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '## Wake Controls' >> /system/etc/init.d/89z_kernel;
echo '## Sweep2Wake' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Enabled' >> /system/etc/init.d/89z_kernel;
echo '## Sweep2Sleep' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Enabled' >> /system/etc/init.d/89z_kernel;
echo '## Sweep2Wake Lenient' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Enabled' >> /system/etc/init.d/89z_kernel;
echo '## DoubleTap2Wake' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Menu Button' >> /system/etc/init.d/89z_kernel;
echo '# 2 = Home Button' >> /system/etc/init.d/89z_kernel;
echo '# 3 = Back Button' >> /system/etc/init.d/89z_kernel;
echo '# 4 = Search Button' >> /system/etc/init.d/89z_kernel;
echo '## DoubleTap2Sleep' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Menu Button' >> /system/etc/init.d/89z_kernel;
echo '# 2 = Home Button' >> /system/etc/init.d/89z_kernel;
echo '# 3 = Back Button' >> /system/etc/init.d/89z_kernel;
echo '# 4 = Search Button' >> /system/etc/init.d/89z_kernel;
echo '## Pocket Detection' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Enabled' >> /system/etc/init.d/89z_kernel;
echo 'S2W='$s2w';' >> /system/etc/init.d/89z_kernel;
echo 'S2S='$s2s';' >> /system/etc/init.d/89z_kernel;
echo 'LENIENT='$lenient';' >> /system/etc/init.d/89z_kernel;
echo 'DT2W='$dt2w';' >> /system/etc/init.d/89z_kernel;
echo 'DT2S='$dt2s';' >> /system/etc/init.d/89z_kernel;
echo 'PKTDA='$pktda';' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '## Misc Controls' >> /system/etc/init.d/89z_kernel;
echo '## Fsync' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Enabled' >> /system/etc/init.d/89z_kernel;
echo '## MMC CRC' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Enabled' >> /system/etc/init.d/89z_kernel;
echo '## Gentle Fair Sleepers' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Enabled' >> /system/etc/init.d/89z_kernel;
echo '## Arch Power' >> /system/etc/init.d/89z_kernel;
echo '# 0 = Disabled' >> /system/etc/init.d/89z_kernel;
echo '# 1 = Enabled' >> /system/etc/init.d/89z_kernel;
echo 'FSYNC='$fsync';' >> /system/etc/init.d/89z_kernel;
echo 'CRC='$crc';' >> /system/etc/init.d/89z_kernel;
echo 'GFS='$gfs';' >> /system/etc/init.d/89z_kernel;
echo 'AP='$ap';' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '####### DO NOT CHANGE ANYTHING BELOW THIS LINE #######' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '# Low-power flash' >> /system/etc/init.d/89z_kernel;
echo '	echo "$LP_FLASH" > /sys/module/sec_m5mo/parameters/force_lp_flash' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo 'chmod 664 /sys/kernel/msm_thermal/conf/trip_low_thresh' >> /system/etc/init.d/89z_kernel;
echo 'chmod 664 /sys/kernel/msm_thermal/conf/reset_low_thresh' >> /system/etc/init.d/89z_kernel;
echo 'chmod 664 /sys/kernel/msm_thermal/conf/trip_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo 'chmod 664 /sys/kernel/msm_thermal/conf/reset_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo 'chmod 664 /sys/kernel/msm_thermal/conf/trip_high_thresh' >> /system/etc/init.d/89z_kernel;
echo 'chmod 664 /sys/kernel/msm_thermal/conf/reset_high_thresh' >> /system/etc/init.d/89z_kernel;

echo 'if [ "$THERMAL" = "1" ]' >> /system/etc/init.d/89z_kernel;
echo 'then' >> /system/etc/init.d/89z_kernel;
echo '	echo "56" > /sys/kernel/msm_thermal/conf/trip_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "53" > /sys/kernel/msm_thermal/conf/reset_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "62" > /sys/kernel/msm_thermal/conf/trip_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "59" > /sys/kernel/msm_thermal/conf/reset_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "68" > /sys/kernel/msm_thermal/conf/trip_high_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "64" > /sys/kernel/msm_thermal/conf/reset_high_thresh' >> /system/etc/init.d/89z_kernel;
echo 'fi' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo 'if [ "$THERMAL" = "2" ]' >> /system/etc/init.d/89z_kernel;
echo 'then' >> /system/etc/init.d/89z_kernel;
echo '	echo "60" > /sys/kernel/msm_thermal/conf/trip_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "57" > /sys/kernel/msm_thermal/conf/reset_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "66" > /sys/kernel/msm_thermal/conf/trip_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "63" > /sys/kernel/msm_thermal/conf/reset_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "72" > /sys/kernel/msm_thermal/conf/trip_high_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "68" > /sys/kernel/msm_thermal/conf/reset_high_thresh' >> /system/etc/init.d/89z_kernel;
echo 'fi' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo 'if [ "$THERMAL" = "3" ]' >> /system/etc/init.d/89z_kernel;
echo 'then' >> /system/etc/init.d/89z_kernel;
echo '	echo "64" > /sys/kernel/msm_thermal/conf/trip_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "61" > /sys/kernel/msm_thermal/conf/reset_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "70" > /sys/kernel/msm_thermal/conf/trip_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "67" > /sys/kernel/msm_thermal/conf/reset_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "76" > /sys/kernel/msm_thermal/conf/trip_high_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "72" > /sys/kernel/msm_thermal/conf/reset_high_thresh' >> /system/etc/init.d/89z_kernel;
echo 'fi' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo 'if [ "$THERMAL" = "4" ]' >> /system/etc/init.d/89z_kernel;
echo 'then' >> /system/etc/init.d/89z_kernel;
echo '	echo "68" > /sys/kernel/msm_thermal/conf/trip_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "65" > /sys/kernel/msm_thermal/conf/reset_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "74" > /sys/kernel/msm_thermal/conf/trip_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "71" > /sys/kernel/msm_thermal/conf/reset_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "80" > /sys/kernel/msm_thermal/conf/trip_high_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "76" > /sys/kernel/msm_thermal/conf/reset_high_thresh' >> /system/etc/init.d/89z_kernel;
echo 'fi' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo 'if [ "$THERMAL" = "5" ]' >> /system/etc/init.d/89z_kernel;
echo 'then' >> /system/etc/init.d/89z_kernel;
echo '	echo "72" > /sys/kernel/msm_thermal/conf/trip_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "69" > /sys/kernel/msm_thermal/conf/reset_low_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "78" > /sys/kernel/msm_thermal/conf/trip_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "75" > /sys/kernel/msm_thermal/conf/reset_mid_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "84" > /sys/kernel/msm_thermal/conf/trip_high_thresh' >> /system/etc/init.d/89z_kernel;
echo '	echo "80" > /sys/kernel/msm_thermal/conf/reset_high_thresh' >> /system/etc/init.d/89z_kernel;
echo 'fi' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '# Wake Controls' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/android_touch/sweep2wake' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/android_touch/sweep2sleep' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/android_touch/sweep2wake_lenient' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/android_touch/doubletap2wake' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/android_touch/doubletap2sleep' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/android_touch/pocket_detect' >> /system/etc/init.d/89z_kernel;
echo '    echo "$S2W" > /sys/android_touch/sweep2wake' >> /system/etc/init.d/89z_kernel;
echo '    echo "$S2S" > /sys/android_touch/sweep2sleep' >> /system/etc/init.d/89z_kernel;
echo '    echo "$LENIENT" > /sys/android_touch/sweep2wake_lenient' >> /system/etc/init.d/89z_kernel;
echo '    echo "$DT2W" > /sys/android_touch/doubletap2wake' >> /system/etc/init.d/89z_kernel;
echo '    echo "$DT2S" > /sys/android_touch/doubletap2sleep' >> /system/etc/init.d/89z_kernel;
echo '    echo "$PKTDA" > /sys/android_touch/pocket_detect' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '# Misc Controls' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/module/sync/parameters/fsync_enabled' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/module/mmc_core/parameters/use_spi_crc' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/kernel/sched/gentle_fair_sleepers' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/kernel/sched/arch_power' >> /system/etc/init.d/89z_kernel;
echo '    echo "$FSYNC" > /sys/module/sync/parameters/fsync_enabled' >> /system/etc/init.d/89z_kernel;
echo '    echo "$CRC" > /sys/module/mmc_core/parameters/use_spi_crc' >> /system/etc/init.d/89z_kernel;
echo '    echo "$GFS" > /sys/kernel/sched/gentle_fair_sleepers' >> /system/etc/init.d/89z_kernel;
echo '    echo "$AP" > /sys/kernel/sched/arch_power' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '# Display Features' >> /system/etc/init.d/89z_kernel;
echo '	echo "$PANEL_UV" > /sys/module/board_msm8x60_celox/parameters/panel_uv' >> /system/etc/init.d/89z_kernel;
echo '	echo "$MDP" > /sys/module/mdp/parameters/mdp_gamma_cooler_colors' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '# CPU Frequency' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq' >> /system/etc/init.d/89z_kernel;
echo '    echo $MAXFREQ > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '# GPU frequency' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/max_gpuclk' >> /system/etc/init.d/89z_kernel;
echo '    chmod 664 /sys/devices/platform/kgsl-2d1.1/kgsl/kgsl-2d1/max_gpuclk' >> /system/etc/init.d/89z_kernel;
echo '    echo $GPU > /sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk' >> /system/etc/init.d/89z_kernel;
echo '    echo $GPU2D > /sys/devices/platform/kgsl-2d0.0/kgsl/kgsl-2d0/max_gpuclk' >> /system/etc/init.d/89z_kernel;
echo '    echo $GPU2D > /sys/devices/platform/kgsl-2d1.1/kgsl/kgsl-2d1/max_gpuclk' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;

echo '# BLN' >> /system/etc/init.d/89z_kernel;
echo '	echo "$BLN" > /sys/class/misc/enhanced_bln/blink_timeout_ms' >> /system/etc/init.d/89z_kernel;
echo ' ' >> /system/etc/init.d/89z_kernel;
