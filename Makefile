all: 
	echo "Options : \n\tDEBUG_DUMMY_1|2 \n\tDEBUG_SLIPPERY_1|2\n\tDEBUG_SMUGGLER_1|2\n\tSLIPPERY_SMUGGLER_1\2" \
	



DEBUG_DUMMY_1:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_DUMMY) $(CONFIG_1) $(MAP_1) 1 debug_vs_dummy_map_1
DEBUG_DUMMY_2:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_DUMMY) $(CONFIG_2) $(MAP_2) 1 debug_vs_dummy_map_2


DEBUG_SLIPPERY_1:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_SMUGGLER) $(CLIENT_SLIPPERY) $(CONFIG_1) $(MAP_1) 10 debug_vs_slippery_map_1
DEBUG_SLIPPERY_2:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_SMUGGLER) $(CLIENT_SLIPPERY) $(CONFIG_2) $(MAP_2) 10 debug_vs_slippery_map_2

DEBUG_SMUGGLER_1:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_SMUGGLER) $(CLIENT_SLIPPERY) $(CONFIG_1) $(MAP_1) 10 debug_vs_smuggler_map_1
DEBUG_SMUGGLER_2:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_SMUGGLER) $(CLIENT_SLIPPERY) $(CONFIG_2) $(MAP_2) 10 debug_vs_smuggler_map_2



SLIPPERY_SMUGGLER_1:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_SMUGGLER) $(CLIENT_SLIPPERY) $(CONFIG_1) $(MAP_1) 10 slippery_vs_smuggler_map_1
SLIPPERY_SMUGGLER_2:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_SMUGGLER) $(CLIENT_SLIPPERY) $(CONFIG_2) $(MAP_2) 10 slippery_vs_smuggler_map_2





SCRIPT_PATH=./script.sh

SERVER=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/hideandseek-0.1.0.jar

CLIENT_DEBUG=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Client-Java/target/aic22-client-java-1.0-SNAPSHOT.jar
CLIENT_DUMMY=/home/yolo/Workstation/Clones/AiChallenge/AIBank/dummy.jar
CLIENT_SLIPPERY=/home/yolo/Workstation/Clones/AiChallenge/AIBank/noBrainerCopAndSlipperyThief.jar
CLIENT_SMUGGLER=/home/yolo/Workstation/Clones/AiChallenge/AIBank/SWATCopAndExpertSmuggler.jar


DEBUG_CONFIG=./map.yml

MAP_1=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map.json
CONFIG_1=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map.yml

MAP_2=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map2/map.json
CONFIG_2=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map2/map.yml

DATE=$(shell date +%m-%d-%H-%M-%S)



