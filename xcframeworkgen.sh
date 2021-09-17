# BrightcovePlayerSDK
mkdir -p BrightcovePlayerSDK
mkdir -p BrightcovePlayerSDK/iphoneos
mkdir -p BrightcovePlayerSDK/iphonesim
cp -R BrightcovePlayerSDK.framework BrightcovePlayerSDK/iphoneos/BrightcovePlayerSDK.framework
cp -R BrightcovePlayerSDK.framework BrightcovePlayerSDK/iphonesim/BrightcovePlayerSDK.framework
xcrun lipo -remove x86_64 ./BrightcovePlayerSDK/iphoneos/BrightcovePlayerSDK.framework/BrightcovePlayerSDK -o ./BrightcovePlayerSDK/iphoneos/BrightcovePlayerSDK.framework/BrightcovePlayerSDK
xcrun lipo -remove arm64 ./BrightcovePlayerSDK/iphonesim/BrightcovePlayerSDK.framework/BrightcovePlayerSDK -o ./BrightcovePlayerSDK/iphonesim/BrightcovePlayerSDK.framework/BrightcovePlayerSDK
xcodebuild -create-xcframework -framework BrightcovePlayerSDK/iphoneos/BrightcovePlayerSDK.framework -framework BrightcovePlayerSDK/iphonesim/BrightcovePlayerSDK.framework -output "BrightcovePlayerSDK.xcframework"
rm -rf BrightcovePlayerSDK

# BrightcovePlayerSDK
mkdir -p BrightcoveGoogleCast
mkdir -p BrightcoveGoogleCast/iphoneos
mkdir -p BrightcoveGoogleCast/iphonesim
cp -R BrightcoveGoogleCast.framework BrightcoveGoogleCast/iphoneos/BrightcoveGoogleCast.framework
cp -R BrightcoveGoogleCast.framework BrightcoveGoogleCast/iphonesim/BrightcoveGoogleCast.framework
xcrun lipo -remove x86_64 ./BrightcoveGoogleCast/iphoneos/BrightcoveGoogleCast.framework/BrightcoveGoogleCast -o ./BrightcoveGoogleCast/iphoneos/BrightcoveGoogleCast.framework/BrightcoveGoogleCast
xcrun lipo -remove arm64 ./BrightcoveGoogleCast/iphonesim/BrightcoveGoogleCast.framework/BrightcoveGoogleCast -o ./BrightcoveGoogleCast/iphonesim/BrightcoveGoogleCast.framework/BrightcoveGoogleCast
xcodebuild -create-xcframework -framework BrightcoveGoogleCast/iphoneos/BrightcoveGoogleCast.framework -framework BrightcoveGoogleCast/iphonesim/BrightcoveGoogleCast.framework -output "BrightcoveGoogleCast.xcframework"
rm -rf BrightcoveGoogleCast

# GoogleCast
mkdir -p GoogleCast
mkdir -p GoogleCast/iphoneos
mkdir -p GoogleCast/iphonesim
cp -R GoogleCast.framework GoogleCast/iphoneos/GoogleCast.framework
cp -R GoogleCast.framework GoogleCast/iphonesim/GoogleCast.framework
xcrun lipo -remove i386 -remove x86_64 -remove armv7 ./GoogleCast/iphoneos/GoogleCast.framework/GoogleCast -o ./GoogleCast/iphoneos/GoogleCast.framework/GoogleCast
xcrun lipo -remove arm64 -remove i386 -remove armv7 ./GoogleCast/iphonesim/GoogleCast.framework/GoogleCast -o ./GoogleCast/iphonesim/GoogleCast.framework/GoogleCast
xcodebuild -create-xcframework -framework GoogleCast/iphoneos/GoogleCast.framework -framework GoogleCast/iphonesim/GoogleCast.framework -output "GoogleCast.xcframework"
rm -rf GoogleCast
