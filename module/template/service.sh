resetprop ro.boot.flash.locked 1
resetprop ro.boot.verifiedbootstate green
resetprop ro.secureboot.lockstate locked
resetprop ro.boot.vbmeta.device_state locked
DEBUG=@DEBUG@

MODDIR=${0%/*}

cd $MODDIR

(
while true; do
  ./daemon || exit 1
done
) &
