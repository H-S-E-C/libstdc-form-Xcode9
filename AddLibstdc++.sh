# libstdc-form-Xcode9
echo "请进入 */Xcode.app/ 路径后运行脚本...
        bash /Users/*/libstdc-form-Xcode9/AddLibstdc++.sh"

DIR=$(dirname "${BASH_SOURCE[0]}")

sudo cp -v $DIR/dylib/* Contents/Developer/Platforms/iPhoneOS.platform/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib/


sudo echo Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/ Contents/Developer/Platforms/DriverKit.platform/Developer/SDKs/DriverKit.sdk/System/DriverKit/usr/lib/ | xargs -n 1 cp -v $DIR/tbd/*

sudo cp -v -r $DIR/include/* Contents/Developer/Platforms/iPhoneOS.platform/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib/

echo "🍻 添加 c++98 & 4.2.1 完成，需重启 Xcode"
