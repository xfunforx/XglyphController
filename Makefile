include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = XglyphControl
XglyphControl_FILES = main.m XXAppDelegate.m XXRootViewController.m
XglyphControl_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"XglyphControl\"" || true
