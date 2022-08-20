all: 
	echo "Options : \n\tDEBUG_DUMMY_1|2 \n\tDEBUG_SLIPPERY_1|2\n\tDEBUG_SMUGGLER_1|2\n\tSLIPPERY_SMUGGLER_1\2" \
	

DEBUG_DUMMY_1:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_DUMMY) $(CONFIG_1) $(MAP_1) 1 debug_vs_dummy_map_1
DEBUG_DUMMY_2:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_DUMMY) $(CONFIG_2) $(MAP_2) 1 debug_vs_dummy_map_2



DEBUG_SLIPPERY_1:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SLIPPERY) $(CONFIG_1) $(MAP_1) 1 debug_vs_slippery_map_1
DEBUG_SLIPPERY_2:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SLIPPERY) $(CONFIG_2) $(MAP_2) 1 debug_vs_slippery_map_2

DEBUG_SMUGGLER_1:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SMUGGLER) $(CONFIG_1) $(MAP_1) 1 debug_vs_smuggler_map_1
DEBUG_SMUGGLER_2:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SMUGGLER) $(CONFIG_2) $(MAP_2) 1 debug_vs_smuggler_map_2

DEBUG_SPECIAL_1:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SPECIAL) $(CONFIG_1) $(MAP_1) 100 debug_vs_special_map_1
DEBUG_SPECIAL_2:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SPECIAL) $(CONFIG_2) $(MAP_2) 1 debug_vs_special_map_2

DEBUG_ROBOCOP_1:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_ROBOCOPSQUAD) $(CONFIG_1) $(MAP_1) 100 debug_vs_robocopsquad_map_1
DEBUG_ROBOCOP_2:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_ROBOCOPSQUAD) $(CONFIG_2) $(MAP_2) 1 debug_vs_robocopsquad_map_2



DEBUG_SLIPPERY_3:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SLIPPERY) $(CONFIG_3) $(MAP_3) 1 debug_vs_slippery_map_3
DEBUG_SLIPPERY_4:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SLIPPERY) $(CONFIG_4) $(MAP_4) 1 debug_vs_slippery_map_4

DEBUG_SMUGGLER_3:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SMUGGLER) $(CONFIG_3) $(MAP_3) 1 debug_vs_smuggler_map_3
DEBUG_SMUGGLER_4:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SMUGGLER) $(CONFIG_4) $(MAP_4) 1 debug_vs_smuggler_map_4

DEBUG_SPECIAL_3:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SPECIAL) $(CONFIG_3) $(MAP_3) 1 debug_vs_special_map_3
DEBUG_SPECIAL_4:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_DEBUG) $(CLIENT_SPECIAL) $(CONFIG_4) $(MAP_4) 1 debug_vs_special_map_4












SCRIPT_PATH=./script.sh

SERVER=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/hideandseek-0.1.0.jar

CLIENT_DEBUG=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Client-Java/target/aic22-client-java-1.0-SNAPSHOT.jar
CLIENT_DUMMY=/home/yolo/Workstation/Clones/AiChallenge/AIBank/dummy.jar
CLIENT_SLIPPERY=/home/yolo/Workstation/Clones/AiChallenge/AIBank/noBrainerCopAndSlipperyThief.jar
CLIENT_SMUGGLER=/home/yolo/Workstation/Clones/AiChallenge/AIBank/SWATCopAndExpertSmuggler.jar
CLIENT_SPECIAL=/home/yolo/Workstation/Clones/AiChallenge/AIBank/SpecialForcesAndExpertSmuggler.jar
CLIENT_ROBOCOPSQUAD=/home/yolo/Workstation/Clones/AiChallenge/AIBank/RoboCopSquadAndExpertSmuggler.jar



DEBUG_CONFIG=./map.yml

MAP_1=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map.json
CONFIG_1=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map.yml

MAP_2=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map2/map.json
CONFIG_2=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map2/map.yml

MAP_3=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map3/map.json
CONFIG_3=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map3/map.yml


MAP_4=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map4/map.json
CONFIG_4=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map4/map.yml


DATE=$(shell date +%m-%d-%H-%M-%S)



