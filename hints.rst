*************
Mounting DMGs
*************

http://stackoverflow.com/questions/6357914/how-do-i-install-a-dmg-file-from-the-command-line

::

    hdiutil attach -mountpoint <path-to-desired-mountpoint> <filename.dmg>

e.g::

    hdiutil attach -mountpoint mounted ~/Downloads/python-2.7.5-macosx10.6.dmg

*************
Creating DMGs
*************

http://stackoverflow.com/questions/96882/how-do-i-create-a-nice-looking-dmg-for-mac-os-x-using-command-line-tools

::

    source=dmg_template
    title=the_full_monty
    size=2000
    hdiutil create -srcfolder "${source}" -volname "${title}" -fs HFS+ \
        -fsargs "-c c=64,a=16,e=16" -format UDRW -size ${size}m pack.temp.dmg

    device=$(hdiutil attach -readwrite -noverify -noautoopen "pack.temp.dmg" | \
            egrep '^/dev/' | sed 1q | awk '{print $1}')

Then::

    hdiutil unmount $device


***************************************
Installing mpkg files from command line
***************************************

::

    sudo installer -package mounted/Python.mpkg -target /Volumes/the_full_monty/
