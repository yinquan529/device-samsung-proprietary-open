include $(CLEAR_VARS)

.PHONY: ath6k-build

droid: ath6k-build

linaro-supplement: ath6k-build

ath6k-build:
	cd device/samsung/proprietary-open && \
	mkdir -p ../../../$(PRODUCT_OUT)/system/etc/firmware && \
	cp -R ath6k ../../../$(PRODUCT_OUT)/system/etc/firmware
