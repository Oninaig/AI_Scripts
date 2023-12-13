#!/bin/bash

startServices(){
    echo "$# Arguments passed"
    for ((i=1;i<=$#;i++))
    do
		cd ~
        nextService=${!i}
        nextCmdIdx=$((i+1))
        nextCommand=${!nextCmdIdx}
        echo "Attempting to start service: $nextService using command $nextCommand"
        startService $nextService $nextCommand
        ((i++))
    done
}


startService(){
    service=$1
    command=$2
    if ! screen -ls | grep -q $service;
    then
        echo "$service not running, starting $service..."
        ./$command
        echo "started $service"
		delay
    else
        echo "$service already running"
    fi
}

delay(){
    secs=1
    while [ $secs -gt 0 ]; do
        echo -ne "Waiting $secs\033[0K\r"
        sleep 1
        : $((secs--))
    done
}


startServices diffusion diffusion.sh textgen textgen.sh stextras sillyextra.sh sillytavern sillystart.sh influx influx.sh telegraf telegraf.sh