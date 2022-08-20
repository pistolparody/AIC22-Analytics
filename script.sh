# arg 1 : server path 
# arg 2 : client 1 path
# arg 3 : client 2 path
# arg 4 : game config file
# arg 5 : map file
# arg 6 : iteration count
# arg 7 : type string

if [ $# -ne 7 ]
then 
    echo "$0 : I need exactly Six arguments"
    echo "\targ 1 : server path "
    echo "\targ 2 : client 1 path"
    echo "\targ 2 : client 2 path"
    echo "\targ 4 : game config file"
    echo "\targ 5 : map file"
    echo "\targ 6 : iteration count"
    echo "\targ 7 : type string"

    exit 1
fi

server_path=$1
first_client_path=$2
second_client_path=$3
game_config_path=$4
map_path=$5
iteration_count=$6
type_string=$7

[ ! -f $server_path ] && echo "Error : server_path file : \"$server_path\" does not exist!, Aborting..." && exit 1
[ ! -f "$first_client_path" ] && echo "Error : first_client_path file : \"$first_client_path\" does not exist!, Aborting..." && exit 1
[ ! -f "$second_client_path" ] && echo "Error : second_client_path file : \"$second_client_path\" does not exist!, Aborting..." && exit 1
[ ! -f "$game_config_path" ] && echo "Error : game_config_path file : \"$game_config_path\" does not exist!, Aborting..." && exit 1
[ ! -f "$map_path" ] && echo "Error : map_path file : \"$map_path\" does not exist!, Aborting..." && exit 1




case $iteration_count in
    ''|*[!0-9]*) echo "Error : \"$iteration_count\" is not a number!, Aborting..." ; exit 1 ;;
    *) 
esac


saves=logs/saves
server_log_path=logs/server.log
details_log_path=logs/details.log
winner_log_path=logs/winner.log

result_path=$saves/$type_string/result.result


clean()
{
    [ -f $result_path ] && rm $result_path
    [ -f $server_log_path ] && rm $server_log_path
    [ -f $details_log_path ] && rm $details_log_path
    [ -f $winner_log_path ] && rm $winner_log_path
}

run()
{
    echo "java -jar $server_path --first-team=\"$first_client_path\" --second-team=\"$second_client_path\" $game_config_path $map_path"
    java -jar $server_path --first-team="$first_client_path" --second-team="$second_client_path" $game_config_path $map_path

}


backup(){
   local savesLength="$(ls $saves/$type_string|wc -l)";
   [ -d $saves/$type_string/$savesLength ] && echo "Folder $saves/$type_string/$savesLength already exists!, aborting..." && exit 1

   [ ! -f $server_log_path ] && echo "Error : Could not find server log at : $server_log_path" && exit 1
   [ ! -f $details_log_path ] && echo "Error : Could not find details log at : $details_log_path" && exit 1
   [ ! -f $winner_log_path ] && echo "Error : Could not find server log at : $winner_log_path" && exit 1


   mkdir $saves/$type_string/$savesLength
   cp $server_log_path $saves/$type_string/$savesLength/server.log
   cp $details_log_path $saves/$type_string/$savesLength/details.log
   cp $winner_log_path $saves/$type_string/$savesLength/winner.log
}

stuff(){

    [ -f $result_path ] && rm $result_path
    [ ! -f $result_path ] && touch $result_path

    for f in $(find $saves/$type_string | grep winner.log); do echo "{ file : $f , content : {$(cat $f)} }" >> $result_path ;done

    var=$(cat $result_path | grep "\"winner\":0" | wc -l)
    var2=$(cat $result_path | grep "\"winner\":1" | wc -l)

    Payam="\nTotal games $(($var + $var2)) :\n\t Client 1 wins : $var \n\t Client 2 wins : $var2"


    echo "Creating temp result file at : $result_path"
    echo $Payam >> $result_path
}

[ ! -d $saves/$type_string ] && mkdir -p $saves/$type_string


for i in `seq $iteration_count`; do echo "server run count : $i" ; clean; stuff;  run ; backup ; done


clean

echo "All $iteration_count server iterations are completed \n Creating the result file at : $result_path"

stuff




exit 0;

