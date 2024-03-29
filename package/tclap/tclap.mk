################################################################################
#
# tclap
#
################################################################################

TCLAP_VERSION = 1.2.4
TCLAP_SITE = http://downloads.sourceforge.net/project/tclap
TCLAP_LICENSE = MIT
TCLAP_LICENSE_FILES = COPYING
TCLAP_INSTALL_STAGING = YES
TCLAP_CPE_ID_VALID = YES

# This package is a pure C++ template library, only made of headers.
TCLAP_INSTALL_TARGET = NO

$(eval $(autotools-package))
