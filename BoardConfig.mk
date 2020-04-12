#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from common tb-common
-include device/lenovo/tb-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/TBX304

# Asserts
TARGET_OTA_ASSERT_DEVICE := TB-X304F,TB-X304L,tb_x304l,tb_x304f,tb_x304

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_TS_MAKEUP := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_tbx304
TARGET_RECOVERY_DEVICE_MODULES := libinit_tbx304

# Kernel
TARGET_KERNEL_CONFIG := lineageos_tb8504_defconfig
#TARGET_PREBUILT_KERNEL := device/lenovo/TBX304/Image.gz-dtb

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 9652640768

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/lenovo/TBX304/BoardConfigVendor.mk

#WITH_DEXPREOPT := false
