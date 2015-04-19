DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/config.sh
mkdir -p $DIST/$1
MODE=Shipping
# MODE=Development
$UE4/UnrealEngine/Engine/Build/BatchFiles/RunUAT.sh BuildCookRun -nocompileeditor -nop4 -project=$PROJECTS/$1/$1.uproject -cook -allmaps -stage -archive -archivedirectory=$DIST/$1 -package -clientconfig=$MODE -ue4exe=UE4Editor -clean -pak -prereqs -nodebuginfo -targetplatform=Mac -build -utf8output
echo MODE: $MODE
echo DIST: $DIST/$1
