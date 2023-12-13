#start sillytavern
echo "Starting SillyTavern..."
screen -dmS sillytavern sh -c 'cd ~/llm/SillyTavern && ./start.sh; exec bash'