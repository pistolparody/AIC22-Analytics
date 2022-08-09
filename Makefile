all: default


default:
	$(SCRIPT_PATH) $(SERVER) $(CLIENT_1) $(CLIENT_2) $(DEBUG_CONFIG) $(MAP_1) 5 slippery_vs_smuggler
	


SCRIPT_PATH=./script

SERVER=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/hideandseek-0.1.0.jar

CLIENT_1=/home/yolo/Workstation/Clones/AiChallenge/AIBank/noBrainerCopAndSlipperyThief.jar
CLIENT_2=/home/yolo/Workstation/Clones/AiChallenge/AIBank/SWATCopAndExpertSmuggler.jar

DEBUG_CONFIG=./map.yml

MAP_1=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map.json
CONFIG_1=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map.yml

MAP_2=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map2/map.json
CONFIG_2=/home/yolo/Workstation/Clones/AiChallenge/AIC22-Server/map2/map.yml

DATE=$(shell date +%m-%d-%H-%M-%S)



