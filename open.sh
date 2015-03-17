DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/config.sh
open $EDITOR --args $PROJECTS/$1/$1.uproject
