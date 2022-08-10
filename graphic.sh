# arg 1 : graphic path
# arg 2 : type string 


abort()
{
    echo Aborting ...
    exit 1
}


if [ $# -lt 2 ]
then 
    
    echo "$0 : I need at least 2 arguments , not $#"
    echo "\targ 1 : graphic path "
    echo "\targ 2 : type string "
    echo "\targ 3 : type string child (optional) "

    
    abort
fi

target=logs/saves/$2
target_size=$(find $target -type d | wc -l)
last_directory=$target/$(($target_size-2))
specified_directory=$target/$3



[ $# -ge 3 ] && [ ! -f $specified_directory/server.log ] && echo Specified directory does not exist !, at : $specified_directory && abort
[ ! -f $1 ] && echo Error : Graphic file does not exist at : \<$1\> && abort

[ ! -d $target ] && echo Error : Target directory at \<$target\>  does not exist! && abort
[ ! -d $last_directory ] && echo Error : Last directory at : \<$last_directory\> does not exit! && abort


if [ ! -f $specified_directory/server.log ]
then
    echo Last directory path : $last_directory
    echo Last directory contents : $(ls $last_directory)

    echo "Running $last_directory/server.log with \<$1\> \n"

    java -jar $1 $last_directory/server.log

    echo "\n$1 is done with $last_directory/server.log "

else
    echo Specified directory path : $specified_directory
    echo Specified directory contents : $(ls $specified_directory)

    echo "Running $specified_directory/server.log with \<$1\> \n"

    java -jar $1 $specified_directory/server.log

    echo "\n$1 is done with $last_directory/server.log "
 
fi






