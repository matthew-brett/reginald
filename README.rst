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

For all other packages, obtain installation source (including ``setup.py``)
and::

* ``python setup.py bdist_mpkg --local-scripts --local-data``
* ``cp -r dist/*.mpkg/Contents/Packages <reggiedir>/reginald.mpkg/Contents/Packages``
* Adapt ``reginald.mpkg/Contents/Resources/ReadMe.txt, and license to reflect
  this package

********
Packages
********

https://github.com/nose-devs/nose
https://github.com/ludwigschwardt/python-readline
https://github.com/facebook/tornado
http://pypi.python.org/pypi/distribute
https://github.com/zeromq/pyzmq
https://github.com/ipython/ipython
https://github.com/sympy/sympy
https://github.com/nipy/nibabel
https://github.com/nipy/nipy
https://github.com/pypa/pip
https://github.com/cython/cython
https://github.com/pydata/pandas
https://code.google.com/p/pydicom/

*******
Finally
*******

* ``sudo reown_mpkg reginald.mpkg root admin`` to set permissions correctly (command from
  bdist_mpkg)
* ``./rewrite_plist.py reginald.mpkg``
* hdiutil create dmg

***************
Don't forget to
***************

Update the version number of reginald in
``Contents/Resources/Description.plist``
