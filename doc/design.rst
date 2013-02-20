###
API
###

::

    from pkgmakers import DmgPkgMaker, GithubPkgMaker, TarballPkgMaker

    numpy_maker = DmgPkgMaker(
    url="http://downloads.sourceforge.net/project/numpy/NumPy/1.7.0/numpy-1.7.0-py2.7-python.org-macosx10.6.dmg?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fnumpy%2Ffiles%2FNumPy%2F1.7.0%2F&ts=1361339132&use_mirror=hivelocity"

*****
Steps
*****

* Select distribution (e.g.
  ``/Library/Frameworks/Python.frameworks/Versions/2.7``)
* Find installer for this distribution
* Nuke distribution
* Install distribution
* Install distribute
* Install bdist_mpkg_
* Install numpy
    * installer numpy.mpkg
* Get numpy pkgs
    * Copy out of DMG installer
* Register numpy version to ReadMe.txt
* Etc for other packages
* Build DMG
* Nuke distribution
* Install distribution
* Install reginald from DMG
* Run tests
