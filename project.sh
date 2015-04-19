DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/config.sh
rm -rf $PROJECTS/$1/Binaries
rm -rf $PROJECTS/$1/Intermediate
cd $UE4/UnrealEngine/Engine/Build/BatchFiles/Mac
./GenerateProjectFiles.sh ${1}Editor Mac Development $PROJECTS/$1/$1.uproject
$DIR/build.sh $1
