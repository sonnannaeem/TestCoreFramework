xcodebuild archive \
-scheme TestCoreFramework \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/TestCoreFramework.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild archive \
-scheme TestCoreFramework \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/TestCoreFramework.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild archive \
-scheme TestCoreFramework \
-configuration Release \
-destination 'platform=macOS,arch=x86_64,variant=Mac Catalyst' \
-archivePath './build/TestCoreFramework.framework-catalyst.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild -create-xcframework \
-framework './build/TestCoreFramework.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/TestCoreFramework.framework' \
-framework './build/TestCoreFramework.framework-iphoneos.xcarchive/Products/Library/Frameworks/TestCoreFramework.framework' \
-framework './build/TestCoreFramework.framework-catalyst.xcarchive/Products/Library/Frameworks/TestCoreFramework.framework' \
-output './build/TestCoreFramework.xcframework'