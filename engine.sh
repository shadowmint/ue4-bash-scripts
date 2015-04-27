DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/config.sh
cd $UE4/UnrealEngine
rm -rf Engine/Intermediate
xcodebuild -target "UE4Editor - Mac"
