#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Add before redbull BoardConfigLineage.mk
BOOT_KERNEL_MODULES += ftm5.ko

include device/google/redbull/BoardConfigEvolution.mk

BOOT_SECURITY_PATCH := 2023-11-05
VENDOR_SECURITY_PATCH := 2023-11-05

include vendor/google/bramble/BoardConfigVendor.mk

# Disable mainline checking
#PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := strict
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
