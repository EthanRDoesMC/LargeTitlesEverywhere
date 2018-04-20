FINALPACKAGE = 1
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LargeTitlesEverywhere
LargeTitlesEverywhere_FILES = Tweak.xm
LargeTitlesEverywhere_LIBRARIES = applist



include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
