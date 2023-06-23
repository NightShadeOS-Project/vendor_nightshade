include vendor/nightshade/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/nightshade/config/BoardConfigQcom.mk
endif

include vendor/nightshade/config/BoardConfigSoong.mk
