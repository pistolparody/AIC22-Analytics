# AIC22-Analytics

## Table of Contents

- [About](#about)
- [Why to use](#why_to_use)
- [How to use](#how_to_use)
- [Example](#example)


## About <a name = "about"></a>

This is a simple script that runs the java server of AIChallenge2022, for a determined number of times, 
 and then stores the log files of each server iteration in a dedicated indexed directory.

## Why to use <a name = "why_to_use"></a>

This project offers a clean way to store, compare, and analyze the performance of your AI clients.
You can test a pair of your clients for a 100 times, with one command, everything else will be handled for you.

## How to use <a name = "how_to_use"></a>

In order to loop through the server, you will need to give the
following arguments to "script.sh":
```
arg 1 : path/to/server.jar
arg 2 : path/to/first_team_client
arg 3 : path/to/second_team_client
arg 4 : path/to/map.yml
arg 5 : path/to/map.json
arg 6 : iteration count
arg 7 : type string
```

argument 6 determines how many times you want the server to run
argument 7 determines the name of the directory structure under logs/saves (every iteration with the same name goes to the same folder)

Running the script will look something like this:

```
./script.sh hideandseek.jar client_1.jar client_2.jar map_1.yml map_1.json 100 client_1_vs_client_2_map_1 
```

## Example <a name = "example"></a>

This is the example output of two server loops on two different maps.

The ``result.result`` files in each folder in ``logs/saves/`` contains the result of the Iteration,
which includes how many times each client had won.

An example of ``result.result``:

```
{ file : logs/saves/slippery_vs_smuggler_map_1/7/winner.log , content : {{"stats":{"winner":0}}} }
{ file : logs/saves/slippery_vs_smuggler_map_1/5/winner.log , content : {{"stats":{"winner":1}}} }
{ file : logs/saves/slippery_vs_smuggler_map_1/6/winner.log , content : {{"stats":{"winner":0}}} }
{ file : logs/saves/slippery_vs_smuggler_map_1/1/winner.log , content : {{"stats":{"winner":1}}} }
{ file : logs/saves/slippery_vs_smuggler_map_1/0/winner.log , content : {{"stats":{"winner":0}}} }

Total games 5 :
         Client 1 wins : 3
         Client 2 wins : 2

```
The structure of server loop outputs :

```
─$ tree .                                                
.
├── graphic-1.3.jar
├── hideandseek-0.1.0.jar
├── logs
│   └── saves
│       ├── slippery_vs_smuggler_map_1
│       │   ├── 0
│       │   │   ├── details.log
│       │   │   ├── server.log
│       │   │   └── winner.log
│       │   ├── 1
│       │   │   ├── details.log
│       │   │   ├── server.log
│       │   │   └── winner.log
│       │   ├── 2
│       │   │   ├── details.log
│       │   │   ├── server.log
│       │   │   └── winner.log
│       │   ├── 3
│       │   │   ├── details.log
│       │   │   ├── server.log
│       │   │   └── winner.log
│       │   ├── 4
│       │   │   ├── details.log
│       │   │   ├── server.log
│       │   │   └── winner.log
│       │   ├── 5
│       │   │   ├── details.log
│       │   │   ├── server.log
│       │   │   └── winner.log
│       │   └── result.result
│       └── slippery_vs_smuggler_map_2
│           ├── 0
│           │   ├── details.log
│           │   ├── server.log
│           │   └── winner.log
│           ├── 1
│           │   ├── details.log
│           │   ├── server.log
│           │   └── winner.log
│           ├── 2
│           │   ├── details.log
│           │   ├── server.log
│           │   └── winner.log
│           ├── 3
│           │   ├── details.log
│           │   ├── server.log
│           │   └── winner.log
│           ├── 4
│           │   ├── details.log
│           │   ├── server.log
│           │   └── winner.log
│           ├── 5
│           │   ├── details.log
│           │   ├── server.log
│           │   └── winner.log        
│           └── result.result
```









