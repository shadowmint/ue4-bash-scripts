DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/config.sh
lldb $EDITOR_EXE -- $PROJECTS/$1/$1.uproject -Game -ResX=200 -ResY=200
