############################################################################### 
#
#  The MIT License
#  Copyright (c) 2018 MXCHIP Inc.
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy 
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights 
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is furnished
#  to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in
#  all copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
#  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR 
#  IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
############################################################################### 

NAME := TARGET_MOC108


$(NAME)_SOURCES := ../platform_retarget.c
                   
GLOBAL_INCLUDES := .


$(NAME)_COMPONENTS := platform/alios/aos_peripheral \
                      platform/alios/aos_wlan

DEFAULT_LINK_SCRIPT += TOOLCHAIN_$(TOOLCHAIN_NAME_MBED)/moc108$(LINK_SCRIPT_SUFFIX)

EXTRA_TARGET_MAKEFILES +=  ./mico-os/platform/alios/TARGET_MOC108/moc108_standard_targets.mk
EXTRA_TARGET_MAKEFILES +=  ./mico-os/platform/alios/TARGET_MOC108/gen_crc_bin.mk


