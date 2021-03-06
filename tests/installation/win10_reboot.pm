# SUSE's openQA tests
#
# Copyright © 2016-2018 SUSE LLC
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

# Summary: Add separate windows reboot test
# Maintainer: Ludwig Nussel <ludwig.nussel@suse.de>

use base "installbasetest";
use strict;

use testapi;
use windows_utils;

sub run {
    send_key 'super';    # windows menu

    assert_screen 'windows-menu';

    send_key 'up';
    send_key 'up';
    send_key 'spc';      # press power button
    send_key 'up';
    send_key 'spc';      # press shutdown button

    wait_boot_windows;
}

1;
