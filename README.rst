####################
Reginald megapackage
####################

Lots of packages compiled into one, to sit on top of Python.org python

******
Recipe
******

* Install bare Python.org python
* Install distribute, bdist_mpkg, perhaps into own prefix
* You will need Cython to install pandas
* For all of numpy, scipy, matplotlib
     * Download dmg
     * Mount dmg
     * ``cp -r /Volumes/packagedmg/package.mpkg/Contents/Packages/*
       reginald.mpkg/Contents/Packages``

For all other packages, obtain installation source (including ``setup.py``) and:

* ``python setup.py bdist_mpkg --local-scripts --local-data``
* ``cp -r dist/*.mpkg/Contents/Packages <reggiedir>/reginald.mpkg/Contents/Packages``
* Adapt ``ReadMe.txt`` and ``Licence.txt`` in
  ``reginald.mpkg/Contents/Resources``, to reflect this package

********
Packages
********

* numpy: https://github.com/numpy/numpy
* scipy: https://github.com/scipy/scipy
* matplotlib: https://github.com/matplotlib/matplotlib
* nose: https://github.com/nose-devs/nose
* readline: https://github.com/ludwigschwardt/python-readline
* tornado: https://github.com/facebook/tornado
* distribute: http://pypi.python.org/pypi/distribute
* pip: https://github.com/pypa/pip
* pyzmq: https://github.com/zeromq/pyzmq
* ipython (including notebook): https://github.com/ipython/ipython
* sympy: https://github.com/sympy/sympy
* pandas: https://github.com/pydata/pandas
* cython: https://github.com/cython/cython
* nibabel: https://github.com/nipy/nibabel
* nipy: https://github.com/nipy/nipy
* pydicom: https://code.google.com/p/pydicom/

*******
Finally
*******

* ``sudo reown_mpkg reginald.mpkg root admin`` to set permissions correctly (command from
  bdist_mpkg)
* ``./rewrite_plist.py reginald.mpkg`` (make sure this is with the same python
  you will install into, because it creates a check that this python is
  installed when the installer starts.
* These automated with ``make finally``
* Then ``make dmg`` to make the disk image in the ``dist`` directory

***************
Don't forget to
***************

Update the version number of reginald in
``Contents/Resources/Description.plist``

Update the binary installer of Python needed in
``Contents/Resources/ReadMe.txt``
