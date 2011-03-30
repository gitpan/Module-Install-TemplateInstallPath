use strict;
use warnings;
use inc::Module::Install;

name 'Module-Install-TemplateInstallPath';
license 'gpl3';

all_from 'lib/Module/Install/TemplateInstallPath.pm';

use_standard_tests;
auto_license;
auto_manifest;

WriteAll;
