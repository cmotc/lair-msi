windows:
	make win64
	make win32

win64:
	nodejs ${HOME}/node_modules/.bin/msi-packager \
		${HOME}/Projects/lair-manifest/lair-msi/bin \
		${HOME}/Projects/lair-manifest/lair-msi/lair-x64.msi \
		-n LAIR \
		-v .9 \
		-m lair \
		-a x64 \
		-u 5D2652D8-DF11-11E6-A08B-0026B9C08CE9 \
		-e ./lair-x64.exe \
		-i ${HOME}/Projects/lair-manifest/lair-msi/location_generic.ico \
		-l

win32:
	nodejs ${HOME}/node_modules/.bin/msi-packager \
		${HOME}/Projects/lair-manifest/lair-msi/bin \
		${HOME}/Projects/lair-manifest/lair-msi/lair-x86.msi \
		-n LAIR \
		-v .9 \
		-m lair \
		-a x86 \
		-u 5D2652D8-DF11-11E6-A08B-0026B9C08CE9 \
		-e ./lair-x86.exe \
		 -i ${HOME}/Projects/lair-manifest/lair-msi/location_generic.ico \
		-l
