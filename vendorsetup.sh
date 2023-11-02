#!/bin/sh

# Guard
if ! history | tail -n 1 | grep -q "bramble"; then return; fi

# This is unofficial build
unset EVO_BUILD_TYPE

# Go to root of source
CUR_DIR=$(pwd) && croot

# Vendor blobs
VENDOR=vendor/google/bramble/bramble-vendor.mk
if ! [ -a $VENDOR ]; then git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_google_bramble vendor/google/bramble ; fi

# Remove conflict packages
rm -rf vendor/gms/product/packages/privileged_apps/DeviceIntelligenceNetworkPrebuilt
rm -rf vendor/gms/product/packages/privileged_apps/DevicePersonalizationPrebuiltPixel2020

# Back to previous directory
cd $CUR_DIR

return
