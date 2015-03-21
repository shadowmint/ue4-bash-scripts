DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/config.sh
rm -f $PROJECTS/$1/Binaries/Mac/UE4Editor-$1.dylib
cd /Users/doug/dev/unreal/UnrealEngine
./Engine/Build/BatchFiles/Mac/Build.sh ${1}Editor Mac Development $PROJECTS/$1/$1.uproject
