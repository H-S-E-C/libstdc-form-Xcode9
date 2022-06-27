# libstdc-form-Xcode9
echo " - 1 确认已进入 Xcode.app/ 目录"

if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi
echo " - 2"

sudo cp ${BASH_SOURCE[0]}/libstdc++.6.0.9.dylib
    Contents/Developer/Platforms/iPhoneOS.platform/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib/
echo " - 3"

sudo echo Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/ Contents/Developer/Platforms/DriverKit.platform/Developer/SDKs/DriverKit.sdk/System/DriverKit/usr/lib/I xargs -n 1 cp -v ${BASH_SOURCE[0]}/libstdc++.6.0.9.tbd
    
#sudo cp ${BASH_SOURCE[0]}/libstdc++.6.0.9.tbd
#    Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/
#
#sudo cp ${BASH_SOURCE[0]}/libstdc++.6.0.9.tbd
#    Contents/Developer/Platforms/DriverKit.platform/Developer/SDKs/DriverKit.sdk/System/DriverKit/usr/lib/
    
echo "libstdc++ 添加成功"
