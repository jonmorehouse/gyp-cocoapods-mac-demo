all: HopAPI.xcodeproject Pods


HopAPI.xcodeproject:
	gyp --depth=.

Pods:
	pod install 

cleanproject:
	rm -rf Pod.lock
	rm -rf Pods
	rm -rf *.xc*
