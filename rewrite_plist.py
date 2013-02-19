#!/usr/bin/env python
import os
from os.path import abspath, join as pjoin, split as psplit
import sys
from glob import glob
from bdist_mpkg.plists import mpkg_info, write, python_requirement
from bdist_mpkg import tools

PKG_NAME = 'reginald'
COMPONENT_DIRECTORY = 'Contents/Packages'

def main():
    try:
        wd = sys.argv[1]
    except IndexError:
        wd = os.getcwd()
    wd = abspath(wd)
    package_names = glob(pjoin(wd, COMPONENT_DIRECTORY, '*.pkg'))
    package_names = [psplit(pn)[1] for pn in package_names]
    n_pkgs = len(package_names)
    extra_plist = dict(
            IFRequirementDicts=[python_requirement(PKG_NAME)],
            IFPkgFlagComponentDirectory=tools.unicode_path(
                './' + COMPONENT_DIRECTORY))
    plist = mpkg_info(PKG_NAME, '1.7',
                      zip(package_names, ('selected',) * n_pkgs))
    plist.update(extra_plist)
    write(plist, pjoin(wd, 'Contents', 'Info.plist'))


if __name__ == '__main__':
    main()
