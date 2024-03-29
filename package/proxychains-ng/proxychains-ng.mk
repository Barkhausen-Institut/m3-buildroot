################################################################################
#
# proxychains-ng
#
################################################################################

PROXYCHAINS_NG_VERSION = 4.16
PROXYCHAINS_NG_SOURCE = proxychains-ng-$(PROXYCHAINS_NG_VERSION).tar.xz
PROXYCHAINS_NG_SITE = https://github.com/rofl0r/proxychains-ng/releases/download/v$(PROXYCHAINS_NG_VERSION)
PROXYCHAINS_NG_LICENSE = GPL-2.0+
PROXYCHAINS_NG_LICENSE_FILES = COPYING
PROXYCHAINS_NG_CPE_ID_VALID = YES

define PROXYCHAINS_NG_CONFIGURE_CMDS
	cd $(@D) && \
	$(TARGET_CONFIGURE_OPTS) CPPFLAGS="$(TARGET_CPPFLAGS) -fPIC" \
		./configure --prefix=/usr --sysconfdir=/etc
endef

define PROXYCHAINS_NG_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define PROXYCHAINS_NG_INSTALL_TARGET_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) DESTDIR=$(TARGET_DIR) install install-config
endef

$(eval $(generic-package))
