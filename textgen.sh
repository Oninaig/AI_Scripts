#start textgen
echo "Starting textgen"
screen -dmS textgen bash && screen -S textgen -p 0 -X stuff "conda activate textgen^M" && screen -S textgen -p 0 -X stuff "cd ~/llm/text-generation-webui/text-generation-webui && python server.py --listen --extensions openai coqui_tts --verbose --listen-port 7861 --model-dir /mnt/bigdata/text-gen-models/text-gen-models --trust-remote-code; exec bash^M"