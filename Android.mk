include $(CLEAR_VARS)

.PHONY: ath6k-build bluetooth-build

droid: ath6k-build bluetooth-build

linaro-supplement: ath6k-build bluetooth-build

systemtarball: ath6k-build bluetooth-build

ath6k-build:
	cd device/samsung/proprietary-open && \
	mkdir -p ../../../$(PRODUCT_OUT)/system/etc/firmware && \
	cp -R ath6k ../../../$(PRODUCT_OUT)/system/etc/firmware

bluetooth-build:
	cd device/samsung/proprietary-open && \
	mkdir -p ../../../$(PRODUCT_OUT)/system/etc/firmware && \
	cp -R bluetooth ../../../$(PRODUCT_OUT)/system/etc/firmware
