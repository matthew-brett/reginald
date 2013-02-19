.PHONY: dmg finally

finally:
	sudo reown_mpkg reginald.mpkg root admin
	./rewrite_plist.py reginald.mpkg

distclean:
	git clean -fxd

clean:
	rm -rf dmg/* dist/*

dmg:
	-mkdir dist
	-mkdir dmg
	cp -R reginald.mpkg dmg/
	cp reginald.mpkg/Contents/Resources/ReadMe.txt dmg
	cp reginald.mpkg/Contents/Resources/License.txt dmg
	hdiutil create ./dist/reginald.dmg -volname Reginald -srcfolder ./dmg/ -ov
