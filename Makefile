.PHONY: dmg finally

finally:
	sudo reown_mpkg reginald.mpkg root admin
	./rewrite_plist.py reginald.mpkg

clean:
	git clean -fxd

dmg:
	-mkdir dist
	cp -r reginald.mpkg dmg
	cp reginald.mpkg/Contents/Resources/ReadMe.txt dmg
	hdiutil create ./dist/reginald.dmg -volname Reginald -srcfolder ./dmg/ -ov
