.PHONY: gen apk web win ncommit pull ico commit  iclean ireset isims ipa pull splash

gen:
	flutter pub run build_runner build --delete-conflicting-outputs

apk:
	flutter build apk 

web:
	flutter run -d web 

win:
	flutter run -d windows

ncommit:
	git add .
	git commit -m "ncommit"
	git push origin main 

pull:
	git add .
	git commit -m "ncommit"
	git pull origin main

ico:
	flutter pub get
	flutter pub run flutter_launcher_icons

commit:
	git add .
	git commit -m "ncommit"
	git push origin main

iclean:
	flutter clean
	xcrun simctl shutdown all && xcrun simctl erase all

ireset:
	flutter clean
	xcrun simctl shutdown all && xcrun simctl erase all
	flutter pub get

isims:
	xcrun simctl list devices

ipa:
	flutter build ipa

splash:
	dart run flutter_native_splash:create

ofb:
	npm install -g firebase-tools
	firebase login
	firebase init hosting
	flutter build web

pfd:
	flutter pub add pdf 
	flutter pub add pdfx 
	flutter pub run pdfx:install_web