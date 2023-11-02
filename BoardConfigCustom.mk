#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Add before redbull BoardConfigCustom.mk
BOOT_KERNEL_MODULES += ftm5.ko

include device/google/redbull/BoardConfigEvolution.mk

include vendor/google/bramble/BoardConfigVendor.mk

DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
