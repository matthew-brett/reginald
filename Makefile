finally:
	sudo reown_mpkg reginald.mpkg root admin
	./rewrite_plist.py reginald.mpkg
