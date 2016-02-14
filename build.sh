DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/config.sh
cd $UE4/UnrealEngine
echo "Building: $PROJECTS/$1/$1.uproject"
./Engine/Build/BatchFiles/Mac/Build.sh TestProjectEditor Mac Development $PROJECTS/$1/$1.uproject
