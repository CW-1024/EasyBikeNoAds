ARCHS = arm64

TARGET := iphone:clang:latest:14.0

DEBUG = 0

FINALPACKAGE=1

INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EasyBikeNoAds

EasyBikeNoAds_FILES = Tweak.xm
EasyBikeNoAds_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
