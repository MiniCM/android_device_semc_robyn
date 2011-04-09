#!/system/bin/sh

echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 90 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
echo 30 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/down_differential
echo 500000 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
echo 245760 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq

# Needed by radio
mkdir /data/radio
chmod 0777 /data/radio
chmod 0777 /dev/oncrpc
chmod 0777 /dev/oncrpc/*

# Symlinking /sdcard to /mnt/sdcard for compatibility
rmdir /sdcard
ln -s /mnt/sdcard /sdcard

# Symlinks for compass
ln -s /dev/akm8973_aot /dev/akm8975_aot
ln -s /dev/akm8973_daemon /dev/akm8975_daemon

chmod 0777 /data/local/tmp/
