DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/config.sh
$DIR/build.sh $1
$EDITOR_EXE $PROJECTS/$1/$1.uproject -Game -ExecCmds="Automation RunTests $1Tests" -unattended -nopause -testexit="Automation Test Queue Empty" -log="TestResults.txt"
echo "open ~/Library/Logs/$1/TestResults.txt"
