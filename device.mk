#
# Copyright 2018 The Android Open Source Project
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

# Display
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Recovery
TARGET_RECOVERY_DEVICE_MODULES += libion libandroidicu

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/sweet/obj/SHARED_LIBRARIES/libandroidicu_intermediates/libandroidicu.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libandroidicu.so
