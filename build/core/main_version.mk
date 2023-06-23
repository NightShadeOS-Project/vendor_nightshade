# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# NightShadeOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.nightshade.version=$(NIGHTSHADE_VERSION) \
    ro.nightshade.releasetype=$(NIGHTSHADE_BUILDTYPE) \
    ro.nightshade.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(NIGHTSHADE_VERSION) 

# NightShadeOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.nightshade.display.version=$(NIGHTSHADE_DISPLAY_VERSION)

# NightShadeOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.nightshade.build.version.plat.rev=$(NIGHTSHADE_PLATFORM_REV)
