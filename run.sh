DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/config.sh
$EDITOR_EXE $PROJECTS/$1/$1.uproject -Game -ResX=800 -ResY=600
