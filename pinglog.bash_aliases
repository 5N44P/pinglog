# pinglog aliases and variables

export PINGLOG_PATH="/root/pinglog"
export PINGLOG_STORAGE="/mnt/sda1/pinglog"

alias pinglog-today='cat $PINGLOG_STORAGE/`date +%Y-%m-%d`.txt'
alias pinglog-list='ls $PINGLOG_STORAGE | sed "s/.txt//"'
alias pinglog-now='$PINGLOG_PATH/pinglog.sh'
